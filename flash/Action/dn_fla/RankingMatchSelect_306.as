package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class RankingMatchSelect_306 extends MovieClip
    {
        public var match_rb:RadioButton;
        public var single_rb:RadioButton;

        public function RankingMatchSelect_306()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_single_rb_RankingMatchSelect_Layer1_0();
            this.__setProp_match_rb_RankingMatchSelect_Layer1_0();
            return;
        }// end function

        public function initRadioButtonGroup() : RadioButtonGroup
        {
            var _loc_1:* = new RadioButtonGroup("MatchGroup");
            this.single_rb.group = _loc_1;
            this.match_rb.group = _loc_1;
            return _loc_1;
        }// end function

        function __setProp_single_rb_RankingMatchSelect_Layer1_0()
        {
            try
            {
                this.single_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.single_rb.enabled = true;
            this.single_rb.groupName = "MatchGroup";
            this.single_rb.label = "                                                                                                    ";
            this.single_rb.labelPlacement = "right";
            this.single_rb.selected = true;
            this.single_rb.value = "";
            this.single_rb.visible = true;
            try
            {
                this.single_rb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_match_rb_RankingMatchSelect_Layer1_0()
        {
            try
            {
                this.match_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.match_rb.enabled = true;
            this.match_rb.groupName = "MatchGroup";
            this.match_rb.label = "                                                                                                    ";
            this.match_rb.labelPlacement = "right";
            this.match_rb.selected = false;
            this.match_rb.value = "";
            this.match_rb.visible = true;
            try
            {
                this.match_rb["componentInspectorSetting"] = false;
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
