package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;

    dynamic public class Coin_414 extends MovieClip
    {
        public var center_mc:MovieClip;
        public var cover2_mc:MovieClip;
        public var cover1_mc:MovieClip;
        public var tails_mc:MovieClip;
        public var heads_mc:MovieClip;
        public var pp:PerspectiveProjection;
        public var show_tails:Boolean;

        public function Coin_414()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function shiftCenterE(event:Event)
        {
            this.pp.projectionCenter = new Point(x, y);
            transform.perspectiveProjection = this.pp;
            return;
        }// end function

        public function set coinRotationX(param1:Number)
        {
            param1 = param1 % 360;
            if (param1 < 0)
            {
                param1 = param1 + 360;
            }
            rotationX = param1;
            var _loc_2:* = param1 > 90 && param1 < 270;
            if (!this.show_tails == _loc_2)
            {
                this.show_tails = _loc_2;
                if (this.show_tails)
                {
                    addChildAt(this.heads_mc, 0);
                    addChild(this.tails_mc);
                }
                else
                {
                    addChildAt(this.tails_mc, 0);
                    addChild(this.heads_mc);
                }
            }
            return;
        }// end function

        function frame1()
        {
            this.pp = new PerspectiveProjection();
            addEventListener(Event.ENTER_FRAME, this.shiftCenterE);
            this.heads_mc.z = -2;
            this.tails_mc.z = 2;
            this.cover1_mc.z = -2;
            this.cover2_mc.z = 2;
            this.center_mc.rotationX = 90;
            return;
        }// end function

    }
}
