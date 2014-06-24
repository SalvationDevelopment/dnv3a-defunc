package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;

    dynamic public class DuelCardMenuItem extends MovieClip
    {
        public var label_txt:TextField;
        public var bg:MovieClip;
        public var data:String;
        public var mouse_down:Boolean;

        public function DuelCardMenuItem()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function initialize(param1:String, param2:String, param3:Number, param4:Boolean) : Number
        {
            var _loc_5:Number = NaN;
            this.bg = param4 ? (new DuelCardMenuItemBackground2()) : (new DuelCardMenuItemBackground1());
            this.bg.stop();
            this.label_txt.width = param3 - 2;
            this.bg.width = param3;
            this.label_txt.text = param1;
            this.data = param2;
            _loc_5 = this.label_txt.numLines * 14;
            this.label_txt.height = _loc_5 + 10;
            var _loc_6:* = _loc_5 + (param4 ? (2.5) : (6));
            this.bg.height = _loc_6;
            var _loc_7:* = new MovieClip();
            new MovieClip().addChild(this.bg);
            addChildAt(_loc_7, 0);
            hitArea = _loc_7;
            tabEnabled = false;
            buttonMode = true;
            mouseChildren = false;
            this.mouse_down = false;
            addEventListener(MouseEvent.MOUSE_DOWN, this.downE);
            addEventListener(MouseEvent.MOUSE_UP, this.upE);
            addEventListener(MouseEvent.MOUSE_OVER, this.overE);
            addEventListener(MouseEvent.MOUSE_OUT, this.outE);
            return _loc_5;
        }// end function

        public function downE(event:MouseEvent)
        {
            this.mouse_down = true;
            this.bg.gotoAndStop("down");
            return;
        }// end function

        public function upE(event:MouseEvent)
        {
            this.mouse_down = false;
            this.bg.gotoAndStop("over");
            return;
        }// end function

        public function overE(event:MouseEvent)
        {
            if (this.mouse_down)
            {
                this.bg.gotoAndStop("down");
            }
            else
            {
                this.bg.gotoAndStop("over");
            }
            return;
        }// end function

        public function outE(event:MouseEvent)
        {
            this.bg.gotoAndStop("up");
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
