package 
{
    import flash.display.*;

    dynamic public class SearchCard extends MovieClip
    {
        public var limited_mc:MovieClip;
        public var limit_reached_mc:MovieClip;
        public var front_mc:Front;
        public var semi_mc:MovieClip;
        public var banned_mc:MovieClip;

        public function SearchCard()
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
            return;
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

        public function showLimitReached()
        {
            this.limit_reached_mc.visible = true;
            return;
        }// end function

        public function hideLimitReached()
        {
            this.limit_reached_mc.visible = false;
            return;
        }// end function

        public function limitReached() : Boolean
        {
            return this.limit_reached_mc.visible;
        }// end function

        function frame1()
        {
            mouseChildren = false;
            this.hideLimitReached();
            return;
        }// end function

    }
}
