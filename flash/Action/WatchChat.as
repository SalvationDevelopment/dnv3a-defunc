package 
{
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class WatchChat extends MovieClip
    {
        public var cout_txt:TextArea;
        public var top_mc:MovieClip;
        public var cin_txt:TextInput;
        public var minimize_btn:SimpleButton;
        public var scroll_pos:int;
        public var remember_position:Boolean;

        public function WatchChat()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_cout_txt_WatchChat_Layer1_0();
            this.__setProp_cin_txt_WatchChat_Layer1_0();
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

        public function startDragE(event:MouseEvent)
        {
            this.remember_position = true;
            startDrag();
            return;
        }// end function

        public function dropE(event:MouseEvent)
        {
            stopDrag();
            return;
        }// end function

        function __setProp_cout_txt_WatchChat_Layer1_0()
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

        function __setProp_cin_txt_WatchChat_Layer1_0()
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
            this.top_mc.addEventListener(MouseEvent.MOUSE_DOWN, this.startDragE);
            this.top_mc.addEventListener(MouseEvent.MOUSE_UP, this.dropE);
            return;
        }// end function

    }
}
