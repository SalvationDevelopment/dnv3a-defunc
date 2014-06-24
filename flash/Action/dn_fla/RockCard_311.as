package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;

    dynamic public class RockCard_311 extends MovieClip
    {
        public var back_mc:MovieClip;
        public var front_mc:MovieClip;
        public var glow_mc:MovieClip;
        public var pp:PerspectiveProjection;
        public var click_handler:Function;
        public var mouse_over:Boolean;
        public var xback:Boolean;
        public var yback:Boolean;
        public var show_back:Boolean;

        public function RockCard_311()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function set clickHandler(param1:Function)
        {
            this.click_handler = param1;
            if (param1 == null)
            {
                buttonMode = false;
                removeEventListener(MouseEvent.CLICK, this.clickHandlerE);
                this.glow_mc.visible = false;
            }
            else
            {
                buttonMode = true;
                tabEnabled = false;
                addEventListener(MouseEvent.CLICK, this.clickHandlerE);
                if (this.mouse_over)
                {
                    this.glow_mc.visible = true;
                }
            }
            return;
        }// end function

        public function clickHandlerE(event:MouseEvent)
        {
            this.click_handler(event);
            return;
        }// end function

        public function mouseOverE(event:MouseEvent)
        {
            this.mouse_over = true;
            if (this.click_handler != null)
            {
                this.glow_mc.visible = true;
            }
            return;
        }// end function

        public function mouseOutE(event:MouseEvent)
        {
            this.mouse_over = false;
            if (this.click_handler != null)
            {
                this.glow_mc.visible = false;
            }
            return;
        }// end function

        public function set cardRotationX(param1:Number)
        {
            param1 = param1 % 360;
            if (param1 < 0)
            {
                param1 = param1 + 360;
            }
            rotationX = param1;
            this.xback = param1 > 90 && param1 < 270;
            var _loc_2:* = this.xback && !this.yback || !this.xback && this.yback;
            if (!this.show_back == _loc_2)
            {
                this.show_back = _loc_2;
                if (this.show_back)
                {
                    removeChild(this.front_mc);
                    addChild(this.back_mc);
                }
                else
                {
                    removeChild(this.back_mc);
                    addChild(this.front_mc);
                }
            }
            if (this.pp == null)
            {
                this.pp = new PerspectiveProjection();
            }
            this.pp.projectionCenter = new Point(x, y);
            transform.perspectiveProjection = this.pp;
            return;
        }// end function

        public function set cardRotationY(param1:Number)
        {
            param1 = param1 % 360;
            if (param1 < 0)
            {
                param1 = param1 + 360;
            }
            rotationY = param1;
            this.yback = param1 > 90 && param1 < 270;
            var _loc_2:* = this.xback && !this.yback || !this.xback && this.yback;
            if (!this.show_back == _loc_2)
            {
                this.show_back = _loc_2;
                if (this.show_back)
                {
                    removeChild(this.front_mc);
                    addChild(this.back_mc);
                }
                else
                {
                    removeChild(this.back_mc);
                    addChild(this.front_mc);
                }
            }
            if (this.pp == null)
            {
                this.pp = new PerspectiveProjection();
            }
            this.pp.projectionCenter = new Point(x, y);
            transform.perspectiveProjection = this.pp;
            return;
        }// end function

        public function set cardRotationZ(param1:Number)
        {
            rotationZ = param1;
            return;
        }// end function

        public function switchBackE(event:Event)
        {
            var _loc_2:* = BackLoader(event.currentTarget);
            var _loc_3:* = new MovieClip();
            _loc_3.addChild(_loc_2.getBack());
            if (contains(this.back_mc))
            {
                addChild(_loc_3);
                swapChildren(this.back_mc, _loc_3);
                removeChild(this.back_mc);
            }
            this.back_mc = _loc_3;
            _loc_2.removeEventListener(Event.COMPLETE, this.switchBackE);
            return;
        }// end function

        function frame1()
        {
            mouseChildren = false;
            this.front_mc.front_mc.initialize("", "", "Rock", "", "", "ritual", "Rock", "earth", "Rock beats scissors but loses to paper.", "", "", "", "");
            this.glow_mc.visible = false;
            addEventListener(MouseEvent.MOUSE_OVER, this.mouseOverE);
            addEventListener(MouseEvent.MOUSE_OUT, this.mouseOutE);
            if (this.show_back)
            {
                if (contains(this.front_mc))
                {
                    removeChild(this.front_mc);
                }
                addChild(this.back_mc);
            }
            else
            {
                if (contains(this.back_mc))
                {
                    removeChild(this.back_mc);
                }
                addChild(this.front_mc);
            }
            return;
        }// end function

    }
}
