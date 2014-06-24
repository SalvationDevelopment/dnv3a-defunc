package dn_fla
{
    import flash.display.*;
    import flash.text.*;

    dynamic public class BackGalleryIcon_270 extends MovieClip
    {
        public var default_mc:MovieClip;
        public var req_rep_text_mc:MovieClip;
        public var req_rep_txt:TextField;
        public var dim_mc:MovieClip;
        public var picture_mc:MovieClip;

        public function BackGalleryIcon_270()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setBack(param1:String, param2:String)
        {
            this.default_mc.visible = false;
            this.picture_mc.visible = true;
            this.picture_mc.setPicture(param1 + param2);
            return;
        }// end function

        public function useBitmapData(param1:BitmapData)
        {
            this.default_mc.visible = false;
            this.picture_mc.visible = true;
            this.picture_mc.useBitmapData(param1);
            return;
        }// end function

        public function setDefaultBack()
        {
            this.default_mc.visible = true;
            this.picture_mc.visible = false;
            return;
        }// end function

        public function setColor1(param1:int)
        {
            this.picture_mc.setColor1(param1);
            return;
        }// end function

        public function setColor2(param1:int)
        {
            this.picture_mc.setColor2(param1);
            return;
        }// end function

        public function disable(param1:int = -1)
        {
            if (param1 < 0)
            {
                this.dim_mc.visible = false;
                this.req_rep_text_mc.visible = false;
                this.req_rep_txt.text = "";
            }
            else
            {
                this.dim_mc.visible = true;
                this.req_rep_text_mc.visible = true;
                this.req_rep_txt.text = "" + param1;
            }
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
