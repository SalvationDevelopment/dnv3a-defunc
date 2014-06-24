package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class JoiningOptions_195 extends MovieClip
    {
        public var leave_btn:Button;

        public function JoiningOptions_195()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_leave_btn_JoiningOptions_Layer1_0();
            return;
        }// end function

        function __setProp_leave_btn_JoiningOptions_Layer1_0()
        {
            try
            {
                this.leave_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.leave_btn.emphasized = false;
            this.leave_btn.enabled = true;
            this.leave_btn.label = "Leave Duel";
            this.leave_btn.labelPlacement = "right";
            this.leave_btn.selected = false;
            this.leave_btn.toggle = false;
            this.leave_btn.visible = true;
            try
            {
                this.leave_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.leave_btn.useHandCursor = true;
            return;
        }// end function

    }
}
