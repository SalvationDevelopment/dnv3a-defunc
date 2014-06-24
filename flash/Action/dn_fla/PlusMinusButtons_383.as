package dn_fla
{
    import flash.display.*;
    import flash.events.*;

    dynamic public class PlusMinusButtons_383 extends MovieClip
    {
        public var minus_btn:SimpleButton;
        public var plus_btn:SimpleButton;

        public function PlusMinusButtons_383()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function toggleE(event:MouseEvent)
        {
            var _loc_2:* = undefined;
            _loc_2 = this.plus_btn.visible;
            this.plus_btn.visible = !_loc_2;
            this.minus_btn.visible = _loc_2;
            return;
        }// end function

        public function sign() : String
        {
            return this.plus_btn.visible ? ("") : ("-");
        }// end function

        function frame1()
        {
            this.plus_btn.visible = false;
            this.plus_btn.addEventListener(MouseEvent.CLICK, this.toggleE);
            this.minus_btn.addEventListener(MouseEvent.CLICK, this.toggleE);
            return;
        }// end function

    }
}
