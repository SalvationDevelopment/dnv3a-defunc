package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class BackBrowse_285 extends MovieClip
    {
        public var back_browse_btn:Button;

        public function BackBrowse_285()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_back_browse_btn_BackBrowse_Layer1_0();
            return;
        }// end function

        function __setProp_back_browse_btn_BackBrowse_Layer1_0()
        {
            try
            {
                this.back_browse_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.back_browse_btn.emphasized = false;
            this.back_browse_btn.enabled = true;
            this.back_browse_btn.label = "Browse...";
            this.back_browse_btn.labelPlacement = "right";
            this.back_browse_btn.selected = false;
            this.back_browse_btn.toggle = false;
            this.back_browse_btn.visible = true;
            try
            {
                this.back_browse_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            mouseEnabled = false;
            return;
        }// end function

    }
}
