package dn_fla
{
    import flash.display.*;

    dynamic public class Avatar_257 extends MovieClip
    {
        public var red_frame_mc:MovieClip;
        public var picture_mc:SquarePicture;
        public var teal_frame_mc:MovieClip;

        public function Avatar_257()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setPicture(param1:String, param2:String)
        {
            this.picture_mc.setPicture(param1 + param2);
            return;
        }// end function

        public function copyPicture(param1:SquarePicture)
        {
            this.picture_mc.copyPicture(param1);
            return;
        }// end function

        public function useBitmapData(param1:BitmapData)
        {
            this.picture_mc.useBitmapData(param1);
            return;
        }// end function

        public function setFrame(param1:Boolean)
        {
            this.teal_frame_mc.visible = param1;
            this.red_frame_mc.visible = !param1;
            return;
        }// end function

        function frame1()
        {
            this.setFrame(true);
            return;
        }// end function

    }
}
