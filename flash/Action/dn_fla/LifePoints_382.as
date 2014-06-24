package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class LifePoints_382 extends MovieClip
    {
        public var lp_txt:TextInput;
        public var plus_minus_mc:MovieClip;

        public function LifePoints_382()
        {
            this.__setProp_lp_txt_LifePoints_Layer1_0();
            return;
        }// end function

        function __setProp_lp_txt_LifePoints_Layer1_0()
        {
            try
            {
                this.lp_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.lp_txt.displayAsPassword = false;
            this.lp_txt.editable = true;
            this.lp_txt.enabled = true;
            this.lp_txt.maxChars = 6;
            this.lp_txt.restrict = "0-9";
            this.lp_txt.text = "";
            this.lp_txt.visible = true;
            try
            {
                this.lp_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

    }
}
