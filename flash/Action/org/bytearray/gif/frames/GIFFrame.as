package org.bytearray.gif.frames
{
    import flash.display.*;

    public class GIFFrame extends Object
    {
        public var bitmapData:BitmapData;
        public var delay:int;

        public function GIFFrame(param1:BitmapData, param2:int)
        {
            this.bitmapData = param1;
            this.delay = param2;
            return;
        }// end function

    }
}
