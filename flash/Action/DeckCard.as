package 
{
    import flash.display.*;

    dynamic public class DeckCard extends MovieClip
    {
        public var limited_mc:MovieClip;
        public var front_mc:Front;
        public var semi_mc:MovieClip;
        public var banned_mc:MovieClip;

        public function DeckCard()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function initialize(param1:Array)
        {
            this.front_mc.initializeFromArray(param1);
            this.setLimit(this.front_mc.limit);
            return;
        }// end function

        public function copyFront(param1:Front)
        {
            this.front_mc.copyFront(param1);
            this.setLimit(this.front_mc.limit);
            return;
        }// end function

        public function swapFront(param1:Front) : Front
        {
            var _loc_2:* = this.front_mc;
            if (_loc_2 == param1)
            {
                return null;
            }
            removeChild(_loc_2);
            addChildAt(param1, 0);
            this.front_mc = param1;
            this.setLimit(param1.limit);
            return _loc_2;
        }// end function

        public function newFront(param1:Front)
        {
            addChildAt(param1, 0);
            this.front_mc = param1;
            return;
        }// end function

        public function setLimit(param1:int)
        {
            this.banned_mc.visible = false;
            this.limited_mc.visible = false;
            this.semi_mc.visible = false;
            switch(param1)
            {
                case 0:
                {
                    this.banned_mc.visible = true;
                    break;
                }
                case 1:
                {
                    this.limited_mc.visible = true;
                    break;
                }
                case 2:
                {
                    this.semi_mc.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        function frame1()
        {
            mouseChildren = false;
            return;
        }// end function

    }
}
