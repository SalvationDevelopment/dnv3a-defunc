package dn_fla
{
    import fl.controls.*;
    import fl.data.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class AdminStatus_290 extends MovieClip
    {
        public var save_btn:Button;
        public var status_cb:ComboBox;
        public var username_txt:TextInput;

        public function AdminStatus_290()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_username_txt_AdminStatus_Layer1_0();
            this.__setProp_status_cb_AdminStatus_Layer1_0();
            this.__setProp_save_btn_AdminStatus_Layer1_0();
            return;
        }// end function

        function __setProp_username_txt_AdminStatus_Layer1_0()
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

        function __setProp_status_cb_AdminStatus_Layer1_0()
        {
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            try
            {
                this.status_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            var _loc_1:* = new DataProvider();
            _loc_3 = [{label:"User", data:0}, {label:"Administrator", data:1}, {label:"Senior Administrator", data:2}];
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
            this.status_cb.dataProvider = _loc_1;
            this.status_cb.editable = false;
            this.status_cb.enabled = true;
            this.status_cb.prompt = "";
            this.status_cb.restrict = "";
            this.status_cb.rowCount = 5;
            this.status_cb.visible = true;
            try
            {
                this.status_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_save_btn_AdminStatus_Layer1_0()
        {
            try
            {
                this.save_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.save_btn.emphasized = false;
            this.save_btn.enabled = true;
            this.save_btn.label = "Save";
            this.save_btn.labelPlacement = "right";
            this.save_btn.selected = false;
            this.save_btn.toggle = false;
            this.save_btn.visible = true;
            try
            {
                this.save_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.status_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            return;
        }// end function

    }
}
