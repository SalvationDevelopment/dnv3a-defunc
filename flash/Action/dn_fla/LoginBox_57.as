package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class LoginBox_57 extends MovieClip
    {
        public var remember_me_cb:CheckBox;
        public var password_txt:TextInput;
        public var login_btn:Button;
        public var username_txt:TextInput;
        public var forgot_password_btn:SimpleButton;
        public var register_btn:SimpleButton;

        public function LoginBox_57()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_username_txt_LoginBox_Layer1_0();
            this.__setProp_password_txt_LoginBox_Layer1_0();
            this.__setProp_remember_me_cb_LoginBox_Layer1_0();
            this.__setProp_login_btn_LoginBox_Layer1_0();
            return;
        }// end function

        function __setProp_username_txt_LoginBox_Layer1_0()
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

        function __setProp_password_txt_LoginBox_Layer1_0()
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

        function __setProp_remember_me_cb_LoginBox_Layer1_0()
        {
            try
            {
                this.remember_me_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.remember_me_cb.enabled = true;
            this.remember_me_cb.label = "Remember me on this computer";
            this.remember_me_cb.labelPlacement = "right";
            this.remember_me_cb.selected = true;
            this.remember_me_cb.visible = true;
            try
            {
                this.remember_me_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_login_btn_LoginBox_Layer1_0()
        {
            try
            {
                this.login_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.login_btn.emphasized = false;
            this.login_btn.enabled = true;
            this.login_btn.label = "Log In";
            this.login_btn.labelPlacement = "right";
            this.login_btn.selected = false;
            this.login_btn.toggle = false;
            this.login_btn.visible = true;
            try
            {
                this.login_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.login_btn.useHandCursor = true;
            return;
        }// end function

    }
}
