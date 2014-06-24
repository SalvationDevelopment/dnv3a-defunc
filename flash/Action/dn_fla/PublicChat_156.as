package dn_fla
{
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class PublicChat_156 extends MovieClip
    {
        public var cout_txt:TextArea;
        public var top_mc:MovieClip;
        public var cin_txt:TextInput;
        public var minimize_btn:SimpleButton;
        public var scroll_pos:int;
        public var remember_position:Boolean;
        public var publicHtmlText:String;
        public var publicHtmlLines:int;

        public function PublicChat_156()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_cout_txt_PublicChat_Layer1_0();
            this.__setProp_cin_txt_PublicChat_Layer1_0();
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

        public function dragCallback(param1:Sprite) : Sprite
        {
            this.remember_position = true;
            return this;
        }// end function

        public function publicChatPrint(param1:String, param2:String, param3:String, param4:int)
        {
            var _loc_10:String = null;
            var _loc_5:* = this.cout_txt.verticalScrollPosition;
            var _loc_6:* = this.cout_txt.maxVerticalScrollPosition;
            var _loc_7:* = _loc_5 == _loc_6;
            var _loc_8:* = this.publicHtmlLines == 200;
            if (this.publicHtmlLines == 200)
            {
                this.publicHtmlText = this.publicHtmlText.substr(this.publicHtmlText.indexOf("<br />") + 6);
                this.cout_txt.htmlText = this.publicHtmlText;
                this.cout_txt.verticalScrollPosition = _loc_5;
                _loc_5 = _loc_5 - (_loc_6 - this.cout_txt.maxVerticalScrollPosition);
                if (_loc_5 < 0)
                {
                    _loc_5 = 0;
                }
            }
            else
            {
                var _loc_11:String = this;
                var _loc_12:* = this.publicHtmlLines + 1;
                _loc_11.publicHtmlLines = _loc_12;
            }
            switch(param4)
            {
                case 0:
                {
                    _loc_10 = param1 == param3 ? ("#FF0000") : ("#0000FF");
                    break;
                }
                case 1:
                {
                    _loc_10 = "#009900";
                    break;
                }
                case 2:
                {
                    _loc_10 = "#707070";
                    break;
                }
                case 3:
                {
                    _loc_10 = "#CC9900";
                    break;
                }
                case 4:
                {
                    _loc_10 = "#CC9900";
                    break;
                }
                default:
                {
                    break;
                }
            }
            var _loc_9:* = StringUtils.escapeAndColorSender(param1, _loc_10) + StringUtils.escapeHtmlWithLinks(param2);
            if (this.publicHtmlText != "")
            {
                _loc_9 = "<br />" + _loc_9;
            }
            this.publicHtmlText = this.publicHtmlText + _loc_9;
            this.cout_txt.htmlText = this.publicHtmlText;
            this.cout_txt.verticalScrollPosition = _loc_5;
            if (_loc_7)
            {
                this.cout_txt.verticalScrollPosition = this.cout_txt.maxVerticalScrollPosition;
            }
            return;
        }// end function

        function __setProp_cout_txt_PublicChat_Layer1_0()
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

        function __setProp_cin_txt_PublicChat_Layer1_0()
        {
            try
            {
                this.cin_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.cin_txt.displayAsPassword = false;
            this.cin_txt.editable = true;
            this.cin_txt.enabled = true;
            this.cin_txt.maxChars = 200;
            this.cin_txt.restrict = " -~";
            this.cin_txt.text = "";
            this.cin_txt.visible = true;
            try
            {
                this.cin_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            visible = false;
            this.cout_txt.addEventListener(Event.ENTER_FRAME, this.saveScrollPosE);
            this.scroll_pos = -1;
            this.cout_txt.addEventListener(FocusEvent.FOCUS_OUT, this.restoreScrollPosE);
            this.remember_position = false;
            DragManager.enableDragging(this.top_mc, this.dragCallback, null);
            this.publicHtmlText = "";
            this.publicHtmlLines = 0;
            return;
        }// end function

    }
}
