package dn_fla
{
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;

    dynamic public class Combo_78 extends MovieClip
    {
        public var text_txt:TextField;
        public var title_txt:TextField;
        public var combo_cont_mc:MovieClip;
        public var OK_btn:SimpleButton;
        public var cancel_btn:SimpleButton;
        public var tf:TextFormat;

        public function Combo_78()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function get combo_cb() : ComboBox
        {
            return this.combo_cont_mc.combo_cb;
        }// end function

        public function fixTextField()
        {
            this.combo_cb.textField.setStyle("textFormat", this.tf);
            this.combo_cb.textField.setStyle("embedFonts", true);
            this.combo_cb.textField.addEventListener(Event.RENDER, this.fixTextField2E);
            return;
        }// end function

        public function fixTextField2E(event:Event)
        {
            this.combo_cb.textField.y = -1.5;
            this.combo_cb.textField.removeEventListener(Event.RENDER, this.fixTextField2E);
            return;
        }// end function

        public function comboStageAddE(event:Event)
        {
            this.combo_cb.dropdown.y = this.combo_cb.dropdown.y + 13;
            return;
        }// end function

        function frame1()
        {
            this.tf = new TextFormat();
            this.tf.size = 16;
            this.tf.font = "Arial Rounded MT Bold";
            this.combo_cb.dropdownWidth = 450;
            this.combo_cb.dropdown.rowHeight = 33;
            this.combo_cb.dropdown.setStyle("cellRenderer", DropdownCellRenderer);
            this.combo_cb.dropdown.addEventListener(Event.ADDED_TO_STAGE, this.comboStageAddE);
            return;
        }// end function

    }
}
