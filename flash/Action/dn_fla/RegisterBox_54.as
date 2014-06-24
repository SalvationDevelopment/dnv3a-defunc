package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class RegisterBox_54 extends MovieClip
    {
        public var email_txt:TextInput;
        public var password_txt:TextInput;
        public var username_txt:TextInput;
        public var back_btn:SimpleButton;
        public var register_btn:Button;

        public function RegisterBox_54()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_username_txt_RegisterBox_Layer1_0();
            this.__setProp_password_txt_RegisterBox_Layer1_0();
            this.__setProp_email_txt_RegisterBox_Layer1_0();
            this.__setProp_register_btn_RegisterBox_Layer1_0();
            return;
        }// end function

        function __setProp_username_txt_RegisterBox_Layer1_0()
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

        function __setProp_password_txt_RegisterBox_Layer1_0()
        {
            try
            {
                this.password_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.password_txt.displayAsPassword = true;
            this.password_txt.editable = true;
            this.password_txt.enabled = true;
            this.password_txt.maxChars = 0;
            this.password_txt.restrict = " -~";
            this.password_txt.text = "";
            this.password_txt.visible = true;
            try
            {
                this.password_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_email_txt_RegisterBox_Layer1_0()
        {
            try
            {
                this.email_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.email_txt.displayAsPassword = false;
            this.email_txt.editable = true;
            this.email_txt.enabled = true;
            this.email_txt.maxChars = 100;
            this.email_txt.restrict = " -~";
            this.email_txt.text = "";
            this.email_txt.visible = true;
            try
            {
                this.email_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_register_btn_RegisterBox_Layer1_0()
        {
            try
            {
                this.register_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.register_btn.emphasized = false;
            this.register_btn.enabled = true;
            this.register_btn.label = "Register";
            this.register_btn.labelPlacement = "right";
            this.register_btn.selected = false;
            this.register_btn.toggle = false;
            this.register_btn.visible = true;
            try
            {
                this.register_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.register_btn.useHandCursor = true;
            return;
        }// end function

    }
}
