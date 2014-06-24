package dn_fla
{
    import fl.containers.*;
    import flash.display.*;
    import flash.text.*;

    dynamic public class CardView_402 extends MovieClip
    {
        public var exit_btn:SimpleButton;
        public var title_txt:TextField;
        public var sp_sp:ScrollPane;

        public function CardView_402()
        {
            this.__setProp_sp_sp_CardView_Layer1_0();
            return;
        }// end function

        function __setProp_sp_sp_CardView_Layer1_0()
        {
            try
            {
                this.sp_sp["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.sp_sp.enabled = true;
            this.sp_sp.horizontalLineScrollSize = 4;
            this.sp_sp.horizontalPageScrollSize = 0;
            this.sp_sp.horizontalScrollPolicy = "off";
            this.sp_sp.scrollDrag = false;
            this.sp_sp.source = "";
            this.sp_sp.verticalLineScrollSize = 4;
            this.sp_sp.verticalPageScrollSize = 0;
            this.sp_sp.verticalScrollPolicy = "auto";
            this.sp_sp.visible = true;
            try
            {
                this.sp_sp["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

    }
}
