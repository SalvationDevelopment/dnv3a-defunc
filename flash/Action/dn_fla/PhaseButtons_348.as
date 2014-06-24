package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
    import flash.utils.*;

    dynamic public class PhaseButtons_348 extends MovieClip
    {
        public var ep_glow_mc:MovieClip;
        public var ep_btn:SimpleButton;
        public var m1_glow_mc:MovieClip;
        public var dp_glow_mc:MovieClip;
        public var flashing_mc:MovieClip;
        public var m2_glow_mc:MovieClip;
        public var m1_btn:SimpleButton;
        public var nt_btn:SimpleButton;
        public var m2_btn:SimpleButton;
        public var sp_glow_mc:MovieClip;
        public var turn_blue_mc:MovieClip;
        public var bp_glow_mc:MovieClip;
        public var et_glow_mc:MovieClip;
        public var et_btn:SimpleButton;
        public var bp_btn:SimpleButton;
        public var turn_red_mc:MovieClip;
        public var sp_btn:SimpleButton;
        public var dp_btn:SimpleButton;
        public var buttons:Array;
        public var names:Array;
        public var glows:Array;
        public var button_to_name:Object;
        public var name_to_index:Object;
        public var callback:Function;
        public var duelist:Boolean;
        public var clicked_bp:Boolean;
        public var end_turn_timer:Timer;
        public var not_first_turn:Boolean;

        public function PhaseButtons_348()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function init(param1:Function, param2:Boolean)
        {
            this.callback = param1;
            this.duelist = param2;
            this.buttons = [this.dp_btn, this.sp_btn, this.m1_btn, this.bp_btn, this.m2_btn, this.ep_btn];
            this.names = ["dp", "sp", "m1", "bp", "m2", "ep"];
            this.glows = [this.dp_glow_mc, this.sp_glow_mc, this.m1_glow_mc, this.bp_glow_mc, this.m2_glow_mc, this.ep_glow_mc, this.et_glow_mc];
            this.button_to_name = new Object();
            this.name_to_index = new Object();
            var _loc_3:* = 0;
            while (_loc_3 < this.buttons.length)
            {
                
                this.button_to_name[this.buttons[_loc_3].name] = this.names[_loc_3];
                this.name_to_index[this.names[_loc_3]] = _loc_3;
                _loc_3 = _loc_3 + 1;
            }
            this.button_to_name["et_btn"] = "et";
            this.button_to_name["nt_btn"] = "dp";
            _loc_3 = 0;
            while (_loc_3 < this.buttons.length)
            {
                
                this.buttons[_loc_3].enabled = false;
                _loc_3 = _loc_3 + 1;
            }
            this.et_btn.visible = false;
            this.nt_btn.visible = false;
            this.turn_blue_mc.visible = false;
            this.turn_red_mc.visible = false;
            _loc_3 = 0;
            while (_loc_3 < this.glows.length)
            {
                
                this.glows[_loc_3].visible = false;
                _loc_3 = _loc_3 + 1;
            }
            if (param2)
            {
                _loc_3 = 1;
                while (_loc_3 < this.buttons.length)
                {
                    
                    this.buttons[_loc_3].addEventListener(MouseEvent.CLICK, this.buttonClickE);
                    _loc_3 = _loc_3 + 1;
                }
            }
            this.et_btn.addEventListener(MouseEvent.CLICK, this.buttonClickE);
            this.nt_btn.addEventListener(MouseEvent.CLICK, this.buttonClickE);
            if (param2)
            {
                this.end_turn_timer = new Timer(1000, 1);
                this.end_turn_timer.addEventListener(TimerEvent.TIMER, this.endTurnTickE);
            }
            this.flashing_mc.visible = false;
            this.flashing_mc.gotoAndStop(0);
            return;
        }// end function

        public function endTurnTickE(event:TimerEvent)
        {
            this.end_turn_timer.reset();
            this.et_btn.visible = true;
            return;
        }// end function

        public function buttonClickE(event:MouseEvent)
        {
            var _loc_2:* = SimpleButton(event.currentTarget);
            if (!_loc_2.enabled)
            {
                return;
            }
            this.clicked_bp = _loc_2 == this.bp_btn;
            this.callback(this.button_to_name[_loc_2.name]);
            return;
        }// end function

        public function setPhase(param1:String, param2:Boolean)
        {
            var _loc_3:* = undefined;
            var _loc_4:Sound = null;
            var _loc_5:int = 0;
            if (param1 == "et")
            {
                this.not_first_turn = true;
                _loc_3 = 0;
                while (_loc_3 < this.buttons.length)
                {
                    
                    this.buttons[_loc_3].enabled = false;
                    this.glows[_loc_3].visible = false;
                    _loc_3 = _loc_3 + 1;
                }
                if (this.duelist)
                {
                    if (param2)
                    {
                        this.et_btn.visible = true;
                        this.et_btn.enabled = false;
                        this.et_glow_mc.visible = true;
                        addChild(this.et_glow_mc);
                        this.nt_btn.visible = false;
                    }
                    else
                    {
                        this.et_btn.visible = false;
                        this.et_glow_mc.visible = false;
                        this.nt_btn.visible = true;
                        this.nt_btn.enabled = true;
                        this.flashing_mc.visible = true;
                        this.flashing_mc.play();
                    }
                }
                else
                {
                    this.turn_red_mc.visible = param2;
                    this.turn_blue_mc.visible = !param2;
                }
                _loc_4 = new TurnChime();
                _loc_4.play();
            }
            else
            {
                _loc_5 = this.name_to_index[param1];
                this.buttons[_loc_5].enabled = false;
                this.glows[_loc_5].visible = true;
                addChild(this.glows[_loc_5]);
                _loc_3 = 0;
                while (_loc_3 < _loc_5)
                {
                    
                    this.buttons[_loc_3].enabled = false;
                    this.glows[_loc_3].visible = false;
                    _loc_3 = _loc_3 + 1;
                }
                _loc_3 = _loc_5 + 1;
                while (_loc_3 < this.buttons.length)
                {
                    
                    this.buttons[_loc_3].enabled = param2 && this.duelist && (this.not_first_turn || _loc_3 != 3);
                    this.glows[_loc_3].visible = false;
                    _loc_3 = _loc_3 + 1;
                }
                if (this.duelist)
                {
                    if (param2)
                    {
                        if (param1 == "dp")
                        {
                            this.end_turn_timer.start();
                        }
                        else
                        {
                            this.et_btn.visible = true;
                            this.end_turn_timer.reset();
                        }
                        this.et_btn.enabled = true;
                    }
                    else
                    {
                        this.et_btn.visible = false;
                    }
                    this.et_glow_mc.visible = false;
                    this.nt_btn.visible = false;
                    this.flashing_mc.visible = false;
                    this.flashing_mc.gotoAndStop(0);
                }
                else
                {
                    this.turn_red_mc.visible = param2;
                    this.turn_blue_mc.visible = !param2;
                }
            }
            return;
        }// end function

        public function isBP() : Boolean
        {
            return this.clicked_bp || this.bp_glow_mc.visible;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
