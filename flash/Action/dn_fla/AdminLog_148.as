package dn_fla
{
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class AdminLog_148 extends MovieClip
    {
        public var game_cb:CheckBox;
        public var refresh_btn:SimpleButton;
        public var duel_cb:CheckBox;
        public var chat_cb:CheckBox;
        public var log_txt:TextArea;
        public var Send:Function;
        public var scroll_pos:int;
        public var args:Array;
        public var red_name:String;
        public var blue_name:String;

        public function AdminLog_148()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_log_txt_AdminLog_Layer1_0();
            this.__setProp_chat_cb_AdminLog_Layer1_0();
            this.__setProp_duel_cb_AdminLog_Layer1_0();
            this.__setProp_game_cb_AdminLog_Layer1_0();
            return;
        }// end function

        public function init(param1:Function)
        {
            this.Send = param1;
            return;
        }// end function

        public function saveScrollPosE(event:Event)
        {
            this.scroll_pos = this.log_txt.verticalScrollPosition;
            return;
        }// end function

        public function restoreScrollPosE(event:FocusEvent)
        {
            if (this.scroll_pos >= 0)
            {
                this.log_txt.verticalScrollPosition = this.scroll_pos;
            }
            return;
        }// end function

        public function showLog(param1:Array, param2:String, param3:String, param4:Boolean = false)
        {
            var _loc_5:int = 0;
            this.args = param1;
            this.red_name = param2;
            this.blue_name = param3;
            if (param4)
            {
                _loc_5 = this.log_txt.verticalScrollPosition;
            }
            this.buildLog();
            if (param4)
            {
                this.log_txt.verticalScrollPosition = _loc_5;
            }
            return;
        }// end function

        public function buildLog(event:Event = null)
        {
            var _loc_4:String = null;
            var _loc_5:Number = NaN;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:String = null;
            var _loc_9:String = null;
            var _loc_10:String = null;
            var _loc_11:String = null;
            var _loc_12:Boolean = false;
            var _loc_13:Number = NaN;
            var _loc_14:int = 0;
            var _loc_15:String = null;
            var _loc_16:String = null;
            if (this.args == null)
            {
                return;
            }
            var _loc_2:String = "";
            var _loc_3:int = 0;
            while (_loc_3 < this.args.length)
            {
                
                _loc_4 = this.args[_loc_3];
                _loc_5 = Number(_loc_4);
                if (_loc_3 == 0)
                {
                    _loc_13 = _loc_5;
                    _loc_14 = 0;
                }
                else
                {
                    _loc_14 = int((_loc_5 - _loc_13) / 1000);
                }
                _loc_6 = _loc_14 / 60;
                _loc_7 = _loc_14 % 60;
                _loc_8 = _loc_6 + ":" + (_loc_7 < 10 ? ("0") : ("")) + _loc_7;
                _loc_3++;
                _loc_9 = this.args[_loc_3];
                _loc_3++;
                _loc_10 = this.args[_loc_3];
                if (_loc_10 == this.red_name)
                {
                    _loc_15 = "<font color=\"#FF0000\">";
                    _loc_16 = "";
                }
                else if (_loc_10 == this.blue_name)
                {
                    _loc_15 = "<font color=\"#0000FF\">";
                    _loc_16 = "";
                }
                else
                {
                    _loc_15 = "<font color=\"#000000\">";
                    _loc_16 = StringUtils.escapeHtml(_loc_10) + ": ";
                }
                _loc_3++;
                _loc_11 = StringUtils.escapeHtml(this.args[_loc_3]);
                _loc_12 = false;
                switch(_loc_9)
                {
                    case "Chat":
                    {
                        if (!this.chat_cb.selected)
                        {
                            _loc_12 = true;
                            break;
                        }
                        _loc_11 = "<i>\"" + _loc_11 + "\"</i>";
                        break;
                    }
                    case "Duel":
                    {
                        if (!this.duel_cb.selected)
                        {
                            _loc_12 = true;
                            break;
                        }
                        break;
                    }
                    case "Game":
                    {
                        if (!this.game_cb.selected)
                        {
                            _loc_12 = true;
                            break;
                        }
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_3++;
                if (_loc_12)
                {
                    continue;
                }
                _loc_2 = _loc_2 + ((_loc_2 == "" ? ("") : ("<br />")) + _loc_15 + "[" + _loc_8 + "] " + _loc_16 + _loc_11 + "</font>");
            }
            this.log_txt.htmlText = _loc_2;
            this.refresh_btn.visible = true;
            return;
        }// end function

        public function refreshLog(event:MouseEvent)
        {
            this.Send(["Get duel log"]);
            return;
        }// end function

        function __setProp_log_txt_AdminLog_Layer1_0()
        {
            try
            {
                this.log_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.log_txt.condenseWhite = false;
            this.log_txt.editable = false;
            this.log_txt.enabled = true;
            this.log_txt.horizontalScrollPolicy = "auto";
            this.log_txt.htmlText = "";
            this.log_txt.maxChars = 0;
            this.log_txt.restrict = "";
            this.log_txt.text = "";
            this.log_txt.verticalScrollPolicy = "auto";
            this.log_txt.visible = true;
            this.log_txt.wordWrap = true;
            try
            {
                this.log_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_chat_cb_AdminLog_Layer1_0()
        {
            try
            {
                this.chat_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.chat_cb.enabled = true;
            this.chat_cb.label = "Chat";
            this.chat_cb.labelPlacement = "right";
            this.chat_cb.selected = true;
            this.chat_cb.visible = true;
            try
            {
                this.chat_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_duel_cb_AdminLog_Layer1_0()
        {
            try
            {
                this.duel_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.duel_cb.enabled = true;
            this.duel_cb.label = "Duel";
            this.duel_cb.labelPlacement = "right";
            this.duel_cb.selected = true;
            this.duel_cb.visible = true;
            try
            {
                this.duel_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_game_cb_AdminLog_Layer1_0()
        {
            try
            {
                this.game_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.game_cb.enabled = true;
            this.game_cb.label = "Game";
            this.game_cb.labelPlacement = "right";
            this.game_cb.selected = true;
            this.game_cb.visible = true;
            try
            {
                this.game_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.log_txt.addEventListener(Event.ENTER_FRAME, this.saveScrollPosE);
            this.scroll_pos = -1;
            this.log_txt.addEventListener(FocusEvent.FOCUS_OUT, this.restoreScrollPosE);
            this.refresh_btn.addEventListener(MouseEvent.CLICK, this.refreshLog);
            this.refresh_btn.visible = false;
            this.chat_cb.addEventListener(Event.CHANGE, this.buildLog);
            this.duel_cb.addEventListener(Event.CHANGE, this.buildLog);
            this.game_cb.addEventListener(Event.CHANGE, this.buildLog);
            return;
        }// end function

    }
}
