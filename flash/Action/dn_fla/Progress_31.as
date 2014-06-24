package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class Progress_31 extends MovieClip
    {
        public var bar_mc:ProgressBar;

        public function Progress_31()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_bar_mc_Progress_Layer1_0();
            return;
        }// end function

        public function setProgress(param1, param2)
        {
            this.bar_mc.setProgress(param1, param2);
            return;
        }// end function

        function __setProp_bar_mc_Progress_Layer1_0()
        {
            try
            {
                this.bar_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.bar_mc.direction = "right";
            this.bar_mc.enabled = true;
            this.bar_mc.mode = "manual";
            this.bar_mc.sourceName = "";
            this.bar_mc.visible = true;
            try
            {
                this.bar_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
