package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;

    dynamic public class FlashPlayerOutOfDate_1 extends MovieClip
    {
        public var box_btn:SimpleButton;

        public function FlashPlayerOutOfDate_1()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function updateFlashPlayerE(event:MouseEvent)
        {
            var _loc_2:* = new URLRequest("http://get.adobe.com/flashplayer/");
            navigateToURL(_loc_2, "_blank");
            return;
        }// end function

        function frame1()
        {
            this.box_btn.addEventListener(MouseEvent.CLICK, this.updateFlashPlayerE);
            return;
        }// end function

    }
}
