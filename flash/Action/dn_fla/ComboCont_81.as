package dn_fla
{
    import fl.controls.*;
    import fl.data.*;
    import flash.display.*;

    dynamic public class ComboCont_81 extends MovieClip
    {
        public var combo_cb:ComboBox;

        public function ComboCont_81()
        {
            this.__setProp_combo_cb_ComboCont_Layer1_0();
            return;
        }// end function

        function __setProp_combo_cb_ComboCont_Layer1_0()
        {
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            try
            {
                this.combo_cb["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
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
            this.combo_cb.dataProvider = _loc_1;
            this.combo_cb.editable = false;
            this.combo_cb.enabled = true;
            this.combo_cb.prompt = "";
            this.combo_cb.restrict = "";
            this.combo_cb.rowCount = 5;
            this.combo_cb.visible = true;
            try
            {
                this.combo_cb["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

    }
}
