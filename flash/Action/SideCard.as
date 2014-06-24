package 
{
    import flash.display.*;
    import flash.filters.*;
    import flash.utils.*;

    dynamic public class SideCard extends MovieClip
    {
        public var front_mc:Front;
        public var area:String;
        public var idx:int;
        public var glow_str:String;

        public function SideCard()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function initialize(param1:Array, param2:ByteArray)
        {
            this.front_mc.initializeFromArray(param1, param2);
            return;
        }// end function

        public function set glow(param1:String)
        {
            var _loc_2:int = 0;
            switch(param1)
            {
                case null:
                {
                    _loc_2 = -1;
                    break;
                }
                case "deck":
                {
                    _loc_2 = 229;
                    break;
                }
                case "side":
                {
                    _loc_2 = 35072;
                    break;
                }
                case "extra":
                {
                    _loc_2 = 15007835;
                    break;
                }
                default:
                {
                    return;
                    break;
                }
            }
            if (_loc_2 < 0)
            {
                filters = [];
            }
            else
            {
                filters = [new GlowFilter(_loc_2, 1, 25, 25, 2, 1, true)];
            }
            this.glow_str = param1;
            return;
        }// end function

        public function get glow() : String
        {
            return this.glow_str;
        }// end function

        function frame1()
        {
            mouseChildren = false;
            return;
        }// end function

    }
}
