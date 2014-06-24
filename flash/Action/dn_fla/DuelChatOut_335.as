package dn_fla
{
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class DuelChatOut_335 extends MovieClip
    {
        public var cout_txt:TextArea;
        public var scroll_pos:int;

        public function DuelChatOut_335()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_cout_txt_DuelChatOut_Layer1_0();
            return;
        }// end function

        public function saveScrollPosE(event:Event)
        {
            this.scroll_pos = this.cout_txt.verticalScrollPosition;
            return;
        }// end function

        public function restoreScrollPosE(event:FocusEvent)
        {
            if (this.scroll_pos >= 0)
            {
                this.cout_txt.verticalScrollPosition = this.scroll_pos;
            }
            return;
        }// end function

        function __setProp_cout_txt_DuelChatOut_Layer1_0()
        {
            try
            {
                this.cout_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.cout_txt.condenseWhite = false;
            this.cout_txt.editable = false;
            this.cout_txt.enabled = true;
            this.cout_txt.horizontalScrollPolicy = "auto";
            this.cout_txt.htmlText = "";
            this.cout_txt.maxChars = 0;
            this.cout_txt.restrict = "";
            this.cout_txt.text = "";
            this.cout_txt.verticalScrollPolicy = "auto";
            this.cout_txt.visible = true;
            this.cout_txt.wordWrap = true;
            try
            {
                this.cout_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.cout_txt.addEventListener(Event.ENTER_FRAME, this.saveScrollPosE);
            this.scroll_pos = -1;
            this.cout_txt.addEventListener(FocusEvent.FOCUS_OUT, this.restoreScrollPosE);
            return;
        }// end function

    }
}
