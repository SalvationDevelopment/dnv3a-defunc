package dn_fla
{
    import flash.display.*;
    import flash.events.*;

    dynamic public class LeaderboardCont_114 extends MovieClip
    {
        public var new_window_mc:MovieClip;
        public var cont_mc:MovieClip;
        public var init:Boolean;
        public var curr_ad:DisplayObject;

        public function LeaderboardCont_114()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function mouseOverE(event:MouseEvent)
        {
            this.new_window_mc.visible = true;
            return;
        }// end function

        public function mouseOutE(event:MouseEvent)
        {
            this.new_window_mc.visible = false;
            return;
        }// end function

        public function showAd(param1:DisplayObject)
        {
            if (this.curr_ad != null)
            {
                this.cont_mc.removeChild(this.curr_ad);
                this.curr_ad = null;
            }
            if (param1 == null)
            {
                return;
            }
            this.cont_mc.addChild(param1);
            this.curr_ad = param1;
            return;
        }// end function

        function frame1()
        {
            if (!this.init)
            {
                this.init = true;
                this.new_window_mc.visible = false;
                this.new_window_mc.mouseEnabled = false;
                this.new_window_mc.mouseChildren = false;
                buttonMode = true;
                tabEnabled = false;
                addEventListener(MouseEvent.ROLL_OVER, this.mouseOverE);
                addEventListener(MouseEvent.ROLL_OUT, this.mouseOutE);
            }
            return;
        }// end function

    }
}
