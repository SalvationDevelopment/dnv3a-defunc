package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;

    dynamic public class InvalidLoadURL_3 extends MovieClip
    {
        public var www_btn:SimpleButton;

        public function InvalidLoadURL_3()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function openSiteE(event:MouseEvent)
        {
            var _loc_2:* = new URLRequest("http://www.duelingnetwork.com/");
            navigateToURL(_loc_2);
            return;
        }// end function

        function frame1()
        {
            this.www_btn.addEventListener(MouseEvent.CLICK, this.openSiteE);
            return;
        }// end function

    }
}
