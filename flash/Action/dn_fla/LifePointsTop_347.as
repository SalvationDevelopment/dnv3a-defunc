package dn_fla
{
    import fl.transitions.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.media.*;
    import flash.text.*;

    dynamic public class LifePointsTop_347 extends MovieClip
    {
        public var lps_txt:TextField;
        public var bar_mask_mc:MovieClip;
        public var init:Boolean;
        public var curr_points:int;
        public var last_change:int;

        public function LifePointsTop_347()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function set points(param1:int)
        {
            if (!this.init)
            {
                this.curr_points = param1;
                this.init = true;
            }
            if (param1 > 999999)
            {
                param1 = 999999;
            }
            if (param1 < 0)
            {
                param1 = 0;
            }
            this.lps_txt.text = "" + param1;
            var _loc_2:* = param1 > 8000 ? (8000) : (param1);
            var _loc_3:* = 15.8;
            var _loc_4:* = 228.8;
            this.bar_mask_mc.x = _loc_4 + (_loc_3 - _loc_4) * _loc_2 / 8000;
            return;
        }// end function

        public function get points() : int
        {
            if (!this.init)
            {
                this.curr_points = 8000;
                this.init = true;
            }
            return this.curr_points;
        }// end function

        public function getLastChange() : int
        {
            return this.last_change;
        }// end function

        public function getTweensArg(param1:int, param2:Number) : Array
        {
            var _loc_3:* = this.curr_points;
            this.curr_points = param1;
            return [_loc_3, param1, param2];
        }// end function

        public function getTweens(param1:int) : Array
        {
            var _loc_2:* = this.points;
            this.curr_points = param1;
            this.last_change = param1 - _loc_2;
            var _loc_3:* = new LPSound();
            _loc_3.play();
            return [new Tween(this, "points", Strong.easeOut, _loc_2, param1, 1.2, true)];
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
