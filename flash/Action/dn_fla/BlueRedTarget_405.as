package dn_fla
{
    import flash.display.*;

    dynamic public class BlueRedTarget_405 extends MovieClip
    {
        public var red_mc:MovieClip;
        public var blue_mc:MovieClip;
        public var glow_mc:MovieClip;
        public var black_mc:MovieClip;

        public function BlueRedTarget_405()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function set angle(param1:Number)
        {
            var _loc_2:Number = NaN;
            _loc_2 = param1 - 137.5;
            this.red_mc.rotation = _loc_2;
            this.black_mc.rotation = _loc_2;
            return;
        }// end function

        public function set glow(param1:Boolean)
        {
            this.blue_mc.visible = !param1;
            this.glow_mc.visible = param1;
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
