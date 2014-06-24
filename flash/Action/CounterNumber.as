package 
{
    import flash.display.*;
    import flash.text.*;

    dynamic public class CounterNumber extends MovieClip
    {
        public var text_txt:TextField;
        public var init:Boolean;
        public var number:int;

        public function CounterNumber()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function set counter(param1:int)
        {
            this.init = true;
            this.number = param1;
            this.text_txt.text = "" + this.number;
            visible = this.number > 0;
            return;
        }// end function

        public function get counter() : int
        {
            if (!this.init)
            {
                this.init = true;
                this.number = 0;
                visible = false;
            }
            return this.number;
        }// end function

        function frame1()
        {
            mouseChildren = false;
            this.text_txt.mouseEnabled = false;
            if (!this.init)
            {
                this.init = true;
                this.number = 0;
                visible = false;
            }
            return;
        }// end function

    }
}
