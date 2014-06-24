package dn_fla
{
    import flash.display.*;
    import flash.text.*;

    dynamic public class Status2_332 extends MovieClip
    {
        public var back_mc:MovieClip;
        public var status_txt:TextField;

        public function Status2_332()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function set status(param1:String)
        {
            this.status_txt.text = param1;
            this.back_mc.visible = param1 != "";
            return;
        }// end function

        public function get status() : String
        {
            return this.status_txt.text;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
