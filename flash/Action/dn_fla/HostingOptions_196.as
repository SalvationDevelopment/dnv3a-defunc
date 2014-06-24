package dn_fla
{
    import fl.controls.*;
    import fl.data.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class HostingOptions_196 extends MovieClip
    {
        public var reject_btn:Button;
        public var accept_btn:Button;
        public var joinlist_mc:List;
        public var cancel_btn:Button;
        public var item_table:Object;

        public function HostingOptions_196()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_joinlist_mc_HostingOptions_Layer1_0();
            this.__setProp_accept_btn_HostingOptions_Layer1_0();
            this.__setProp_reject_btn_HostingOptions_Layer1_0();
            this.__setProp_cancel_btn_HostingOptions_Layer1_0();
            return;
        }// end function

        public function initialize()
        {
            this.joinlist_mc.enabled = true;
            this.joinlist_mc.dataProvider = new DataProvider();
            this.item_table = new Object();
            this.accept_btn.enabled = false;
            this.reject_btn.enabled = false;
            return;
        }// end function

        public function free()
        {
            this.joinlist_mc.dataProvider = new DataProvider();
            this.item_table = null;
            return;
        }// end function

        public function addJoiner(param1:String, param2:String)
        {
            var _loc_3:* = param1 + " (" + param2 + ")";
            var _loc_4:Object = {label:_loc_3, data:param1};
            this.joinlist_mc.addItem(_loc_4);
            this.item_table[param1] = _loc_4;
            return;
        }// end function

        public function removeJoiner(param1:String)
        {
            var _loc_2:* = this.item_table[param1];
            if (_loc_2 == undefined)
            {
                return;
            }
            delete this.item_table[param1];
            if (this.joinlist_mc.selectedItem == _loc_2)
            {
                this.joinlist_mc.selectedIndex = -1;
            }
            this.joinlist_mc.removeItem(_loc_2);
            this.listSelectChangeE();
            return;
        }// end function

        public function listSelectChangeE(event:Event = null)
        {
            var _loc_2:* = this.joinlist_mc.selectedIndex >= 0;
            this.accept_btn.enabled = _loc_2;
            this.reject_btn.enabled = _loc_2;
            return;
        }// end function

        public function lock()
        {
            this.joinlist_mc.enabled = false;
            this.accept_btn.enabled = false;
            this.reject_btn.enabled = false;
            return;
        }// end function

        public function unlock()
        {
            this.joinlist_mc.enabled = true;
            this.listSelectChangeE();
            return;
        }// end function

        function __setProp_joinlist_mc_HostingOptions_Layer1_0()
        {
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            try
            {
                this.joinlist_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.joinlist_mc.allowMultipleSelection = true;
            var _loc_1:* = new DataProvider();
            _loc_3 = [];
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
            this.joinlist_mc.dataProvider = _loc_1;
            this.joinlist_mc.enabled = true;
            this.joinlist_mc.horizontalLineScrollSize = 4;
            this.joinlist_mc.horizontalPageScrollSize = 0;
            this.joinlist_mc.horizontalScrollPolicy = "auto";
            this.joinlist_mc.verticalLineScrollSize = 4;
            this.joinlist_mc.verticalPageScrollSize = 0;
            this.joinlist_mc.verticalScrollPolicy = "auto";
            this.joinlist_mc.visible = true;
            try
            {
                this.joinlist_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_accept_btn_HostingOptions_Layer1_0()
        {
            try
            {
                this.accept_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.accept_btn.emphasized = false;
            this.accept_btn.enabled = true;
            this.accept_btn.label = "Accept User";
            this.accept_btn.labelPlacement = "right";
            this.accept_btn.selected = false;
            this.accept_btn.toggle = false;
            this.accept_btn.visible = true;
            try
            {
                this.accept_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_reject_btn_HostingOptions_Layer1_0()
        {
            try
            {
                this.reject_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.reject_btn.emphasized = false;
            this.reject_btn.enabled = true;
            this.reject_btn.label = "Reject User";
            this.reject_btn.labelPlacement = "right";
            this.reject_btn.selected = false;
            this.reject_btn.toggle = false;
            this.reject_btn.visible = true;
            try
            {
                this.reject_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_cancel_btn_HostingOptions_Layer1_0()
        {
            try
            {
                this.cancel_btn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.cancel_btn.emphasized = false;
            this.cancel_btn.enabled = true;
            this.cancel_btn.label = "Cancel Duel";
            this.cancel_btn.labelPlacement = "right";
            this.cancel_btn.selected = false;
            this.cancel_btn.toggle = false;
            this.cancel_btn.visible = true;
            try
            {
                this.cancel_btn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.accept_btn.useHandCursor = true;
            this.reject_btn.useHandCursor = true;
            this.cancel_btn.useHandCursor = true;
            this.joinlist_mc.addEventListener(Event.CHANGE, this.listSelectChangeE);
            return;
        }// end function

    }
}
