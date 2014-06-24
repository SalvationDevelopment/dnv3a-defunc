package 
{
    import flash.display.*;

    dynamic public class Counter extends MovieClip
    {
        public var regular_mc:MovieClip;
        public var glow_mc:MovieClip;
        public var init:Boolean;

        public function Counter()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function set glow(param1:Boolean)
        {
            this.init = true;
            this.glow_mc.visible = param1;
            this.regular_mc.visible = !param1;
            return;
        }// end function

        function frame1()
        {
            mouseChildren = false;
            if (!this.init)
            {
                this.init = true;
                this.glow_mc.visible = false;
            }
            return;
        }// end function

    }
}
