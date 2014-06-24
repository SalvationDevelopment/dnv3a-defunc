package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;

    dynamic public class Die_421 extends MovieClip
    {
        public var six_mc:MovieClip;
        public var one_mc:MovieClip;
        public var two_mc:MovieClip;
        public var three_mc:MovieClip;
        public var five_mc:MovieClip;
        public var four_mc:MovieClip;
        public var pp:PerspectiveProjection;
        public var x_quad1:int;
        public var x_quad2:int;
        public var y_quad1:int;
        public var y_quad2:int;
        public var combined1:int;
        public var combined2:int;
        public var current_front:MovieClip;

        public function Die_421()
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

        public function set dieRotationX(param1:Number)
        {
            param1 = param1 % 360;
            if (param1 < 0)
            {
                param1 = param1 + 360;
            }
            rotationX = param1;
            if (param1 < 90)
            {
                this.x_quad1 = 0;
            }
            else if (param1 >= 270)
            {
                this.x_quad1 = 3;
            }
            else if (param1 >= 90 && param1 < 180)
            {
                this.x_quad1 = 1;
            }
            else
            {
                this.x_quad1 = 2;
            }
            if (param1 >= 315 || param1 < 45)
            {
                this.x_quad2 = 0;
            }
            else if (param1 >= 45 && param1 < 135)
            {
                this.x_quad2 = 1;
            }
            else if (param1 >= 135 && param1 < 225)
            {
                this.x_quad2 = 2;
            }
            else
            {
                this.x_quad2 = 3;
            }
            var _loc_2:* = this.x_quad1 << 2 | this.y_quad1;
            var _loc_3:* = this.x_quad2 << 2 | this.y_quad2;
            this.moveToFront(_loc_2, _loc_3);
            return;
        }// end function

        public function set dieRotationY(param1:Number)
        {
            param1 = param1 % 360;
            if (param1 < 0)
            {
                param1 = param1 + 360;
            }
            rotationY = param1;
            if (param1 < 90)
            {
                this.y_quad1 = 0;
            }
            else if (param1 >= 270)
            {
                this.y_quad1 = 3;
            }
            else if (param1 >= 90 && param1 < 180)
            {
                this.y_quad1 = 1;
            }
            else
            {
                this.y_quad1 = 2;
            }
            if (param1 >= 315 || param1 < 45)
            {
                this.y_quad2 = 0;
            }
            else if (param1 >= 45 && param1 < 135)
            {
                this.y_quad2 = 1;
            }
            else if (param1 >= 135 && param1 < 225)
            {
                this.y_quad2 = 2;
            }
            else
            {
                this.y_quad2 = 3;
            }
            var _loc_2:* = this.x_quad1 << 2 | this.y_quad1;
            var _loc_3:* = this.x_quad2 << 2 | this.y_quad2;
            this.moveToFront(_loc_2, _loc_3);
            return;
        }// end function

        public function set dieRotationZ(param1:Number)
        {
            rotationZ = param1;
            return;
        }// end function

        public function moveToFront(param1:int, param2:int)
        {
            var _loc_3:* = undefined;
            var _loc_4:Boolean = false;
            var _loc_5:* = undefined;
            if (this.combined1 != param1)
            {
                this.combined1 = param1;
                _loc_3 = this.getFronts();
            }
            else
            {
                _loc_3 = null;
            }
            if (this.combined2 != param2)
            {
                this.combined2 = param2;
                this.current_front = this.getFront();
                _loc_4 = true;
            }
            else
            {
                _loc_4 = false;
            }
            if (_loc_3 != null)
            {
                if (this.current_front == null)
                {
                    this.current_front = this.one_mc;
                }
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    if (_loc_3[_loc_5] != this.current_front)
                    {
                        addChild(_loc_3[_loc_5]);
                    }
                    _loc_5 = _loc_5 + 1;
                }
                addChild(this.current_front);
            }
            else if (_loc_4)
            {
                addChild(this.current_front);
            }
            return;
        }// end function

        public function getFronts() : Array
        {
            var _loc_1:Array = null;
            switch(this.combined1)
            {
                case 0:
                case 9:
                {
                    _loc_1 = [this.one_mc, this.four_mc, this.five_mc];
                    break;
                }
                case 1:
                case 8:
                {
                    _loc_1 = [this.three_mc, this.five_mc, this.six_mc];
                    break;
                }
                case 2:
                case 11:
                {
                    _loc_1 = [this.two_mc, this.three_mc, this.six_mc];
                    break;
                }
                case 3:
                case 10:
                {
                    _loc_1 = [this.one_mc, this.two_mc, this.four_mc];
                    break;
                }
                case 4:
                case 13:
                {
                    _loc_1 = [this.four_mc, this.five_mc, this.six_mc];
                    break;
                }
                case 5:
                case 12:
                {
                    _loc_1 = [this.one_mc, this.three_mc, this.five_mc];
                    break;
                }
                case 6:
                case 15:
                {
                    _loc_1 = [this.one_mc, this.two_mc, this.three_mc];
                    break;
                }
                case 7:
                case 14:
                {
                    _loc_1 = [this.two_mc, this.four_mc, this.six_mc];
                    break;
                }
                default:
                {
                    break;
                }
            }
            return _loc_1;
        }// end function

        public function getFront() : MovieClip
        {
            var _loc_1:MovieClip = null;
            switch(this.combined2)
            {
                case 0:
                case 10:
                {
                    _loc_1 = this.one_mc;
                    break;
                }
                case 3:
                case 7:
                case 11:
                case 15:
                {
                    _loc_1 = this.two_mc;
                    break;
                }
                case 6:
                case 12:
                {
                    _loc_1 = this.three_mc;
                    break;
                }
                case 4:
                case 14:
                {
                    _loc_1 = this.four_mc;
                    break;
                }
                case 1:
                case 5:
                case 9:
                case 13:
                {
                    _loc_1 = this.five_mc;
                    break;
                }
                case 2:
                case 8:
                {
                    _loc_1 = this.six_mc;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return _loc_1;
        }// end function

        function frame1()
        {
            this.pp = new PerspectiveProjection();
            addEventListener(Event.ENTER_FRAME, this.shiftCenterE);
            this.one_mc.z = -50;
            this.two_mc.x = -50;
            this.two_mc.rotationY = -90;
            this.three_mc.y = 50;
            this.three_mc.rotationX = 90;
            this.four_mc.y = -50;
            this.four_mc.rotationX = 90;
            this.five_mc.x = 50;
            this.five_mc.rotationY = 90;
            this.six_mc.z = 50;
            return;
        }// end function

    }
}
