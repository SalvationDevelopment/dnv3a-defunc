package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;
    import org.bytearray.gif.player.*;

    public class AdLoader extends Object
    {
        private var path:String;
        private var loader:URLLoader;
        private var load_stage:int;
        private var link_map:Object;
        private var link_default:Array;
        private var swf_data:ByteArray;

        public function AdLoader(param1:String)
        {
            this.path = param1;
            this.load_stage = 0;
            return;
        }// end function

        public function load()
        {
            this.loader = new URLLoader();
            this.loader.dataFormat = URLLoaderDataFormat.TEXT;
            var _loc_1:* = new URLRequest(this.path + "details.txt");
            _loc_1.method = URLRequestMethod.GET;
            var _loc_2:* = new URLVariables();
            _loc_2.date = new Date();
            _loc_1.data = _loc_2;
            this.loader.addEventListener(Event.COMPLETE, this.loadComplete);
            this.loader.addEventListener(IOErrorEvent.IO_ERROR, this.loadError);
            this.loader.load(_loc_1);
            this.load_stage = 0;
            return;
        }// end function

        private function loadComplete(event:Event)
        {
            var _loc_2:Array = null;
            var _loc_3:String = null;
            var _loc_4:URLRequest = null;
            var _loc_5:int = 0;
            switch(this.load_stage)
            {
                case 0:
                {
                    _loc_2 = this.parseString(this.loader.data);
                    if (_loc_2.length == 0 || _loc_2.length % 3 != 0)
                    {
                        this.loadError();
                        return;
                    }
                    _loc_3 = _loc_2[0];
                    this.link_map = new Object();
                    _loc_5 = 1;
                    while (_loc_5 < _loc_2.length)
                    {
                        
                        this.link_map[_loc_2[(_loc_5 + 1)]] = [_loc_2[_loc_5], _loc_2[_loc_5 + 2]];
                        _loc_5 = _loc_5 + 3;
                    }
                    this.link_default = [_loc_2[_loc_2.length - 2], _loc_2[(_loc_2.length - 1)]];
                    this.loader = new URLLoader();
                    this.loader.dataFormat = URLLoaderDataFormat.BINARY;
                    _loc_4 = new URLRequest(this.path + _loc_3);
                    _loc_4.method = URLRequestMethod.GET;
                    this.loader.addEventListener(Event.COMPLETE, this.loadComplete);
                    this.loader.addEventListener(IOErrorEvent.IO_ERROR, this.loadError);
                    this.loader.load(_loc_4);
                    this.load_stage = 1;
                    break;
                }
                case 1:
                {
                    this.swf_data = ByteArray(this.loader.data);
                    this.loader = null;
                    this.load_stage = 2;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function parseString(param1:String) : Array
        {
            var _loc_5:String = null;
            var _loc_2:Array = [];
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            while (_loc_4 < param1.length)
            {
                
                _loc_5 = param1.charAt(_loc_4);
                if (_loc_5 == "\n" || _loc_5 == "\r")
                {
                    if (_loc_3 < _loc_4)
                    {
                        _loc_2.push(param1.substring(_loc_3, _loc_4));
                    }
                    _loc_3 = _loc_4 + 1;
                }
                _loc_4++;
            }
            if (_loc_3 < param1.length)
            {
                _loc_2.push(param1.substring(_loc_3, param1.length));
            }
            return _loc_2;
        }// end function

        private function loadError(event:IOErrorEvent = null)
        {
            this.loader = null;
            this.load_stage = 0;
            this.link_map = null;
            this.link_default = null;
            this.swf_data = null;
            return;
        }// end function

        public function hasAd() : Boolean
        {
            return this.load_stage == 2;
        }// end function

        public function getAd() : DisplayObject
        {
            var _loc_2:GIFPlayer = null;
            var _loc_3:ByteArray = null;
            if (this.load_stage != 2)
            {
                return null;
            }
            if (this.swf_data.length >= 6 && this.swf_data[0] == 71 && this.swf_data[1] == 73 && this.swf_data[2] == 70 && this.swf_data[3] == 56 && (this.swf_data[4] == 55 || this.swf_data[4] == 57) && this.swf_data[5] == 97)
            {
                _loc_2 = new GIFPlayer();
                _loc_3 = new ByteArray();
                _loc_3.writeBytes(this.swf_data);
                _loc_3.position = 0;
                _loc_2.loadBytes(_loc_3);
                return _loc_2;
            }
            var _loc_1:* = new Loader();
            _loc_1.loadBytes(this.swf_data);
            return _loc_1;
        }// end function

        public function getLink(param1:String) : Array
        {
            if (this.load_stage != 2)
            {
                return null;
            }
            var _loc_2:* = this.link_map[param1];
            if (_loc_2 == null)
            {
                return this.link_default;
            }
            return _loc_2;
        }// end function

    }
}
