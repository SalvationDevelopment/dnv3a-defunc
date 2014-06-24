package 
{
    import fl.data.*;
    import fl.transitions.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;

    dynamic public class DuelCardMenu extends MovieClip
    {
        public var hidden_mc:MovieClip;
        public var mask_mc:MovieClip;
        public var click_callback:Function;
        public var card:DuelCard;
        public var tween:Tween;
        public var menu_width:Number;

        public function DuelCardMenu()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function initialize(param1:DataProvider, param2:Function, param3:DuelCard)
        {
            var _loc_7:Object = null;
            var _loc_8:DuelCardMenuItem = null;
            this.click_callback = param2;
            this.card = param3;
            this.fixMenuPosition(true);
            var _loc_4:Number = 0;
            var _loc_5:* = param1.length;
            var _loc_6:* = 0;
            while (_loc_6 < _loc_5)
            {
                
                _loc_7 = param1.getItemAt(_loc_6);
                _loc_8 = new DuelCardMenuItem();
                _loc_4 = _loc_4 - _loc_8.initialize(_loc_7.label, _loc_7.data, this.menu_width, _loc_6 == 0);
                _loc_8.y = _loc_4;
                _loc_8.addEventListener(MouseEvent.CLICK, this.itemClickE);
                this.hidden_mc.addChild(_loc_8);
                _loc_6 = _loc_6 + 1;
            }
            this.mask_mc.x = -10;
            this.mask_mc.width = this.menu_width + 20;
            this.mask_mc.height = -_loc_4 + 50;
            this.tween = new Tween(this.hidden_mc, "y", Regular.easeOut, -_loc_4, 0, -0.004 * _loc_4, true);
            return;
        }// end function

        public function fixMenuPosition(param1:Boolean = false)
        {
            var _loc_2:* = this.card.scaleX;
            if (_loc_2 < 0)
            {
                _loc_2 = -_loc_2;
            }
            var _loc_3:* = this.card.parent.localToGlobal(new Point(this.card.x, this.card.y));
            if (this.card.width < this.card.height)
            {
                if (param1)
                {
                    this.menu_width = _loc_2 * 400;
                }
                x = _loc_3.x - _loc_2 * 200;
                y = _loc_3.y - _loc_2 * 290;
            }
            else
            {
                if (param1)
                {
                    this.menu_width = _loc_2 * 580;
                }
                x = _loc_3.x - _loc_2 * 290;
                y = _loc_3.y - _loc_2 * 200;
            }
            return;
        }// end function

        public function itemClickE(event:MouseEvent)
        {
            this.click_callback(this.card, event.currentTarget.data, event);
            return;
        }// end function

        public function stopTween()
        {
            this.tween.stop();
            this.tween = null;
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
