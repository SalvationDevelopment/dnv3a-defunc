package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class SuperBan_292 extends MovieClip
    {
        public var ban_btn:Button;
        public var username_txt:TextInput;

        public function SuperBan_292()
        {
            this.__setProp_username_txt_SuperBan_Layer1_0();
            this.__setProp_ban_btn_SuperBan_Layer1_0();
            return;
        }// end function

        function __setProp_username_txt_SuperBan_Layer1_0()
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

        function __setProp_ban_btn_SuperBan_Layer1_0()
        {
            try
            {
                this.ban_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.ban_btn.emphasized = false;
            this.ban_btn.enabled = true;
            this.ban_btn.label = "Super Ban";
            this.ban_btn.labelPlacement = "right";
            this.ban_btn.selected = false;
            this.ban_btn.toggle = false;
            this.ban_btn.visible = true;
            try
            {
                this.ban_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

    }
}
