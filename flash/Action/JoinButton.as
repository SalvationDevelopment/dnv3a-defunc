package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;

    dynamic public class JoinButton extends MovieClip
    {
        public var key_mc:MovieClip;
        public var rating_rep_txt:TextField;
        public var match_mc:MovieClip;
        public var title_txt:TextField;
        public var bin_mc:MovieClip;
        public var glow_mc:MovieClip;
        public var single_no_siding_mc:MovieClip;
        public var note_txt:TextField;
        public var single_with_siding_mc:MovieClip;
        public var title:String;
        public var rand:String;
        public var password:Boolean;
        public var title_scaleX:Object;
        public var note_scaleX:Object;
        public var mouse_down:Boolean;

        public function JoinButton()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function initialize(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String)
        {
            var _loc_10:MovieClip = null;
            var _loc_11:* = undefined;
            var _loc_12:Number = NaN;
            var _loc_13:* = param2;
            this.title = param2;
            this.title_txt.text = _loc_13;
            this.rating_rep_txt.text = param3;
            var _loc_13:* = param5 == "true";
            this.password = param5 == "true";
            var _loc_8:* = _loc_13;
            this.key_mc.visible = _loc_8;
            var _loc_9:* = param6 == "true";
            this.bin_mc.visible = _loc_9;
            this.note_txt.text = param4;
            this.rand = param7;
            this.single_with_siding_mc.visible = false;
            this.single_no_siding_mc.visible = false;
            this.match_mc.visible = false;
            switch(param1)
            {
                case "s":
                {
                    _loc_10 = this.single_with_siding_mc;
                    break;
                }
                case "n":
                {
                    _loc_10 = this.single_no_siding_mc;
                    break;
                }
                case "m":
                {
                    _loc_10 = this.match_mc;
                    break;
                }
                default:
                {
                    break;
                }
            }
            _loc_10.visible = true;
            var _loc_13:* = param3 == "" ? (280) : (196);
            _loc_11 = param3 == "" ? (280) : (196);
            this.title_txt.width = _loc_13;
            _loc_12 = 280;
            if (_loc_8)
            {
                this.note_txt.x = 38;
                _loc_12 = _loc_12 - 38;
            }
            else
            {
                this.note_txt.x = 0;
            }
            if (_loc_9)
            {
                _loc_12 = _loc_12 - 84;
                _loc_10.x = 196;
            }
            else
            {
                _loc_12 = _loc_12 - 52;
                _loc_10.x = 228;
            }
            this.note_txt.width = _loc_12;
            if (this.title_scaleX == undefined)
            {
                this.title_scaleX = this.title_txt.scaleX;
                _loc_11 = this.title_txt.width;
                this.note_scaleX = this.note_txt.scaleX;
            }
            this.title_txt.scaleX = this.title_scaleX;
            this.title_txt.autoSize = "left";
            if (this.title_txt.width > _loc_11)
            {
                this.title_txt.scaleX = this.title_scaleX * _loc_11 / this.title_txt.width;
            }
            this.note_txt.scaleX = this.note_scaleX;
            this.note_txt.autoSize = "left";
            if (this.note_txt.width > _loc_12)
            {
                this.note_txt.scaleX = this.note_scaleX * _loc_12 / this.note_txt.width;
            }
            return;
        }// end function

        public function downE(event:MouseEvent)
        {
            this.mouse_down = true;
            this.glow_mc.alpha = 0.8;
            return;
        }// end function

        public function upE(event:MouseEvent)
        {
            this.mouse_down = false;
            this.glow_mc.alpha = 0.4;
            return;
        }// end function

        public function overE(event:MouseEvent)
        {
            if (this.mouse_down)
            {
                this.glow_mc.alpha = 0.8;
            }
            else
            {
                this.glow_mc.alpha = 0.4;
            }
            return;
        }// end function

        public function outE(event:MouseEvent)
        {
            this.glow_mc.alpha = 0;
            return;
        }// end function

        function frame1()
        {
            tabEnabled = false;
            buttonMode = true;
            mouseChildren = false;
            hitArea = this.glow_mc;
            this.mouse_down = false;
            addEventListener(MouseEvent.MOUSE_DOWN, this.downE);
            addEventListener(MouseEvent.MOUSE_UP, this.upE);
            addEventListener(MouseEvent.MOUSE_OVER, this.overE);
            addEventListener(MouseEvent.MOUSE_OUT, this.outE);
            return;
        }// end function

    }
}
