package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class ForgotPasswordBox_39 extends MovieClip
    {
        public var reset_password_btn:Button;
        public var email_txt:TextInput;
        public var back_btn:SimpleButton;

        public function ForgotPasswordBox_39()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_email_txt_ForgotPasswordBox_Layer1_0();
            this.__setProp_reset_password_btn_ForgotPasswordBox_Layer1_0();
            return;
        }// end function

        function __setProp_email_txt_ForgotPasswordBox_Layer1_0()
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

        function __setProp_reset_password_btn_ForgotPasswordBox_Layer1_0()
        {
            try
            {
                this.reset_password_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.reset_password_btn.emphasized = false;
            this.reset_password_btn.enabled = true;
            this.reset_password_btn.label = "Reset Password";
            this.reset_password_btn.labelPlacement = "right";
            this.reset_password_btn.selected = false;
            this.reset_password_btn.toggle = false;
            this.reset_password_btn.visible = true;
            try
            {
                this.reset_password_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.reset_password_btn.useHandCursor = true;
            return;
        }// end function

    }
}
