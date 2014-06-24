package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;

    public class DuelCard extends Sprite
    {
        public var front_mc:Front;
        public var counter_mc:CounterNumber;
        public var back_mc:Shape;
        public var show_back:Boolean;
        public var loc:String;
        public var id:Object;
        public var position:int;
        private var pp:PerspectiveProjection;
        public var overlay_prev:DuelCard;
        public var overlay_next:DuelCard;
        private var card_rot_y:Number;
        private var card_rot_z:Number;
        private var tween_count:int;
        private var done_tweening_callback:Function;
        private var card_scale:Number;

        public function DuelCard(param1:BackLoader)
        {
            this.front_mc = new Front();
            this.front_mc.x = -200;
            this.front_mc.y = -290;
            this.counter_mc = new CounterNumber();
            this.counter_mc.x = 64;
            this.counter_mc.y = 131;
            this.back_mc = param1.getBack();
            if (this.back_mc == null)
            {
                this.back_mc = new Back();
                param1.addEventListener(Event.COMPLETE, this.switchBackE);
            }
            addChild(this.front_mc);
            addChild(this.counter_mc);
            this.show_back = false;
            this.card_rot_y = 0;
            this.card_rot_z = 0;
            this.card_scale = 1;
            this.pp = new PerspectiveProjection();
            var _loc_2:String = this;
            this.overlay_next = this;
            this.overlay_prev = _loc_2;
            return;
        }// end function

        private function switchBackE(event:Event)
        {
            var _loc_2:* = BackLoader(event.currentTarget);
            var _loc_3:* = _loc_2.getBack();
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

        public function initialize(param1:Array, param2:ByteArray)
        {
            this.front_mc.initializeFromArray(param1, param2);
            return;
        }// end function

        public function initializeToken()
        {
            this.front_mc.initializeToken();
            return;
        }// end function

        public function set cardRotationY(param1:Number)
        {
            var _loc_2:Boolean = false;
            this.card_rot_y = param1;
            if (this.card_rot_y == 0)
            {
                if (this.show_back)
                {
                    this.show_back = false;
                    removeChild(this.back_mc);
                    addChild(this.front_mc);
                }
                if (transform.matrix3D == null)
                {
                    scaleX = this.card_scale;
                }
                else
                {
                    this.reset3D();
                }
            }
            else if (this.card_rot_y == 180)
            {
                if (!this.show_back)
                {
                    this.show_back = true;
                    removeChild(this.front_mc);
                    addChild(this.back_mc);
                }
                if (transform.matrix3D == null)
                {
                    scaleX = -this.card_scale;
                }
                else
                {
                    this.reset3D();
                }
            }
            else
            {
                if (transform.matrix3D == null && this.show_back)
                {
                    scaleX = this.card_scale;
                }
                _loc_2 = this.card_rot_y > 90 && this.card_rot_y < 270;
                if (this.show_back != _loc_2)
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
                this.pp.projectionCenter = new Point(x, y);
                transform.perspectiveProjection = this.pp;
                rotationY = this.card_rot_y;
            }
            return;
        }// end function

        public function get cardRotationY() : Number
        {
            return this.card_rot_y;
        }// end function

        public function set cardRotationZ(param1:Number)
        {
            this.card_rot_z = param1;
            if (transform.matrix3D == null)
            {
                rotation = this.card_rot_z;
                if (this.counter_mc.visible)
                {
                    this.counter_mc.rotation = -this.card_rot_z;
                }
            }
            else
            {
                rotationZ = param1;
            }
            return;
        }// end function

        public function get cardRotationZ() : Number
        {
            return this.card_rot_z;
        }// end function

        private function reset3D()
        {
            var _loc_1:* = x;
            var _loc_2:* = y;
            transform.matrix3D = null;
            width = 400;
            height = 580;
            x = _loc_1;
            y = _loc_2;
            scaleX = this.show_back ? (-this.card_scale) : (this.card_scale);
            scaleY = this.card_scale;
            rotation = this.card_rot_z;
            return;
        }// end function

        public function get tweenCount() : int
        {
            return this.tween_count;
        }// end function

        public function set tweenCount(param1:int)
        {
            this.tween_count = param1;
            return;
        }// end function

        public function decrementTweenCountE(event:Event)
        {
            var _loc_2:String = this;
            var _loc_3:* = this.tween_count - 1;
            _loc_2.tween_count = _loc_3;
            if (this.tween_count == 0)
            {
                this.done_tweening_callback(this);
            }
            return;
        }// end function

        public function set doneTweeningCallback(param1:Function)
        {
            this.done_tweening_callback = param1;
            return;
        }// end function

        public function set scale(param1:Number)
        {
            this.card_scale = param1;
            if (transform.matrix3D == null)
            {
                if (this.card_rot_y == 180)
                {
                    scaleX = -this.card_scale;
                }
                else
                {
                    scaleX = this.card_scale;
                }
                scaleY = this.card_scale;
            }
            else
            {
                scaleX = this.card_scale;
                scaleY = this.card_scale;
            }
            return;
        }// end function

        public function get scale() : Number
        {
            return this.card_scale;
        }// end function

        public function isSideways() : Boolean
        {
            return height < width;
        }// end function

        public function overlayLink(param1:DuelCard)
        {
            this.overlay_next = param1;
            param1.overlay_prev = this;
            return;
        }// end function

        public function overlayUnlink()
        {
            this.overlay_prev.overlay_next = this.overlay_next;
            this.overlay_next.overlay_prev = this.overlay_prev;
            var _loc_1:String = this;
            this.overlay_next = this;
            this.overlay_prev = _loc_1;
            return;
        }// end function

        public function hasUnderlays() : Boolean
        {
            return this.overlay_next != this;
        }// end function

        public function get counter() : int
        {
            return this.counter_mc.counter;
        }// end function

        public function set counter(param1:int)
        {
            var _loc_2:* = this.counter_mc.visible;
            this.counter_mc.counter = param1;
            if (!_loc_2 && this.counter_mc.visible && transform.matrix3D == null)
            {
                addChild(this.counter_mc);
                this.counter_mc.rotation = -this.card_rot_z;
            }
            return;
        }// end function

        public function getFieldNameString()
        {
            var _loc_1:* = this.front_mc.card == "token" ? ("token") : ("\"" + this.front_mc.card_name + "\"");
            return _loc_1 + " in " + this.getPositionString();
        }// end function

        private function getPositionString() : String
        {
            switch(this.position)
            {
                case 0:
                {
                    return "ST-1";
                }
                case 1:
                {
                    return "ST-2";
                }
                case 2:
                {
                    return "ST-3";
                }
                case 3:
                {
                    return "ST-4";
                }
                case 4:
                {
                    return "ST-5";
                }
                case 5:
                {
                    return "F";
                }
                case 6:
                {
                    return "M-1";
                }
                case 7:
                {
                    return "M-2";
                }
                case 8:
                {
                    return "M-3";
                }
                case 9:
                {
                    return "M-4";
                }
                case 10:
                {
                    return "M-5";
                }
                default:
                {
                    return "?";
                    break;
                }
            }
        }// end function

    }
}
