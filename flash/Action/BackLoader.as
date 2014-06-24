package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.net.*;

    public class BackLoader extends EventDispatcher
    {
        private var loader:Loader;
        private var color1:int;
        private var color2:int;
        private var bitmap_data:BitmapData;

        public function BackLoader(param1:String, param2:String, param3:int, param4:int)
        {
            if (param2 == "")
            {
                this.bitmap_data = new BackBitmapData();
                return;
            }
            this.color1 = param3;
            this.color2 = param4;
            this.bitmap_data = null;
            this.loader = new Loader();
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.loadComplete);
            var _loc_5:* = new URLRequest(param1 + param2);
            this.loader.load(_loc_5);
            return;
        }// end function

        private function getColorTransform(param1:int) : ColorTransform
        {
            var _loc_2:* = param1 >> 16;
            var _loc_3:* = param1 >> 8 & 255;
            var _loc_4:* = param1 & 255;
            return new ColorTransform(0, 0, 0, 1, _loc_2, _loc_3, _loc_4, 0);
        }// end function

        private function loadComplete(event:Event)
        {
            var _loc_2:* = Bitmap(this.loader.content).bitmapData;
            this.loader = null;
            var _loc_3:* = new Rectangle(0, 580, 400, 580);
            _loc_2.colorTransform(_loc_3, this.getColorTransform(this.color1));
            _loc_3 = new Rectangle(0, 1160, 400, 580);
            _loc_2.colorTransform(_loc_3, this.getColorTransform(this.color2));
            var _loc_4:* = new Sprite();
            var _loc_5:* = new Bitmap(_loc_2);
            _loc_4.addChild(_loc_5);
            _loc_5 = new Bitmap(_loc_2);
            _loc_5.y = -580;
            _loc_4.addChild(_loc_5);
            _loc_5 = new Bitmap(_loc_2);
            _loc_5.y = -1160;
            _loc_4.addChild(_loc_5);
            this.bitmap_data = new BitmapData(400, 580);
            this.bitmap_data.draw(_loc_4);
            dispatchEvent(new Event(Event.COMPLETE));
            return;
        }// end function

        public function getBack() : Shape
        {
            if (this.bitmap_data == null)
            {
                return null;
            }
            var _loc_1:* = new Shape();
            var _loc_2:* = _loc_1.graphics;
            var _loc_3:* = new Matrix();
            _loc_3.translate(-200, -290);
            _loc_3.scale(-1, 1);
            _loc_2.beginBitmapFill(this.bitmap_data, _loc_3, false, false);
            _loc_2.drawRoundRect(-200, -290, 400, 580, 20);
            _loc_2.endFill();
            return _loc_1;
        }// end function

    }
}
