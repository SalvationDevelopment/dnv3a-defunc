package org.bytearray.gif.decoder
{
    import flash.display.*;
    import flash.geom.*;
    import flash.utils.*;
    import org.bytearray.gif.errors.*;
    import org.bytearray.gif.frames.*;

    public class GIFDecoder extends Object
    {
        private var inStream:ByteArray;
        private var status:int;
        private var width:int;
        private var height:int;
        private var gctFlag:Boolean;
        private var gctSize:int;
        private var loopCount:int = 1;
        private var gct:Array;
        private var lct:Array;
        private var act:Array;
        private var bgIndex:int;
        private var bgColor:int;
        private var lastBgColor:int;
        private var pixelAspect:int;
        private var lctFlag:Boolean;
        private var interlace:Boolean;
        private var lctSize:int;
        private var ix:int;
        private var iy:int;
        private var iw:int;
        private var ih:int;
        private var lastRect:Rectangle;
        private var image:BitmapData;
        private var bitmap:BitmapData;
        private var lastImage:BitmapData;
        private var block:ByteArray;
        private var blockSize:int = 0;
        private var dispose:int = 0;
        private var lastDispose:int = 0;
        private var transparency:Boolean = false;
        private var delay:int = 0;
        private var transIndex:int;
        private var prefix:Array;
        private var suffix:Array;
        private var pixelStack:Array;
        private var pixels:Array;
        private var frames:Array;
        private var frameCount:int;
        private static var STATUS_OK:int = 0;
        private static var STATUS_FORMAT_ERROR:int = 1;
        private static var STATUS_OPEN_ERROR:int = 2;
        private static var frameRect:Rectangle = new Rectangle();
        private static var MaxStackSize:int = 4096;

        public function GIFDecoder()
        {
            this.block = new ByteArray();
            return;
        }// end function

        public function get disposeValue() : int
        {
            return this.dispose;
        }// end function

        public function getDelay(param1:int) : int
        {
            this.delay = -1;
            if (param1 >= 0 && param1 < this.frameCount)
            {
                this.delay = this.frames[param1].delay;
            }
            return this.delay;
        }// end function

        public function getFrameCount() : int
        {
            return this.frameCount;
        }// end function

        public function getImage() : GIFFrame
        {
            return this.getFrame(0);
        }// end function

        public function getLoopCount() : int
        {
            return this.loopCount;
        }// end function

        private function getPixels(param1:BitmapData) : Array
        {
            var _loc_6:int = 0;
            var _loc_8:int = 0;
            var _loc_2:* = new Array(4 * this.image.width * this.image.height);
            var _loc_3:int = 0;
            var _loc_4:* = this.image.width;
            var _loc_5:* = this.image.height;
            var _loc_7:int = 0;
            while (_loc_7 < _loc_5)
            {
                
                _loc_8 = 0;
                while (_loc_8 < _loc_4)
                {
                    
                    _loc_6 = param1.getPixel(_loc_7, _loc_8);
                    _loc_2[++_loc_3] = (_loc_6 & 16711680) >> 16;
                    _loc_2[++_loc_3] = (_loc_6 & 65280) >> 8;
                    _loc_2[++_loc_3] = _loc_6 & 255;
                    _loc_8++;
                }
                _loc_7++;
            }
            return _loc_2;
        }// end function

        private function setPixels(param1:Array) : void
        {
            var _loc_3:int = 0;
            var _loc_7:int = 0;
            var _loc_2:int = 0;
            param1.position = 0;
            var _loc_4:* = this.image.width;
            var _loc_5:* = this.image.height;
            this.bitmap.lock();
            var _loc_6:int = 0;
            while (_loc_6 < _loc_5)
            {
                
                _loc_7 = 0;
                while (_loc_7 < _loc_4)
                {
                    
                    _loc_3 = param1[int(_loc_2++)];
                    this.bitmap.setPixel32(_loc_7, _loc_6, _loc_3);
                    _loc_7++;
                }
                _loc_6++;
            }
            this.bitmap.unlock();
            return;
        }// end function

        private function transferPixels() : void
        {
            var _loc_6:int = 0;
            var _loc_7:Array = null;
            var _loc_8:Number = NaN;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            var _loc_11:int = 0;
            var _loc_12:int = 0;
            var _loc_13:int = 0;
            var _loc_14:int = 0;
            var _loc_15:int = 0;
            var _loc_1:* = this.getPixels(this.bitmap);
            if (this.lastDispose > 0)
            {
                if (this.lastDispose == 3)
                {
                    _loc_6 = this.frameCount - 2;
                    this.lastImage = _loc_6 > 0 ? (this.getFrame((_loc_6 - 1)).bitmapData) : (null);
                }
                if (this.lastImage != null)
                {
                    _loc_7 = this.getPixels(this.lastImage);
                    _loc_1 = _loc_7.slice();
                    if (this.lastDispose == 2)
                    {
                        _loc_8 = this.transparency ? (0) : (this.lastBgColor);
                        this.image.fillRect(this.lastRect, _loc_8);
                    }
                }
            }
            var _loc_2:int = 1;
            var _loc_3:int = 8;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            while (_loc_5 < this.ih)
            {
                
                _loc_9 = _loc_5;
                if (this.interlace)
                {
                    if (_loc_4 >= this.ih)
                    {
                        _loc_2++;
                        switch(_loc_2)
                        {
                            case 2:
                            {
                                _loc_4 = 4;
                                break;
                            }
                            case 3:
                            {
                                _loc_4 = 2;
                                _loc_3 = 4;
                                break;
                            }
                            case 4:
                            {
                                _loc_4 = 1;
                                _loc_3 = 2;
                                break;
                            }
                            default:
                            {
                                break;
                            }
                        }
                    }
                    _loc_9 = _loc_4;
                    _loc_4 = _loc_4 + _loc_3;
                }
                _loc_9 = _loc_9 + this.iy;
                if (_loc_9 < this.height)
                {
                    _loc_10 = _loc_9 * this.width;
                    _loc_11 = _loc_10 + this.ix;
                    _loc_12 = _loc_11 + this.iw;
                    if (_loc_10 + this.width < _loc_12)
                    {
                        _loc_12 = _loc_10 + this.width;
                    }
                    _loc_13 = _loc_5 * this.iw;
                    while (_loc_11 < _loc_12)
                    {
                        
                        _loc_14 = this.pixels[_loc_13++] & 255;
                        _loc_15 = this.act[_loc_14];
                        if (_loc_15 != 0)
                        {
                            _loc_1[_loc_11] = _loc_15;
                        }
                        _loc_11++;
                    }
                }
                _loc_5++;
            }
            this.setPixels(_loc_1);
            return;
        }// end function

        public function getFrame(param1:int) : GIFFrame
        {
            var _loc_2:GIFFrame = null;
            if (param1 >= 0 && param1 < this.frameCount)
            {
                _loc_2 = this.frames[param1];
            }
            else
            {
                throw new RangeError("Wrong frame number passed");
            }
            return _loc_2;
        }// end function

        public function getFrameSize() : Rectangle
        {
            var _loc_1:* = GIFDecoder.frameRect;
            var _loc_2:int = 0;
            _loc_1.y = 0;
            _loc_1.x = _loc_2;
            _loc_1.width = this.width;
            _loc_1.height = this.height;
            return _loc_1;
        }// end function

        public function read(param1:ByteArray) : int
        {
            this.init();
            if (param1 != null)
            {
                this.inStream = param1;
                this.readHeader();
                if (!this.hasError())
                {
                    this.readContents();
                    if (this.frameCount < 0)
                    {
                        this.status = STATUS_FORMAT_ERROR;
                    }
                }
            }
            else
            {
                this.status = STATUS_OPEN_ERROR;
            }
            return this.status;
        }// end function

        private function decodeImageData() : void
        {
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            var _loc_11:int = 0;
            var _loc_12:int = 0;
            var _loc_13:int = 0;
            var _loc_14:int = 0;
            var _loc_15:int = 0;
            var _loc_16:int = 0;
            var _loc_17:int = 0;
            var _loc_18:int = 0;
            var _loc_19:int = 0;
            var _loc_1:int = -1;
            var _loc_2:* = this.iw * this.ih;
            if (this.pixels == null || this.pixels.length < _loc_2)
            {
                this.pixels = new Array(_loc_2);
            }
            if (this.prefix == null)
            {
                this.prefix = new Array(MaxStackSize);
            }
            if (this.suffix == null)
            {
                this.suffix = new Array(MaxStackSize);
            }
            if (this.pixelStack == null)
            {
                this.pixelStack = new Array((MaxStackSize + 1));
            }
            _loc_15 = this.readSingleByte();
            _loc_4 = 1 << _loc_15;
            _loc_7 = _loc_4 + 1;
            _loc_3 = _loc_4 + 2;
            _loc_9 = _loc_1;
            _loc_6 = _loc_15 + 1;
            _loc_5 = (1 << _loc_6) - 1;
            _loc_11 = 0;
            while (_loc_11 < _loc_4)
            {
                
                this.prefix[int(_loc_11)] = 0;
                this.suffix[int(_loc_11)] = _loc_11;
                _loc_11++;
            }
            var _loc_20:int = 0;
            _loc_18 = 0;
            var _loc_20:* = _loc_20;
            _loc_19 = _loc_20;
            var _loc_20:* = _loc_20;
            _loc_17 = _loc_20;
            var _loc_20:* = _loc_20;
            _loc_16 = _loc_20;
            var _loc_20:* = _loc_20;
            _loc_12 = _loc_20;
            var _loc_20:* = _loc_20;
            _loc_10 = _loc_20;
            _loc_14 = _loc_20;
            _loc_13 = 0;
            while (_loc_13 < _loc_2)
            {
                
                if (_loc_17 == 0)
                {
                    if (_loc_10 < _loc_6)
                    {
                        if (_loc_12 == 0)
                        {
                            _loc_12 = this.readBlock();
                            if (_loc_12 <= 0)
                            {
                                break;
                            }
                            _loc_18 = 0;
                        }
                        _loc_14 = _loc_14 + ((int(this.block[int(_loc_18)]) & 255) << _loc_10);
                        _loc_10 = _loc_10 + 8;
                        _loc_18++;
                        _loc_12 = _loc_12 - 1;
                        continue;
                    }
                    _loc_11 = _loc_14 & _loc_5;
                    _loc_14 = _loc_14 >> _loc_6;
                    _loc_10 = _loc_10 - _loc_6;
                    if (_loc_11 > _loc_3 || _loc_11 == _loc_7)
                    {
                        break;
                    }
                    if (_loc_11 == _loc_4)
                    {
                        _loc_6 = _loc_15 + 1;
                        _loc_5 = (1 << _loc_6) - 1;
                        _loc_3 = _loc_4 + 2;
                        _loc_9 = _loc_1;
                        continue;
                    }
                    if (_loc_9 == _loc_1)
                    {
                        this.pixelStack[int(_loc_17++)] = this.suffix[int(_loc_11)];
                        _loc_9 = _loc_11;
                        _loc_16 = _loc_11;
                        continue;
                    }
                    _loc_8 = _loc_11;
                    if (_loc_11 == _loc_3)
                    {
                        this.pixelStack[int(_loc_17++)] = _loc_16;
                        _loc_11 = _loc_9;
                    }
                    while (_loc_11 > _loc_4)
                    {
                        
                        this.pixelStack[int(_loc_17++)] = this.suffix[int(_loc_11)];
                        _loc_11 = this.prefix[int(_loc_11)];
                    }
                    _loc_16 = this.suffix[int(_loc_11)] & 255;
                    if (_loc_3 >= MaxStackSize)
                    {
                        break;
                    }
                    this.pixelStack[int(_loc_17++)] = _loc_16;
                    this.prefix[int(_loc_3)] = _loc_9;
                    this.suffix[int(_loc_3)] = _loc_16;
                    _loc_3++;
                    if ((_loc_3 & _loc_5) == 0 && _loc_3 < MaxStackSize)
                    {
                        _loc_6++;
                        _loc_5 = _loc_5 + _loc_3;
                    }
                    _loc_9 = _loc_8;
                }
                _loc_17 = _loc_17 - 1;
                this.pixels[int(_loc_19++)] = this.pixelStack[int(_loc_17)];
                _loc_13++;
            }
            _loc_13 = _loc_19;
            while (_loc_13 < _loc_2)
            {
                
                this.pixels[int(_loc_13)] = 0;
                _loc_13++;
            }
            return;
        }// end function

        private function hasError() : Boolean
        {
            return this.status != STATUS_OK;
        }// end function

        private function init() : void
        {
            this.status = STATUS_OK;
            this.frameCount = 0;
            this.frames = new Array();
            this.gct = null;
            this.lct = null;
            return;
        }// end function

        private function readSingleByte() : int
        {
            var curByte:int;
            try
            {
                curByte = this.inStream.readUnsignedByte();
            }
            catch (e:Error)
            {
                status = STATUS_FORMAT_ERROR;
            }
            return curByte;
        }// end function

        private function readBlock() : int
        {
            var _loc_2:int = 0;
            this.blockSize = this.readSingleByte();
            var _loc_1:int = 0;
            if (this.blockSize > 0)
            {
                try
                {
                    _loc_2 = 0;
                    while (_loc_1 < this.blockSize)
                    {
                        
                        this.inStream.readBytes(this.block, _loc_1, this.blockSize - _loc_1);
                        if (this.blockSize - _loc_1 == -1)
                        {
                            break;
                        }
                        _loc_1 = _loc_1 + (this.blockSize - _loc_1);
                    }
                }
                catch (e:Error)
                {
                }
                if (_loc_1 < this.blockSize)
                {
                    this.status = STATUS_FORMAT_ERROR;
                }
            }
            return _loc_1;
        }// end function

        private function readColorTable(param1:int) : Array
        {
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            var _loc_2:* = 3 * param1;
            var _loc_3:Array = null;
            var _loc_4:* = new ByteArray();
            var _loc_5:int = 0;
            try
            {
                this.inStream.readBytes(_loc_4, 0, _loc_2);
                _loc_5 = _loc_2;
            }
            catch (e:Error)
            {
            }
            if (_loc_5 < _loc_2)
            {
                this.status = STATUS_FORMAT_ERROR;
            }
            else
            {
                _loc_3 = new Array(256);
                _loc_6 = 0;
                _loc_7 = 0;
                while (_loc_6 < param1)
                {
                    
                    _loc_8 = _loc_4[_loc_7++] & 255;
                    _loc_9 = _loc_4[_loc_7++] & 255;
                    _loc_10 = _loc_4[_loc_7++] & 255;
                    _loc_3[++_loc_6] = 4278190080 | _loc_8 << 16 | _loc_9 << 8 | _loc_10;
                }
            }
            return _loc_3;
        }// end function

        private function readContents() : void
        {
            var _loc_2:int = 0;
            var _loc_3:String = null;
            var _loc_4:int = 0;
            var _loc_1:Boolean = false;
            while (!(_loc_1 || this.hasError()))
            {
                
                _loc_2 = this.readSingleByte();
                switch(_loc_2)
                {
                    case 44:
                    {
                        this.readImage();
                        break;
                    }
                    case 33:
                    {
                        _loc_2 = this.readSingleByte();
                        switch(_loc_2)
                        {
                            case 249:
                            {
                                this.readGraphicControlExt();
                                break;
                            }
                            case 255:
                            {
                                this.readBlock();
                                _loc_3 = "";
                                _loc_4 = 0;
                                while (_loc_4 < 11)
                                {
                                    
                                    _loc_3 = _loc_3 + this.block[int(_loc_4)];
                                    _loc_4++;
                                }
                                if (_loc_3 == "NETSCAPE2.0")
                                {
                                    this.readNetscapeExt();
                                }
                                else
                                {
                                    this.skip();
                                }
                                break;
                            }
                            default:
                            {
                                this.skip();
                                break;
                                break;
                            }
                        }
                        break;
                    }
                    case 59:
                    {
                        _loc_1 = true;
                        break;
                    }
                    case 0:
                    {
                        break;
                    }
                    default:
                    {
                        this.status = STATUS_FORMAT_ERROR;
                        break;
                        break;
                    }
                }
            }
            return;
        }// end function

        private function readGraphicControlExt() : void
        {
            this.readSingleByte();
            var _loc_1:* = this.readSingleByte();
            this.dispose = (_loc_1 & 28) >> 2;
            if (this.dispose == 0)
            {
                this.dispose = 1;
            }
            this.transparency = (_loc_1 & 1) != 0;
            this.delay = this.readShort() * 10;
            this.transIndex = this.readSingleByte();
            this.readSingleByte();
            return;
        }// end function

        private function readHeader() : void
        {
            var _loc_1:String = "";
            var _loc_2:int = 0;
            while (_loc_2 < 6)
            {
                
                _loc_1 = _loc_1 + String.fromCharCode(this.readSingleByte());
                _loc_2++;
            }
            if (_loc_1.indexOf("GIF") != 0)
            {
                this.status = STATUS_FORMAT_ERROR;
                throw new FileTypeError("Invalid file type");
            }
            this.readLSD();
            if (this.gctFlag && !this.hasError())
            {
                this.gct = this.readColorTable(this.gctSize);
                this.bgColor = this.gct[this.bgIndex];
            }
            return;
        }// end function

        private function readImage() : void
        {
            this.ix = this.readShort();
            this.iy = this.readShort();
            this.iw = this.readShort();
            this.ih = this.readShort();
            var _loc_1:* = this.readSingleByte();
            this.lctFlag = (_loc_1 & 128) != 0;
            this.interlace = (_loc_1 & 64) != 0;
            this.lctSize = 2 << (_loc_1 & 7);
            if (this.lctFlag)
            {
                this.lct = this.readColorTable(this.lctSize);
                this.act = this.lct;
            }
            else
            {
                this.act = this.gct;
                if (this.bgIndex == this.transIndex)
                {
                    this.bgColor = 0;
                }
            }
            var _loc_2:int = 0;
            if (this.transparency)
            {
                _loc_2 = this.act[this.transIndex];
                this.act[this.transIndex] = 0;
            }
            if (this.act == null)
            {
                this.status = STATUS_FORMAT_ERROR;
            }
            if (this.hasError())
            {
                return;
            }
            this.decodeImageData();
            this.skip();
            if (this.hasError())
            {
                return;
            }
            var _loc_3:String = this;
            var _loc_4:* = this.frameCount + 1;
            _loc_3.frameCount = _loc_4;
            this.bitmap = new BitmapData(this.width, this.height);
            this.image = this.bitmap;
            this.transferPixels();
            this.frames.push(new GIFFrame(this.bitmap, this.delay));
            if (this.transparency)
            {
                this.act[this.transIndex] = _loc_2;
            }
            this.resetFrame();
            return;
        }// end function

        private function readLSD() : void
        {
            this.width = this.readShort();
            this.height = this.readShort();
            var _loc_1:* = this.readSingleByte();
            this.gctFlag = (_loc_1 & 128) != 0;
            this.gctSize = 2 << (_loc_1 & 7);
            this.bgIndex = this.readSingleByte();
            this.pixelAspect = this.readSingleByte();
            return;
        }// end function

        private function readNetscapeExt() : void
        {
            var _loc_1:int = 0;
            var _loc_2:int = 0;
            do
            {
                
                this.readBlock();
                if (this.block[0] == 1)
                {
                    _loc_1 = this.block[1] & 255;
                    _loc_2 = this.block[2] & 255;
                    this.loopCount = _loc_2 << 8 | _loc_1;
                }
            }while (this.blockSize > 0 && !this.hasError())
            return;
        }// end function

        private function readShort() : int
        {
            return this.readSingleByte() | this.readSingleByte() << 8;
        }// end function

        private function resetFrame() : void
        {
            this.lastDispose = this.dispose;
            this.lastRect = new Rectangle(this.ix, this.iy, this.iw, this.ih);
            this.lastImage = this.image;
            this.lastBgColor = this.bgColor;
            var _loc_1:Boolean = false;
            var _loc_2:int = 0;
            this.lct = null;
            return;
        }// end function

        private function skip() : void
        {
            do
            {
                
                this.readBlock();
            }while (this.blockSize > 0 && !this.hasError())
            return;
        }// end function

    }
}
