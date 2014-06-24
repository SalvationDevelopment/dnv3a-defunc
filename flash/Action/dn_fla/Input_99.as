package dn_fla
{
    import fl.controls.*;
    import flash.display.*;
    import flash.text.*;

    dynamic public class Input_99 extends MovieClip
    {
        public var text_txt:TextField;
        public var title_txt:TextField;
        public var input_txt:TextInput;
        public var OK_btn:SimpleButton;
        public var cancel_btn:SimpleButton;
        public var tf:TextFormat;

        public function Input_99()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_input_txt_Input_Layer1_0();
            return;
        }// end function

        function __setProp_input_txt_Input_Layer1_0()
        {
            try
            {
                this.input_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.input_txt.displayAsPassword = false;
            this.input_txt.editable = true;
            this.input_txt.enabled = true;
            this.input_txt.maxChars = 0;
            this.input_txt.restrict = " -~";
            this.input_txt.text = "";
            this.input_txt.visible = true;
            try
            {
                this.input_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.tf = new TextFormat();
            this.tf.size = 25;
            this.tf.font = "Arial Rounded MT Bold";
            this.input_txt.setStyle("textFormat", this.tf);
            this.input_txt.setStyle("embedFonts", true);
            return;
        }// end function

    }
}
