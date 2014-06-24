package dn_fla
{
    import fl.controls.*;
    import fl.controls.listClasses.*;
    import fl.data.*;
    import fl.events.*;
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;

    dynamic public class Watchers_336 extends MovieClip
    {
        public var watchers_txt:Label;
        public var watchers_mc:List;
        public var num_admins_online:int;

        public function Watchers_336()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_watchers_mc_Watchers_list_0();
            this.__setProp_watchers_txt_Watchers_count_0();
            return;
        }// end function

        public function initialize(param1:Array)
        {
            var userOrder:Function;
            var j:int;
            var new_user:Object;
            var users:* = param1;
            userOrder = function (param1:Object, param2:Object) : int
            {
                if (param1.admin && !param2.admin)
                {
                    return -1;
                }
                if (param2.admin && !param1.admin)
                {
                    return 1;
                }
                if (param1.data.toUpperCase() < param2.data.toUpperCase())
                {
                    return -1;
                }
                return 1;
            }// end function
            ;
            var user_arr:* = new Array(users.length >> 1);
            this.num_admins_online = 0;
            var i:int;
            while (i < user_arr.length)
            {
                
                j = i << 1;
                new_user;
                if (new_user.admin)
                {
                    var _loc_3:String = this;
                    var _loc_4:* = this.num_admins_online + 1;
                    _loc_3.num_admins_online = _loc_4;
                }
                user_arr[i] = new_user;
                i = (i + 1);
            }
            user_arr.sort(userOrder);
            this.watchers_mc.dataProvider = new DataProvider(user_arr);
            this.updateListColors();
            this.watchers_txt.text = "Watchers: " + this.watchers_mc.length;
            return;
        }// end function

        public function addUser(param1:String, param2:String)
        {
            var _loc_3:* = this.watchers_mc.selectedIndex;
            var _loc_4:* = {label:param1, data:param1, admin:int(param2)};
            var _loc_5:* = this.userPlacementFind(_loc_4);
            this.watchers_mc.dataProvider.addItemAt(_loc_4, _loc_5);
            if (_loc_4.admin)
            {
                var _loc_6:String = this;
                var _loc_7:* = this.num_admins_online + 1;
                _loc_6.num_admins_online = _loc_7;
            }
            if (_loc_3 >= _loc_5)
            {
                this.watchers_mc.selectedIndex = _loc_3 + 1;
            }
            this.updateListColors();
            this.watchers_txt.text = "Watchers: " + this.watchers_mc.length;
            return;
        }// end function

        public function updateListColors(event:Event = null)
        {
            var _loc_5:Object = null;
            var _loc_6:CellRenderer = null;
            var _loc_7:TextFormat = null;
            var _loc_2:* = this.watchers_mc;
            _loc_2.drawNow();
            var _loc_3:* = _loc_2.verticalScrollPosition / 20;
            var _loc_4:* = _loc_3 + _loc_2.rowCount + 1;
            if (_loc_3 + _loc_2.rowCount + 1 > _loc_2.length)
            {
                _loc_4 = _loc_2.length;
            }
            while (_loc_3 < _loc_4)
            {
                
                _loc_5 = _loc_2.getItemAt(_loc_3);
                _loc_6 = _loc_2.itemToCellRenderer(_loc_5) as CellRenderer;
                _loc_7 = new TextFormat();
                _loc_7.font = Constants.COMPONENT_FONT;
                _loc_7.size = Constants.COMPONENT_SIZE;
                switch(_loc_5.admin)
                {
                    case 0:
                    {
                        _loc_7.color = 0;
                        break;
                    }
                    case 1:
                    {
                        _loc_7.color = 39168;
                        break;
                    }
                    case 2:
                    {
                        _loc_7.color = 7368816;
                        break;
                    }
                    case 3:
                    {
                        _loc_7.color = 13408512;
                        break;
                    }
                    case 4:
                    {
                        _loc_7.color = 13408512;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_6.setStyle("textFormat", _loc_7);
                _loc_3++;
            }
            return;
        }// end function

        public function userPlacementFind(param1:Object) : int
        {
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_2:* = param1.data.toUpperCase();
            if (param1.admin)
            {
                _loc_3 = 0;
                _loc_4 = this.num_admins_online - 1;
            }
            else
            {
                _loc_3 = this.num_admins_online;
                _loc_4 = this.watchers_mc.length - 1;
            }
            while (_loc_3 <= _loc_4)
            {
                
                _loc_5 = (_loc_3 + _loc_4) / 2;
                if (_loc_2 < this.watchers_mc.dataProvider.getItemAt(_loc_5).data.toUpperCase())
                {
                    _loc_4 = _loc_5 - 1;
                    continue;
                }
                _loc_3 = _loc_5 + 1;
            }
            return _loc_3;
        }// end function

        public function removeUser(param1:String)
        {
            var _loc_3:int = 0;
            var _loc_4:Object = null;
            var _loc_2:* = this.userPositionFind(param1);
            if (_loc_2 >= 0)
            {
                _loc_3 = this.watchers_mc.selectedIndex;
                _loc_4 = this.watchers_mc.dataProvider.removeItemAt(_loc_2);
                if (_loc_4.admin)
                {
                    var _loc_5:String = this;
                    var _loc_6:* = this.num_admins_online - 1;
                    _loc_5.num_admins_online = _loc_6;
                }
                if (_loc_3 == _loc_2)
                {
                    this.watchers_mc.selectedIndex = -1;
                }
                else if (_loc_3 > _loc_2)
                {
                    this.watchers_mc.selectedIndex = _loc_3 - 1;
                }
            }
            this.updateListColors();
            this.watchers_txt.text = "Watchers: " + this.watchers_mc.length;
            return;
        }// end function

        public function userPositionFind(param1:String) : int
        {
            var _loc_2:* = this.userPositionFind2(param1, this.num_admins_online, (this.watchers_mc.length - 1));
            if (_loc_2 >= 0)
            {
                return _loc_2;
            }
            return this.userPositionFind2(param1, 0, (this.num_admins_online - 1));
        }// end function

        public function userPositionFind2(param1:String, param2:int, param3:int) : int
        {
            var _loc_7:int = 0;
            var _loc_8:String = null;
            var _loc_4:* = param1.toUpperCase();
            var _loc_5:* = param2;
            var _loc_6:* = param3;
            while (_loc_5 <= _loc_6)
            {
                
                _loc_7 = (_loc_5 + _loc_6) / 2;
                _loc_8 = this.watchers_mc.dataProvider.getItemAt(_loc_7).data.toUpperCase();
                if (_loc_4 < _loc_8)
                {
                    _loc_6 = _loc_7 - 1;
                    continue;
                }
                if (_loc_4 > _loc_8)
                {
                    _loc_5 = _loc_7 + 1;
                    continue;
                }
                return _loc_7;
            }
            return -1;
        }// end function

        function __setProp_watchers_mc_Watchers_list_0()
        {
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            try
            {
                this.watchers_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.watchers_mc.allowMultipleSelection = false;
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
            this.watchers_mc.dataProvider = _loc_1;
            this.watchers_mc.enabled = true;
            this.watchers_mc.horizontalLineScrollSize = 4;
            this.watchers_mc.horizontalPageScrollSize = 0;
            this.watchers_mc.horizontalScrollPolicy = "auto";
            this.watchers_mc.verticalLineScrollSize = 4;
            this.watchers_mc.verticalPageScrollSize = 0;
            this.watchers_mc.verticalScrollPolicy = "auto";
            this.watchers_mc.visible = true;
            try
            {
                this.watchers_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_watchers_txt_Watchers_count_0()
        {
            try
            {
                this.watchers_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.watchers_txt.autoSize = "none";
            this.watchers_txt.condenseWhite = false;
            this.watchers_txt.enabled = true;
            this.watchers_txt.htmlText = "";
            this.watchers_txt.selectable = false;
            this.watchers_txt.text = "Watchers: 0";
            this.watchers_txt.visible = true;
            this.watchers_txt.wordWrap = false;
            try
            {
                this.watchers_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.watchers_mc.addEventListener(ScrollEvent.SCROLL, this.updateListColors);
            return;
        }// end function

    }
}
