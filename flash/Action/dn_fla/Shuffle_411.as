package dn_fla
{
    import fl.transitions.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.geom.*;
    import flash.media.*;

    dynamic public class Shuffle_411 extends MovieClip
    {
        public var FLY_TIME:Number;
        public var TWEEN_TIME:Number;
        public var cards:Array;
        public var orig_parent:DisplayObjectContainer;
        public var oldvals1:Array;
        public var oldvals2:Array;
        public var deck_cont:Sprite;
        public var move1_cont:Sprite;
        public var move2_cont:Sprite;

        public function Shuffle_411()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function addTweens(param1:Function, param2:DuelMap, param3:String, param4:Function)
        {
            this.param1(this.moveHere, param2);
            this.param1(this.moveOut);
            this.param1(this.moveDownAndUp);
            this.param1(this.moveIn);
            this.param1(this.resetDeck);
            this.param1(this.moveOut);
            this.param1(this.moveDownAndUp);
            this.param1(this.moveIn);
            this.param1(this.resetDeck);
            this.param1(this.moveOut);
            this.param1(this.moveDownAndUp);
            this.param1(this.moveIn);
            this.param1(this.resetDeck);
            this.param1(this.moveBack1, null, false);
            this.param1(param4);
            this.param1(this.moveBack2, [param2, param3]);
            return;
        }// end function

        public function moveHere(param1:DuelMap) : Array
        {
            var _loc_4:Number = NaN;
            var _loc_5:Number = NaN;
            var _loc_6:Number = NaN;
            var _loc_7:DuelCard = null;
            var _loc_8:Matrix = null;
            this.cards = param1.toArray().reverse();
            var _loc_2:* = new Array();
            this.oldvals1 = new Array();
            this.oldvals2 = new Array();
            if (parent.name == "shuffle1_mc")
            {
                _loc_4 = 180;
                _loc_5 = 0;
                _loc_6 = -180;
            }
            else
            {
                _loc_4 = -180;
                _loc_5 = 0;
                _loc_6 = -180;
            }
            this.deck_cont = new Sprite();
            addChild(this.deck_cont);
            var _loc_3:* = 0;
            while (_loc_3 < this.cards.length)
            {
                
                _loc_7 = this.cards[_loc_3];
                this.oldvals1.push(_loc_7.x);
                this.oldvals1.push(_loc_7.y);
                this.oldvals1.push(_loc_7.rotation);
                if (_loc_3 == 0)
                {
                    this.orig_parent = _loc_7.parent;
                    _loc_8 = _loc_7.transform.matrix;
                    _loc_7.scaleX = _loc_7.scale;
                    _loc_7.rotationY = _loc_7.cardRotationY;
                    _loc_7.rotationZ = _loc_7.cardRotationZ;
                    this.deck_cont.transform.matrix3D = _loc_7.transform.getRelativeMatrix3D(this);
                    _loc_7.transform.matrix3D = null;
                    _loc_7.transform.matrix = _loc_8;
                    this.oldvals2.push(this.deck_cont.x);
                    _loc_2.push(new Tween(this.deck_cont, "x", Regular.easeInOut, this.deck_cont.x, 200, this.FLY_TIME, true));
                    this.oldvals2.push(this.deck_cont.y);
                    _loc_2.push(new Tween(this.deck_cont, "y", Regular.easeInOut, this.deck_cont.y, 290, this.FLY_TIME, true));
                    this.oldvals2.push(this.deck_cont.z);
                    _loc_2.push(new Tween(this.deck_cont, "z", Regular.easeInOut, this.deck_cont.z, 0, this.FLY_TIME, true));
                    this.oldvals2.push(this.deck_cont.rotationX);
                    _loc_2.push(new Tween(this.deck_cont, "rotationX", Regular.easeInOut, this.deck_cont.rotationX, _loc_4, this.FLY_TIME, true));
                    this.oldvals2.push(this.deck_cont.rotationY);
                    _loc_2.push(new Tween(this.deck_cont, "rotationY", Regular.easeInOut, this.deck_cont.rotationY, _loc_5, this.FLY_TIME, true));
                    this.oldvals2.push(this.deck_cont.rotationZ);
                    _loc_2.push(new Tween(this.deck_cont, "rotationZ", Regular.easeInOut, this.deck_cont.rotationZ, _loc_6, this.FLY_TIME, true));
                    this.oldvals2.push(this.deck_cont.scaleX);
                    _loc_2.push(new Tween(this.deck_cont, "scaleX", Regular.easeInOut, this.deck_cont.scaleX, 1, this.FLY_TIME, true));
                    this.oldvals2.push(this.deck_cont.scaleY);
                    _loc_2.push(new Tween(this.deck_cont, "scaleY", Regular.easeInOut, this.deck_cont.scaleY, 1, this.FLY_TIME, true));
                    this.deck_cont.scaleZ = 0.3;
                    this.oldvals2.push(this.deck_cont.scaleZ);
                    _loc_2.push(new Tween(this.deck_cont, "scaleZ", Regular.easeInOut, this.deck_cont.scaleZ, 1, this.FLY_TIME, true));
                }
                _loc_7.x = 0;
                _loc_7.y = 0;
                _loc_7.z = _loc_3;
                _loc_7.rotationY = 180;
                _loc_7.rotationZ = 180;
                _loc_7.scaleX = 1;
                _loc_7.scaleY = 1;
                this.deck_cont.addChild(_loc_7);
                _loc_3 = _loc_3 + 1;
            }
            return _loc_2;
        }// end function

        public function moveOut(param1) : Array
        {
            var _loc_7:DuelCard = null;
            if (this.cards.length == 1)
            {
                return [];
            }
            this.move1_cont = new Sprite();
            this.move1_cont.transform.matrix3D = this.deck_cont.transform.matrix3D.clone();
            addChild(this.move1_cont);
            this.move2_cont = new Sprite();
            this.move2_cont.transform.matrix3D = this.deck_cont.transform.matrix3D.clone();
            addChild(this.move2_cont);
            var _loc_2:* = this.cards.length + 3 >> 2;
            var _loc_3:* = this.cards.length - _loc_2 - (this.cards.length >> 3);
            if (_loc_3 > 0)
            {
                _loc_3 = Math.floor(Math.random() * (_loc_3 + 1));
            }
            var _loc_4:* = _loc_3 + _loc_2;
            var _loc_5:* = _loc_3;
            while (_loc_5 < _loc_4)
            {
                
                _loc_7 = this.cards[_loc_5];
                this.move1_cont.addChild(_loc_7);
                _loc_5++;
            }
            while (_loc_5 < this.cards.length)
            {
                
                _loc_7 = this.cards[_loc_5];
                this.move2_cont.addChild(_loc_7);
                _loc_5++;
            }
            var _loc_6:* = new ShuffleSound();
            new ShuffleSound().play();
            return [new Tween(this.move1_cont, "y", Regular.easeInOut, this.move1_cont.y, 920, this.TWEEN_TIME, true)];
        }// end function

        public function moveDownAndUp(param1) : Array
        {
            if (this.cards.length == 1)
            {
                return [];
            }
            addChild(this.move1_cont);
            return [new Tween(this.move1_cont, "z", Regular.easeInOut, 0, -this.move2_cont.numChildren, this.TWEEN_TIME, true), new Tween(this.move2_cont, "z", Regular.easeInOut, 0, this.move1_cont.numChildren, this.TWEEN_TIME, true)];
        }// end function

        public function moveIn(param1) : Array
        {
            if (this.cards.length == 1)
            {
                return [];
            }
            return [new Tween(this.move1_cont, "y", Regular.easeInOut, this.move1_cont.y, 290, this.TWEEN_TIME, true)];
        }// end function

        public function resetDeck(param1) : Array
        {
            var _loc_2:int = 0;
            while (_loc_2 < this.cards.length)
            {
                
                this.deck_cont.addChild(this.cards[_loc_2]);
                _loc_2++;
            }
            removeChild(this.move1_cont);
            this.move1_cont = null;
            removeChild(this.move2_cont);
            this.move2_cont = null;
            return [];
        }// end function

        public function moveBack1(param1) : Array
        {
            var _loc_2:* = new Array(this.oldvals2.length);
            var _loc_3:* = 0;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "x", Regular.easeInOut, this.deck_cont.x, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "y", Regular.easeInOut, this.deck_cont.y, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "z", Regular.easeInOut, this.deck_cont.z, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "rotationX", Regular.easeInOut, this.deck_cont.rotationX, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "rotationY", Regular.easeInOut, this.deck_cont.rotationY, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "rotationZ", Regular.easeInOut, this.deck_cont.rotationZ, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "scaleX", Regular.easeInOut, this.deck_cont.scaleX, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "scaleY", Regular.easeInOut, this.deck_cont.scaleY, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            _loc_2[_loc_3] = new Tween(this.deck_cont, "scaleZ", Regular.easeInOut, this.deck_cont.scaleZ, this.oldvals2[_loc_3], this.FLY_TIME, true);
            _loc_3 = _loc_3 + 1;
            this.oldvals2 = null;
            return _loc_2;
        }// end function

        public function moveBack2(param1:Array) : Array
        {
            var _loc_2:* = undefined;
            var _loc_6:DuelCard = null;
            _loc_2 = 0;
            var _loc_3:* = 0;
            while (_loc_3 < this.cards.length)
            {
                
                _loc_6 = this.cards[_loc_3];
                this.orig_parent.addChild(_loc_6);
                _loc_6.transform.matrix3D = null;
                _loc_6.width = 400;
                _loc_6.height = 580;
                _loc_6.x = this.oldvals1[_loc_2];
                _loc_2 = _loc_2 + 1;
                _loc_6.y = this.oldvals1[_loc_2];
                _loc_2 = _loc_2 + 1;
                _loc_6.scaleX = -_loc_6.scale;
                _loc_6.scaleY = _loc_6.scale;
                _loc_6.rotation = this.oldvals1[_loc_2];
                _loc_2 = _loc_2 + 1;
                _loc_3 = _loc_3 + 1;
            }
            removeChild(this.deck_cont);
            this.deck_cont = null;
            this.orig_parent = null;
            this.oldvals1 = null;
            var _loc_4:* = param1[0];
            var _loc_5:* = param1[1];
            _loc_4.remap(this.cards.reverse(), _loc_5);
            this.cards = null;
            return [];
        }// end function

        function frame1()
        {
            this.FLY_TIME = 0.5;
            this.TWEEN_TIME = 0.05;
            return;
        }// end function

    }
}
