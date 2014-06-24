package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class AvatarBrowse_269 extends MovieClip
    {
        public var avatar_browse_btn:Button;

        public function AvatarBrowse_269()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_avatar_browse_btn_AvatarBrowse_Layer1_0();
            return;
        }// end function

        function __setProp_avatar_browse_btn_AvatarBrowse_Layer1_0()
        {
            try
            {
                this.avatar_browse_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.avatar_browse_btn.emphasized = false;
            this.avatar_browse_btn.enabled = true;
            this.avatar_browse_btn.label = "Browse...";
            this.avatar_browse_btn.labelPlacement = "right";
            this.avatar_browse_btn.selected = false;
            this.avatar_browse_btn.toggle = false;
            this.avatar_browse_btn.visible = true;
            try
            {
                this.avatar_browse_btn["componentInspectorSetting"] = false;
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
