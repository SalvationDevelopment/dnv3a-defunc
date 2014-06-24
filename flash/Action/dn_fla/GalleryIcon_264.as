package dn_fla
{
    import flash.display.*;
    import flash.text.*;

    dynamic public class GalleryIcon_264 extends MovieClip
    {
        public var outline_mc:MovieClip;
        public var req_wins_text_mc:MovieClip;
        public var dim_mc:MovieClip;
        public var picture_mc:SquarePicture;
        public var req_wins_txt:TextField;
        public var pict_string:String;

        public function GalleryIcon_264()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setPicture(param1:String, param2:String)
        {
            this.picture_mc.setPicture(param1 + param2);
            this.pict_string = param2;
            return;
        }// end function

        public function getPictureString()
        {
            return this.pict_string;
        }// end function

        public function getPicture() : SquarePicture
        {
            return this.picture_mc;
        }// end function

        public function setOutline(param1:Boolean)
        {
            this.outline_mc.alpha = param1 ? (100) : (0);
            return;
        }// end function

        public function disable(param1:int = -1)
        {
            if (param1 < 0)
            {
                this.dim_mc.visible = false;
                this.req_wins_text_mc.visible = false;
                this.req_wins_txt.text = "";
            }
            else
            {
                this.dim_mc.visible = true;
                this.req_wins_text_mc.visible = true;
                this.req_wins_txt.text = "" + param1;
            }
            return;
        }// end function

        function frame1()
        {
            hitArea = this.picture_mc;
            return;
        }// end function

    }
}
