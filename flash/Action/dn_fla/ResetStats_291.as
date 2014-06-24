package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class ResetStats_291 extends MovieClip
    {
        public var reset_btn:Button;
        public var username_txt:TextInput;

        public function ResetStats_291()
        {
            this.__setProp_username_txt_ResetStats_Layer1_0();
            this.__setProp_reset_btn_ResetStats_Layer1_0();
            return;
        }// end function

        function __setProp_username_txt_ResetStats_Layer1_0()
        {
            try
            {
                this.username_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.username_txt.displayAsPassword = false;
            this.username_txt.editable = true;
            this.username_txt.enabled = true;
            this.username_txt.maxChars = 20;
            this.username_txt.restrict = " -{}-~";
            this.username_txt.text = "";
            this.username_txt.visible = true;
            try
            {
                this.username_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_reset_btn_ResetStats_Layer1_0()
        {
            try
            {
                this.reset_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.reset_btn.emphasized = false;
            this.reset_btn.enabled = true;
            this.reset_btn.label = "Kick User and Reset Stats";
            this.reset_btn.labelPlacement = "right";
            this.reset_btn.selected = false;
            this.reset_btn.toggle = false;
            this.reset_btn.visible = true;
            try
            {
                this.reset_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

    }
}
