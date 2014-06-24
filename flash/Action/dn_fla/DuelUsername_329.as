package dn_fla
{
    import flash.display.*;
    import flash.text.*;

    dynamic public class DuelUsername_329 extends MovieClip
    {
        public var username_txt:TextField;
        public var username_scaleX:Object;
        public var username_width:Object;

        public function DuelUsername_329()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setUsername(param1:String)
        {
            this.username_txt.text = param1;
            if (this.username_scaleX == undefined)
            {
                this.username_scaleX = this.username_txt.scaleX;
                this.username_width = this.username_txt.width;
            }
            this.username_txt.scaleX = this.username_scaleX;
            this.username_txt.autoSize = "left";
            if (this.username_txt.width > this.username_width)
            {
                this.username_txt.scaleX = this.username_scaleX * this.username_width / this.username_txt.width;
            }
            else
            {
                this.username_txt.autoSize = "none";
                this.username_txt.width = this.username_width;
            }
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
