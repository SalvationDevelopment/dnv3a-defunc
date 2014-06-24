package dn_fla
{
    import fl.controls.*;
    import flash.display.*;

    dynamic public class PreviewCardContainer_245 extends MovieClip
    {
        public var preview_desc_txt:TextArea;
        public var front_mc:Front;
        public var low_avg_high_mc:MovieClip;

        public function PreviewCardContainer_245()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_preview_desc_txt_PreviewCardContainer_Layer1_0();
            return;
        }// end function

        public function reduceDesc()
        {
            var _loc_1:* = this.preview_desc_txt.verticalScrollPosition;
            this.preview_desc_txt.height = 104;
            this.preview_desc_txt.verticalScrollPosition = _loc_1;
            this.preview_desc_txt.validateNow();
            this.preview_desc_txt.verticalScrollPosition = _loc_1;
            return;
        }// end function

        function __setProp_preview_desc_txt_PreviewCardContainer_Layer1_0()
        {
            try
            {
                this.preview_desc_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.preview_desc_txt.condenseWhite = false;
            this.preview_desc_txt.editable = false;
            this.preview_desc_txt.enabled = true;
            this.preview_desc_txt.horizontalScrollPolicy = "auto";
            this.preview_desc_txt.htmlText = "";
            this.preview_desc_txt.maxChars = 0;
            this.preview_desc_txt.restrict = "";
            this.preview_desc_txt.text = "";
            this.preview_desc_txt.verticalScrollPolicy = "auto";
            this.preview_desc_txt.visible = true;
            this.preview_desc_txt.wordWrap = true;
            try
            {
                this.preview_desc_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.low_avg_high_mc.completeHandler = this.reduceDesc;
            return;
        }// end function

    }
}
