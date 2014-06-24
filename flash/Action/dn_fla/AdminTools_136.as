package dn_fla
{
    import fl.controls.*;
    import fl.data.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class AdminTools_136 extends MovieClip
    {
        public var status_lbl:Label;
        public var strikes_lbl:Label;
        public var reason_lbl:Label;
        public var days_rb:RadioButton;
        public var __id3_:Label;
        public var forever_rb:RadioButton;
        public var action_cb:ComboBox;
        public var reason_txt:TextInput;
        public var perform_btn:Button;
        public var strike_cb:CheckBox;
        public var days_txt:TextInput;
        public var username_txt:TextInput;
        public var result_txt:TextArea;
        public var RESULT_BOTTOM:Number;
        public var username:String;
        public var admin:int;
        public var Send:Function;
        public var lock:Function;
        public var unlock:Function;
        public var displayError:Function;
        public var awaiting_response:Boolean;
        public var bantime_rbg:RadioButtonGroup;

        public function AdminTools_136()
        {
            addFrameScript(0, this.frame1);
            this.__setProp___id3__AdminTools_Layer1_0();
            this.__setProp_username_txt_AdminTools_Layer1_0();
            this.__setProp_action_cb_AdminTools_Layer1_0();
            this.__setProp_days_rb_AdminTools_Layer1_0();
            this.__setProp_forever_rb_AdminTools_Layer1_0();
            this.__setProp_days_txt_AdminTools_Layer1_0();
            this.__setProp_reason_lbl_AdminTools_Layer1_0();
            this.__setProp_reason_txt_AdminTools_Layer1_0();
            this.__setProp_strike_cb_AdminTools_Layer1_0();
            this.__setProp_perform_btn_AdminTools_Layer1_0();
            this.__setProp_status_lbl_AdminTools_Layer1_0();
            this.__setProp_strikes_lbl_AdminTools_Layer1_0();
            this.__setProp_result_txt_AdminTools_Layer1_0();
            return;
        }// end function

        public function init(param1:String, param2:int, param3:Function, param4:Function, param5:Function, param6:Function)
        {
            this.username = param1;
            this.admin = param2;
            this.Send = param3;
            this.lock = param4;
            this.unlock = param5;
            this.displayError = param6;
            if (param2 >= 2)
            {
                this.action_cb.dataProvider.addItem({label:"IP Check", data:"IP check"});
                this.action_cb.dataProvider.addItem({label:"Computer Check", data:"Computer check"});
            }
            if (param2 >= 3)
            {
                this.action_cb.dataProvider.addItem({label:"Admin Status", data:"Get admin"});
            }
            return;
        }// end function

        public function updateAction(event:Event = null)
        {
            var _loc_3:Number = NaN;
            var _loc_2:* = this.action_cb.selectedItem.data;
            switch(_loc_2)
            {
                case "Ban status":
                {
                    this.days_rb.visible = false;
                    this.days_txt.visible = false;
                    this.forever_rb.visible = false;
                    this.reason_lbl.visible = false;
                    this.reason_txt.visible = false;
                    this.strike_cb.visible = false;
                    this.perform_btn.label = "Get Ban Status";
                    this.perform_btn.y = 72;
                    this.status_lbl.visible = true;
                    this.status_lbl.htmlText = "<b>Status:</b>";
                    this.strikes_lbl.visible = true;
                    this.strikes_lbl.htmlText = "<b>Strikes:</b>";
                    _loc_3 = 135;
                    break;
                }
                case "Ban user":
                {
                    this.days_rb.visible = true;
                    this.days_txt.visible = true;
                    this.forever_rb.visible = true;
                    this.days_rb.selected = true;
                    this.days_txt.enabled = true;
                    this.days_txt.text = "";
                    this.days_txt.setFocus();
                    this.reason_lbl.visible = true;
                    this.reason_lbl.text = "Reason:";
                    this.reason_lbl.y = 122;
                    this.reason_txt.visible = true;
                    this.reason_txt.text = "";
                    this.reason_txt.y = 141;
                    this.strike_cb.visible = true;
                    this.strike_cb.label = "Increment Strike Count";
                    this.strike_cb.selected = true;
                    this.strike_cb.y = 166;
                    this.perform_btn.label = "Ban User";
                    this.perform_btn.y = 191;
                    this.status_lbl.visible = false;
                    this.strikes_lbl.visible = false;
                    _loc_3 = 216;
                    break;
                }
                case "Unban user":
                {
                    this.days_rb.visible = false;
                    this.days_txt.visible = false;
                    this.forever_rb.visible = false;
                    this.reason_lbl.visible = false;
                    this.reason_txt.visible = false;
                    this.strike_cb.visible = true;
                    this.strike_cb.label = "Decrement Strike Count";
                    this.strike_cb.selected = true;
                    this.strike_cb.y = 72;
                    this.perform_btn.label = "Unban User";
                    this.perform_btn.y = 97;
                    this.status_lbl.visible = false;
                    this.strikes_lbl.visible = false;
                    _loc_3 = 122;
                    break;
                }
                case "Kick user":
                {
                    this.days_rb.visible = false;
                    this.days_txt.visible = false;
                    this.forever_rb.visible = false;
                    this.reason_lbl.visible = false;
                    this.reason_txt.visible = false;
                    this.strike_cb.visible = false;
                    this.perform_btn.label = "Kick User";
                    this.perform_btn.y = 72;
                    this.status_lbl.visible = false;
                    this.strikes_lbl.visible = false;
                    _loc_3 = 97;
                    break;
                }
                case "Add warning":
                {
                    this.days_rb.visible = false;
                    this.days_txt.visible = false;
                    this.forever_rb.visible = false;
                    this.reason_lbl.visible = true;
                    this.reason_lbl.text = "Warning:";
                    this.reason_lbl.y = 72;
                    this.reason_txt.visible = true;
                    this.reason_txt.text = "";
                    this.reason_txt.y = 91;
                    this.reason_txt.setFocus();
                    this.strike_cb.visible = true;
                    this.strike_cb.label = "Increment Strike Count";
                    this.strike_cb.selected = false;
                    this.strike_cb.y = 116;
                    this.perform_btn.label = "Add Warning";
                    this.perform_btn.y = 141;
                    this.status_lbl.visible = false;
                    this.strikes_lbl.visible = false;
                    _loc_3 = 166;
                    break;
                }
                case "IP check":
                {
                    this.days_rb.visible = false;
                    this.days_txt.visible = false;
                    this.forever_rb.visible = false;
                    this.reason_lbl.visible = false;
                    this.reason_txt.visible = false;
                    this.strike_cb.visible = false;
                    this.perform_btn.label = "Check IP";
                    this.perform_btn.y = 72;
                    this.status_lbl.visible = false;
                    this.strikes_lbl.visible = false;
                    _loc_3 = 97;
                    break;
                }
                case "Computer check":
                {
                    this.days_rb.visible = false;
                    this.days_txt.visible = false;
                    this.forever_rb.visible = false;
                    this.reason_lbl.visible = false;
                    this.reason_txt.visible = false;
                    this.strike_cb.visible = false;
                    this.perform_btn.label = "Check Comp";
                    this.perform_btn.y = 72;
                    this.status_lbl.visible = false;
                    this.strikes_lbl.visible = false;
                    _loc_3 = 97;
                    break;
                }
                case "Get admin":
                {
                    this.days_rb.visible = false;
                    this.days_txt.visible = false;
                    this.forever_rb.visible = false;
                    this.reason_lbl.visible = false;
                    this.reason_txt.visible = false;
                    this.strike_cb.visible = false;
                    this.perform_btn.label = "Get Admin Status";
                    this.perform_btn.y = 72;
                    this.status_lbl.visible = false;
                    this.strikes_lbl.visible = false;
                    _loc_3 = 97;
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.result_txt.y = _loc_3;
            this.result_txt.height = this.RESULT_BOTTOM - _loc_3;
            this.result_txt.text = "";
            return;
        }// end function

        public function performAction(event:MouseEvent = null)
        {
            var _loc_5:String = null;
            var _loc_2:* = this.action_cb.selectedItem.data;
            var _loc_3:* = this.username_txt.text;
            if (_loc_3 == "")
            {
                this.displayError("Username is blank");
                return;
            }
            var _loc_4:Array = [_loc_2, _loc_3];
            switch(_loc_2)
            {
                case "Ban user":
                {
                    if (this.days_rb.selected)
                    {
                        if (this.days_txt.text == "")
                        {
                            this.displayError("Number of days for ban is blank");
                            return;
                        }
                        if (this.days_txt.text == "0")
                        {
                            this.displayError("You must ban a user for at least 1 day");
                            return;
                        }
                        _loc_5 = this.days_txt.text;
                    }
                    else if (this.forever_rb.selected)
                    {
                        _loc_5 = "Forever";
                    }
                    else
                    {
                        this.displayError("Ban time is not selected");
                        return;
                    }
                    _loc_4.push(_loc_5);
                    _loc_4.push(this.strike_cb.selected);
                    _loc_4.push(this.reason_txt.text);
                    break;
                }
                case "Unban user":
                {
                    _loc_4.push(this.strike_cb.selected);
                    break;
                }
                case "Add warning":
                {
                    _loc_4.push(this.strike_cb.selected);
                    _loc_4.push(this.reason_txt.text);
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.Send(_loc_4);
            this.result_txt.text = "";
            this.awaiting_response = true;
            this.lock();
            return;
        }// end function

        public function showResults(param1:Array)
        {
            this.awaiting_response = false;
            this.unlock();
            switch(param1[0])
            {
                case "Ban status":
                {
                    this.status_lbl.htmlText = "<b>Status:</b> " + StringUtils.escapeHtml(param1[1]);
                    this.strikes_lbl.htmlText = "<b>Strikes:</b> " + StringUtils.escapeHtml(param1[2]);
                    this.result_txt.htmlText = StringUtils.escapeHtmlWithLinks(param1[3]);
                    break;
                }
                case "Ban user":
                {
                    this.result_txt.text = this.username_txt.text + " has been banned";
                    break;
                }
                case "Unban user":
                {
                    this.result_txt.text = this.username_txt.text + " has been unbanned";
                    break;
                }
                case "Kick user":
                {
                    this.result_txt.text = this.username_txt.text + " has been kicked";
                    break;
                }
                case "Add warning":
                {
                    this.result_txt.text = "Warning note has been added to " + this.username_txt.text + "\'s record";
                    break;
                }
                case "IP check":
                {
                    this.result_txt.text = param1[1];
                    break;
                }
                case "Computer check":
                {
                    this.result_txt.text = param1[1];
                    break;
                }
                case "Get admin":
                {
                    switch(param1[1])
                    {
                        case "0":
                        {
                            this.result_txt.text = "User";
                            break;
                        }
                        case "1":
                        {
                            this.result_txt.text = "Administrator";
                            break;
                        }
                        case "2":
                        {
                            this.result_txt.text = "Senior Administrator";
                            break;
                        }
                        case "3":
                        {
                            this.result_txt.text = "Head Administrator";
                            break;
                        }
                        case "4":
                        {
                            this.result_txt.text = "Owner";
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function banTimeChangeE(event:Event)
        {
            this.days_txt.enabled = this.days_rb.selected;
            return;
        }// end function

        public function daysSwitchE(event:MouseEvent)
        {
            this.days_rb.selected = true;
            this.days_txt.enabled = true;
            this.days_txt.setFocus();
            return;
        }// end function

        public function usernameEnter(event:KeyboardEvent)
        {
            if (event.keyCode != 13)
            {
                return;
            }
            switch(this.action_cb.selectedItem.data)
            {
                case "Ban status":
                case "IP check":
                case "Computer check":
                case "Get admin":
                {
                    this.performAction();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        function __setProp___id3__AdminTools_Layer1_0()
        {
            try
            {
                this.__id3_["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.__id3_.autoSize = "none";
            this.__id3_.condenseWhite = false;
            this.__id3_.enabled = true;
            this.__id3_.htmlText = "";
            this.__id3_.selectable = false;
            this.__id3_.text = "Username:";
            this.__id3_.visible = true;
            this.__id3_.wordWrap = false;
            try
            {
                this.__id3_["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_username_txt_AdminTools_Layer1_0()
        {
            try
            {
                this.username_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.username_txt.displayAsPassword = false;
            this.username_txt.editable = true;
            this.username_txt.enabled = true;
            this.username_txt.maxChars = 20;
            this.username_txt.restrict = " -{}-~";
            this.username_txt.text = "";
            this.username_txt.visible = true;
            try
            {
                this.username_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_action_cb_AdminTools_Layer1_0()
        {
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            try
            {
                this.action_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            var _loc_1:* = new DataProvider();
            _loc_3 = [{label:"Ban Status", data:"Ban status"}, {label:"Warning Note", data:"Add warning"}, {label:"Ban User", data:"Ban user"}, {label:"Unban User", data:"Unban user"}, {label:"Kick User", data:"Kick user"}];
            _loc_5 = 0;
            while (_loc_5 < _loc_3.length)
            {
                
                _loc_2 = new SimpleCollectionItem();
                _loc_4 = _loc_3[_loc_5];
                for (_loc_6 in _loc_4)
                {
                    
                    _loc_2[_loc_6] = _loc_4[_loc_6];
                }
                _loc_1.addItem(_loc_2);
                _loc_5++;
            }
            this.action_cb.dataProvider = _loc_1;
            this.action_cb.editable = false;
            this.action_cb.enabled = true;
            this.action_cb.prompt = "";
            this.action_cb.restrict = "";
            this.action_cb.rowCount = 10;
            this.action_cb.visible = true;
            try
            {
                this.action_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_days_rb_AdminTools_Layer1_0()
        {
            try
            {
                this.days_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.days_rb.enabled = true;
            this.days_rb.groupName = "BanTime";
            this.days_rb.label = "                 Days";
            this.days_rb.labelPlacement = "right";
            this.days_rb.selected = true;
            this.days_rb.value = "";
            this.days_rb.visible = true;
            try
            {
                this.days_rb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_forever_rb_AdminTools_Layer1_0()
        {
            try
            {
                this.forever_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.forever_rb.enabled = true;
            this.forever_rb.groupName = "BanTime";
            this.forever_rb.label = "Forever";
            this.forever_rb.labelPlacement = "right";
            this.forever_rb.selected = false;
            this.forever_rb.value = "";
            this.forever_rb.visible = true;
            try
            {
                this.forever_rb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_days_txt_AdminTools_Layer1_0()
        {
            try
            {
                this.days_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.days_txt.displayAsPassword = false;
            this.days_txt.editable = true;
            this.days_txt.enabled = true;
            this.days_txt.maxChars = 5;
            this.days_txt.restrict = "0-9";
            this.days_txt.text = "";
            this.days_txt.visible = true;
            try
            {
                this.days_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_reason_lbl_AdminTools_Layer1_0()
        {
            try
            {
                this.reason_lbl["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.reason_lbl.autoSize = "none";
            this.reason_lbl.condenseWhite = false;
            this.reason_lbl.enabled = true;
            this.reason_lbl.htmlText = "";
            this.reason_lbl.selectable = false;
            this.reason_lbl.text = "Reason:";
            this.reason_lbl.visible = true;
            this.reason_lbl.wordWrap = false;
            try
            {
                this.reason_lbl["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_reason_txt_AdminTools_Layer1_0()
        {
            try
            {
                this.reason_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.reason_txt.displayAsPassword = false;
            this.reason_txt.editable = true;
            this.reason_txt.enabled = true;
            this.reason_txt.maxChars = 100;
            this.reason_txt.restrict = " -~";
            this.reason_txt.text = "";
            this.reason_txt.visible = true;
            try
            {
                this.reason_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_strike_cb_AdminTools_Layer1_0()
        {
            try
            {
                this.strike_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.strike_cb.enabled = true;
            this.strike_cb.label = "Increment Strike Count";
            this.strike_cb.labelPlacement = "right";
            this.strike_cb.selected = false;
            this.strike_cb.visible = true;
            try
            {
                this.strike_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_perform_btn_AdminTools_Layer1_0()
        {
            try
            {
                this.perform_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.perform_btn.emphasized = false;
            this.perform_btn.enabled = true;
            this.perform_btn.label = "Get Ban Status";
            this.perform_btn.labelPlacement = "right";
            this.perform_btn.selected = false;
            this.perform_btn.toggle = false;
            this.perform_btn.visible = true;
            try
            {
                this.perform_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_status_lbl_AdminTools_Layer1_0()
        {
            try
            {
                this.status_lbl["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.status_lbl.autoSize = "none";
            this.status_lbl.condenseWhite = false;
            this.status_lbl.enabled = true;
            this.status_lbl.htmlText = "";
            this.status_lbl.selectable = false;
            this.status_lbl.text = "Ban Status";
            this.status_lbl.visible = true;
            this.status_lbl.wordWrap = false;
            try
            {
                this.status_lbl["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_strikes_lbl_AdminTools_Layer1_0()
        {
            try
            {
                this.strikes_lbl["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.strikes_lbl.autoSize = "none";
            this.strikes_lbl.condenseWhite = false;
            this.strikes_lbl.enabled = true;
            this.strikes_lbl.htmlText = "";
            this.strikes_lbl.selectable = false;
            this.strikes_lbl.text = "Strikes";
            this.strikes_lbl.visible = true;
            this.strikes_lbl.wordWrap = false;
            try
            {
                this.strikes_lbl["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_result_txt_AdminTools_Layer1_0()
        {
            try
            {
                this.result_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.result_txt.condenseWhite = false;
            this.result_txt.editable = false;
            this.result_txt.enabled = true;
            this.result_txt.horizontalScrollPolicy = "auto";
            this.result_txt.htmlText = "";
            this.result_txt.maxChars = 0;
            this.result_txt.restrict = "";
            this.result_txt.text = "";
            this.result_txt.verticalScrollPolicy = "auto";
            this.result_txt.visible = true;
            this.result_txt.wordWrap = true;
            try
            {
                this.result_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.RESULT_BOTTOM = this.result_txt.y + this.result_txt.height;
            this.perform_btn.useHandCursor = true;
            this.action_cb.selectedIndex = 0;
            this.action_cb.addEventListener(Event.CHANGE, this.updateAction);
            this.updateAction();
            this.perform_btn.addEventListener(MouseEvent.CLICK, this.performAction);
            this.bantime_rbg = new RadioButtonGroup("BanTime");
            this.days_rb.group = this.bantime_rbg;
            this.forever_rb.group = this.bantime_rbg;
            this.bantime_rbg = null;
            this.days_rb.selected = true;
            this.days_txt.enabled = true;
            this.days_rb.addEventListener(Event.CHANGE, this.banTimeChangeE);
            this.days_txt.addEventListener(MouseEvent.CLICK, this.daysSwitchE);
            this.username_txt.addEventListener(KeyboardEvent.KEY_DOWN, this.usernameEnter);
            return;
        }// end function

    }
}
