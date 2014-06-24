package 
{
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;

    dynamic public class PreviewCard extends MovieClip
    {
        public var cont1_mc:MovieClip;
        public var cont2_mc:MovieClip;
        public var conts:Array;
        public var preview_timer:Timer;
        public var skip_hml:Boolean;

        public function PreviewCard()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function previewE(event:MouseEvent, param2 = null)
        {
            if (event != null)
            {
                param2 = event.currentTarget;
            }
            var _loc_3:* = Front(param2.front_mc);
            if (this.conts[0].front_mc.id == _loc_3.id)
            {
                return;
            }
            var _loc_4:* = this.conts[1];
            var _loc_5:* = this.conts[1].front_mc;
            if (this.conts[1].front_mc.id != _loc_3.id)
            {
                if (!this.skip_hml && _loc_5.card_name != _loc_3.card_name)
                {
                    _loc_4.low_avg_high_mc.loadHML(_loc_3.card == "token" ? (null) : (_loc_3.card_name));
                }
                _loc_5.copyFront(_loc_3);
            }
            this.preview_timer.reset();
            this.preview_timer.start();
            return;
        }// end function

        public function previewStopE(event:MouseEvent)
        {
            this.preview_timer.reset();
            return;
        }// end function

        public function previewFinishE(event:TimerEvent)
        {
            var _loc_3:Number = NaN;
            var _loc_2:* = this.conts[1];
            this.conts[1] = this.conts[0];
            this.conts[0] = _loc_2;
            this.conts[0].visible = true;
            this.conts[1].visible = false;
            _loc_2.preview_desc_txt.text = _loc_2.front_mc.desc;
            if (!_loc_2.low_avg_high_mc.visible)
            {
                _loc_3 = _loc_2.preview_desc_txt.verticalScrollPosition;
                _loc_2.preview_desc_txt.height = 162;
                _loc_2.preview_desc_txt.verticalScrollPosition = _loc_3;
                _loc_2.preview_desc_txt.validateNow();
                _loc_2.preview_desc_txt.verticalScrollPosition = _loc_3;
            }
            return;
        }// end function

        public function descRollOver(event:MouseEvent)
        {
            var _loc_2:* = TextArea(event.currentTarget);
            var _loc_3:* = _loc_2.verticalScrollPosition;
            _loc_2.height = MovieClip(_loc_2.parent).low_avg_high_mc.visible && _loc_2.verticalScrollPosition == _loc_2.maxVerticalScrollPosition ? (104) : (162);
            _loc_2.verticalScrollPosition = _loc_3;
            _loc_2.validateNow();
            _loc_2.verticalScrollPosition = _loc_3;
            return;
        }// end function

        public function descRollOut(event:MouseEvent)
        {
            var _loc_2:* = TextArea(event.currentTarget);
            var _loc_3:* = _loc_2.verticalScrollPosition;
            _loc_2.height = MovieClip(_loc_2.parent).low_avg_high_mc.visible ? (104) : (162);
            _loc_2.verticalScrollPosition = _loc_3;
            _loc_2.validateNow();
            _loc_2.verticalScrollPosition = _loc_3;
            return;
        }// end function

        function frame1()
        {
            this.conts = [this.cont1_mc, this.cont2_mc];
            this.cont1_mc.visible = false;
            this.cont2_mc.visible = false;
            this.preview_timer = new Timer(250, 1);
            this.preview_timer.addEventListener(TimerEvent.TIMER, this.previewFinishE);
            this.cont1_mc.preview_desc_txt.addEventListener(MouseEvent.ROLL_OVER, this.descRollOver);
            this.cont2_mc.preview_desc_txt.addEventListener(MouseEvent.ROLL_OVER, this.descRollOver);
            this.cont1_mc.preview_desc_txt.addEventListener(MouseEvent.ROLL_OUT, this.descRollOut);
            this.cont2_mc.preview_desc_txt.addEventListener(MouseEvent.ROLL_OUT, this.descRollOut);
            return;
        }// end function

    }
}
