package dn_fla
{
    import fl.controls.*;
    import fl.data.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class HostOptions_194 extends MovieClip
    {
        public var uu_rb:RadioButton;
        public var watching_cb:CheckBox;
        public var tu_rb:RadioButton;
        public var au_rb:RadioButton;
        public var duel_note_txt:TextInput;
        public var match_type_cb:ComboBox;
        public var watch_password_txt:TextInput;
        public var duel_password_txt:TextInput;
        public var host_btn:Button;
        public var watch_note_txt:TextInput;
        public var ar_rb:RadioButton;
        public var rbg:Object;

        public function HostOptions_194()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_ar_rb_HostOptions_Layer1_0();
            this.__setProp_au_rb_HostOptions_Layer1_0();
            this.__setProp_tu_rb_HostOptions_Layer1_0();
            this.__setProp_uu_rb_HostOptions_Layer1_0();
            this.__setProp_match_type_cb_HostOptions_Layer1_0();
            this.__setProp_host_btn_HostOptions_Layer1_0();
            this.__setProp_duel_note_txt_HostOptions_Layer1_0();
            this.__setProp_duel_password_txt_HostOptions_Layer1_0();
            this.__setProp_watching_cb_HostOptions_Layer1_0();
            this.__setProp_watch_note_txt_HostOptions_Layer1_0();
            this.__setProp_watch_password_txt_HostOptions_Layer1_0();
            return;
        }// end function

        public function toggleWatchE(event:Event)
        {
            if (this.watching_cb.selected)
            {
                this.watch_note_txt.enabled = true;
                this.watch_password_txt.enabled = true;
            }
            else
            {
                this.watch_note_txt.enabled = false;
                this.watch_note_txt.text = "";
                this.watch_password_txt.enabled = false;
                this.watch_password_txt.text = "";
            }
            return;
        }// end function

        function __setProp_ar_rb_HostOptions_Layer1_0()
        {
            try
            {
                this.ar_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.ar_rb.enabled = true;
            this.ar_rb.groupName = "DuelType";
            this.ar_rb.label = "                                                                                                    ";
            this.ar_rb.labelPlacement = "right";
            this.ar_rb.selected = true;
            this.ar_rb.value = "";
            this.ar_rb.visible = true;
            try
            {
                this.ar_rb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_au_rb_HostOptions_Layer1_0()
        {
            try
            {
                this.au_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.au_rb.enabled = true;
            this.au_rb.groupName = "DuelType";
            this.au_rb.label = "                                                                                                    ";
            this.au_rb.labelPlacement = "right";
            this.au_rb.selected = false;
            this.au_rb.value = "";
            this.au_rb.visible = true;
            try
            {
                this.au_rb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_tu_rb_HostOptions_Layer1_0()
        {
            try
            {
                this.tu_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.tu_rb.enabled = true;
            this.tu_rb.groupName = "DuelType";
            this.tu_rb.label = "                                                                                                    ";
            this.tu_rb.labelPlacement = "right";
            this.tu_rb.selected = false;
            this.tu_rb.value = "";
            this.tu_rb.visible = true;
            try
            {
                this.tu_rb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_uu_rb_HostOptions_Layer1_0()
        {
            try
            {
                this.uu_rb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.uu_rb.enabled = true;
            this.uu_rb.groupName = "DuelType";
            this.uu_rb.label = "                                                                                                    ";
            this.uu_rb.labelPlacement = "right";
            this.uu_rb.selected = false;
            this.uu_rb.value = "";
            this.uu_rb.visible = true;
            try
            {
                this.uu_rb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_match_type_cb_HostOptions_Layer1_0()
        {
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            try
            {
                this.match_type_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            var _loc_1:* = new DataProvider();
            _loc_3 = [{label:"Single (with siding)", data:"s"}, {label:"Single (no siding)", data:"n"}, {label:"2 out of 3 Match", data:"m"}];
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
            this.match_type_cb.dataProvider = _loc_1;
            this.match_type_cb.editable = false;
            this.match_type_cb.enabled = true;
            this.match_type_cb.prompt = "";
            this.match_type_cb.restrict = "";
            this.match_type_cb.rowCount = 5;
            this.match_type_cb.visible = true;
            try
            {
                this.match_type_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_host_btn_HostOptions_Layer1_0()
        {
            try
            {
                this.host_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.host_btn.emphasized = false;
            this.host_btn.enabled = true;
            this.host_btn.label = "Host Duel";
            this.host_btn.labelPlacement = "right";
            this.host_btn.selected = false;
            this.host_btn.toggle = false;
            this.host_btn.visible = true;
            try
            {
                this.host_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_duel_note_txt_HostOptions_Layer1_0()
        {
            try
            {
                this.duel_note_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.duel_note_txt.displayAsPassword = false;
            this.duel_note_txt.editable = true;
            this.duel_note_txt.enabled = true;
            this.duel_note_txt.maxChars = 50;
            this.duel_note_txt.restrict = " -~";
            this.duel_note_txt.text = "";
            this.duel_note_txt.visible = true;
            try
            {
                this.duel_note_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_duel_password_txt_HostOptions_Layer1_0()
        {
            try
            {
                this.duel_password_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.duel_password_txt.displayAsPassword = false;
            this.duel_password_txt.editable = true;
            this.duel_password_txt.enabled = true;
            this.duel_password_txt.maxChars = 0;
            this.duel_password_txt.restrict = " -~";
            this.duel_password_txt.text = "";
            this.duel_password_txt.visible = true;
            try
            {
                this.duel_password_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_watching_cb_HostOptions_Layer1_0()
        {
            try
            {
                this.watching_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.watching_cb.enabled = true;
            this.watching_cb.label = "                                                                                                    ";
            this.watching_cb.labelPlacement = "right";
            this.watching_cb.selected = true;
            this.watching_cb.visible = true;
            try
            {
                this.watching_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_watch_note_txt_HostOptions_Layer1_0()
        {
            try
            {
                this.watch_note_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.watch_note_txt.displayAsPassword = false;
            this.watch_note_txt.editable = true;
            this.watch_note_txt.enabled = true;
            this.watch_note_txt.maxChars = 50;
            this.watch_note_txt.restrict = " -~";
            this.watch_note_txt.text = "";
            this.watch_note_txt.visible = true;
            try
            {
                this.watch_note_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_watch_password_txt_HostOptions_Layer1_0()
        {
            try
            {
                this.watch_password_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.watch_password_txt.displayAsPassword = false;
            this.watch_password_txt.editable = true;
            this.watch_password_txt.enabled = true;
            this.watch_password_txt.maxChars = 0;
            this.watch_password_txt.restrict = " -~";
            this.watch_password_txt.text = "";
            this.watch_password_txt.visible = true;
            try
            {
                this.watch_password_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.host_btn.useHandCursor = true;
            this.rbg = new RadioButtonGroup("DuelType");
            this.ar_rb.group = this.rbg;
            this.au_rb.group = this.rbg;
            this.tu_rb.group = this.rbg;
            this.uu_rb.group = this.rbg;
            this.watching_cb.addEventListener(Event.CHANGE, this.toggleWatchE);
            this.match_type_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            return;
        }// end function

    }
}
