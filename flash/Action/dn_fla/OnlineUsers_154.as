package dn_fla
{
    import fl.controls.*;
    import fl.controls.listClasses.*;
    import fl.data.*;
    import fl.events.*;
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;

    dynamic public class OnlineUsers_154 extends MovieClip
    {
        public var users_mc:List;
        public var users_online_txt:Label;
        public var top_mc:MovieClip;
        public var minimize_btn:SimpleButton;
        public var search_txt:TextInput;
        public var remember_position:Boolean;
        public var num_friends_online:int;
        public var num_admins_online:int;
        public var all_users:DataProvider;
        public var user_map:Object;
        public var friends:Object;
        public var num_friends_filter:int;
        public var num_admins_filter:int;

        public function OnlineUsers_154()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_search_txt_OnlineUsers_list_0();
            this.__setProp_users_online_txt_OnlineUsers_count_0();
            return;
        }// end function

        public function dragCallback(param1:Sprite) : Sprite
        {
            this.remember_position = true;
            return this;
        }// end function

        public function usersAdd(param1:Array, param2:MovieClip)
        {
            var user_arr:Array;
            var i:int;
            var j:int;
            var username:String;
            var new_user:Object;
            var chat_idx:int;
            var users:* = param1;
            var private_chat:* = param2;
            if (this.all_users == null)
            {
                var userOrder:* = function (param1:Object, param2:Object) : int
            {
                var _loc_3:* = param1.friend && !param1.admin;
                var _loc_4:* = param2.friend && !param2.admin;
                if (_loc_3 && !_loc_4)
                {
                    return -1;
                }
                if (_loc_4 && !_loc_3)
                {
                    return 1;
                }
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
                this.user_map = new Object();
                user_arr = new Array(users.length >> 1);
                this.num_admins_online = 0;
                i;
                while (i < user_arr.length)
                {
                    
                    j = i << 1;
                    username = users[j];
                    new_user;
                    this.user_map[username] = new_user;
                    if (new_user.admin)
                    {
                        var _loc_4:String = this;
                        var _loc_5:* = this.num_admins_online + 1;
                        _loc_4.num_admins_online = _loc_5;
                    }
                    else if (new_user.friend)
                    {
                        var _loc_4:String = this;
                        var _loc_5:* = this.num_friends_online + 1;
                        _loc_4.num_friends_online = _loc_5;
                    }
                    user_arr[i] = new_user;
                    i = (i + 1);
                }
                user_arr.sort(userOrder);
                this.all_users = new DataProvider(user_arr);
                this.applyFilter();
            }
            else
            {
                i;
                while (i < users.length)
                {
                    
                    username = users[i];
                    new_user;
                    this.userInsert(new_user);
                    chat_idx = private_chat.findPrivateChat(new_user.data);
                    if (chat_idx >= 0)
                    {
                        private_chat.privateChatWriteLine(chat_idx, "<b>" + StringUtils.escapeHtml(new_user.data) + " has logged in</b>");
                    }
                    i = i + 2;
                }
                this.updateListColors();
            }
            this.users_online_txt.text = "Users online: " + this.all_users.length;
            return;
        }// end function

        public function userInsert(param1:Object)
        {
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            this.user_map[param1.data] = param1;
            var _loc_2:* = param1.data.toUpperCase().indexOf(this.search_txt.text.toUpperCase()) >= 0;
            if (_loc_2)
            {
                _loc_3 = this.users_mc.selectedIndex;
                _loc_4 = this.userPlacementFind(param1, this.users_mc.dataProvider, this.num_admins_filter, this.num_friends_filter);
                this.users_mc.dataProvider.addItemAt(param1, _loc_4);
                if (param1.admin)
                {
                    var _loc_5:String = this;
                    var _loc_6:* = this.num_admins_filter + 1;
                    _loc_5.num_admins_filter = _loc_6;
                }
                else if (param1.friend)
                {
                    var _loc_5:String = this;
                    var _loc_6:* = this.num_friends_filter + 1;
                    _loc_5.num_friends_filter = _loc_6;
                }
            }
            if (this.users_mc.dataProvider != this.all_users)
            {
                this.all_users.addItemAt(param1, this.userPlacementFind(param1, this.all_users, this.num_admins_online, this.num_friends_online));
            }
            if (param1.admin)
            {
                var _loc_5:String = this;
                var _loc_6:* = this.num_admins_online + 1;
                _loc_5.num_admins_online = _loc_6;
            }
            else if (param1.friend)
            {
                var _loc_5:String = this;
                var _loc_6:* = this.num_friends_online + 1;
                _loc_5.num_friends_online = _loc_6;
            }
            if (_loc_2 && _loc_3 >= _loc_4)
            {
                this.users_mc.selectedIndex = _loc_3 + 1;
            }
            return;
        }// end function

        public function userPlacementFind(param1:Object, param2:DataProvider, param3:int, param4:int) : int
        {
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_5:* = param1.data.toUpperCase();
            if (param1.admin)
            {
                _loc_6 = param4;
                _loc_7 = param4 + param3 - 1;
            }
            else if (param1.friend)
            {
                _loc_6 = 0;
                _loc_7 = param4 - 1;
            }
            else
            {
                _loc_6 = param4 + param3;
                _loc_7 = param2.length - 1;
            }
            while (_loc_6 <= _loc_7)
            {
                
                _loc_8 = (_loc_6 + _loc_7) / 2;
                if (_loc_5 < param2.getItemAt(_loc_8).data.toUpperCase())
                {
                    _loc_7 = _loc_8 - 1;
                    continue;
                }
                _loc_6 = _loc_8 + 1;
            }
            return _loc_6;
        }// end function

        public function updateListColors(event:Event = null)
        {
            var _loc_5:Object = null;
            var _loc_6:CellRenderer = null;
            var _loc_7:TextFormat = null;
            var _loc_2:* = this.users_mc;
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
                        _loc_7.color = _loc_5.friend ? (255) : (0);
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

        public function usersRemove(param1:Array, param2:MovieClip)
        {
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_3:* = 0;
            while (_loc_3 < param1.length)
            {
                
                _loc_4 = this.userDelete(param1[_loc_3]);
                if (_loc_4 == null)
                {
                }
                else
                {
                    _loc_5 = param2.findPrivateChat(_loc_4.data);
                    if (_loc_5 >= 0)
                    {
                        param2.privateChatWriteLine(_loc_5, "<b>" + StringUtils.escapeHtml(_loc_4.data) + " has logged out</b>");
                    }
                }
                _loc_3 = _loc_3 + 1;
            }
            this.updateListColors();
            this.users_online_txt.text = "Users online: " + this.all_users.length;
            return;
        }// end function

        public function userDelete(param1:String) : Object
        {
            if (this.user_map == null)
            {
                return null;
            }
            var _loc_2:* = this.user_map[param1];
            if (_loc_2 == null)
            {
                return null;
            }
            delete this.user_map[param1];
            var _loc_3:* = this.users_mc.selectedIndex;
            var _loc_4:* = this.users_mc.dataProvider.getItemIndex(_loc_2);
            if (this.users_mc.dataProvider.getItemIndex(_loc_2) >= 0)
            {
                this.users_mc.dataProvider.removeItemAt(_loc_4);
                if (_loc_2.admin)
                {
                    var _loc_5:String = this;
                    var _loc_6:* = this.num_admins_filter - 1;
                    _loc_5.num_admins_filter = _loc_6;
                }
                else if (_loc_2.friend)
                {
                    var _loc_5:String = this;
                    var _loc_6:* = this.num_friends_filter - 1;
                    _loc_5.num_friends_filter = _loc_6;
                }
            }
            this.all_users.removeItem(_loc_2);
            if (_loc_2.admin)
            {
                var _loc_5:String = this;
                var _loc_6:* = this.num_admins_online - 1;
                _loc_5.num_admins_online = _loc_6;
            }
            else if (_loc_2.friend)
            {
                var _loc_5:String = this;
                var _loc_6:* = this.num_friends_online - 1;
                _loc_5.num_friends_online = _loc_6;
            }
            if (_loc_4 >= 0)
            {
                if (_loc_3 == _loc_4)
                {
                    this.users_mc.selectedIndex = -1;
                }
                else if (_loc_3 > _loc_4)
                {
                    this.users_mc.selectedIndex = _loc_3 - 1;
                }
            }
            return _loc_2;
        }// end function

        public function updateFriend(param1:String, param2:Boolean)
        {
            if (this.friends == null)
            {
                this.friends = new Object();
            }
            if (param2)
            {
                this.friends[param1] = true;
            }
            else
            {
                delete this.friends[param1];
            }
            var _loc_3:* = this.userDelete(param1);
            if (_loc_3 == null)
            {
                return;
            }
            _loc_3.friend = param2;
            this.userInsert(_loc_3);
            this.updateListColors();
            return;
        }// end function

        public function isFriend(param1:String) : Boolean
        {
            if (this.friends == null)
            {
                return false;
            }
            return this.friends[param1] != null;
        }// end function

        public function applyFilter(event:Event = null)
        {
            var _loc_4:DataProvider = null;
            var _loc_5:int = 0;
            var _loc_6:Object = null;
            if (this.all_users == null)
            {
                return;
            }
            var _loc_2:* = this.users_mc.selectedItem;
            var _loc_3:* = this.search_txt.text.toUpperCase();
            if (_loc_3 == "")
            {
                this.users_mc.dataProvider = this.all_users;
                this.num_admins_filter = this.num_admins_online;
                this.num_friends_filter = this.num_friends_online;
            }
            else
            {
                this.num_admins_filter = 0;
                this.num_friends_filter = 0;
                _loc_4 = new DataProvider();
                _loc_5 = 0;
                while (_loc_5 < this.all_users.length)
                {
                    
                    _loc_6 = this.all_users.getItemAt(_loc_5);
                    if (_loc_6.data.toUpperCase().indexOf(_loc_3) >= 0)
                    {
                        _loc_4.addItem(_loc_6);
                        if (_loc_6.admin)
                        {
                            var _loc_7:String = this;
                            var _loc_8:* = this.num_admins_filter + 1;
                            _loc_7.num_admins_filter = _loc_8;
                        }
                        else if (_loc_6.friend)
                        {
                            var _loc_7:String = this;
                            var _loc_8:* = this.num_friends_filter + 1;
                            _loc_7.num_friends_filter = _loc_8;
                        }
                    }
                    _loc_5++;
                }
                this.users_mc.dataProvider = _loc_4;
            }
            this.users_mc.selectedItem = _loc_2;
            this.updateListColors();
            return;
        }// end function

        function __setProp_search_txt_OnlineUsers_list_0()
        {
            try
            {
                this.search_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.search_txt.displayAsPassword = false;
            this.search_txt.editable = true;
            this.search_txt.enabled = true;
            this.search_txt.maxChars = 20;
            this.search_txt.restrict = " -{}-~";
            this.search_txt.text = "";
            this.search_txt.visible = true;
            try
            {
                this.search_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_users_online_txt_OnlineUsers_count_0()
        {
            try
            {
                this.users_online_txt["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.users_online_txt.autoSize = "none";
            this.users_online_txt.condenseWhite = false;
            this.users_online_txt.enabled = true;
            this.users_online_txt.htmlText = "";
            this.users_online_txt.selectable = false;
            this.users_online_txt.text = "Users online: 0";
            this.users_online_txt.visible = true;
            this.users_online_txt.wordWrap = false;
            try
            {
                this.users_online_txt["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            visible = false;
            this.remember_position = false;
            DragManager.enableDragging(this.top_mc, this.dragCallback, null);
            this.num_friends_online = 0;
            this.num_admins_online = 0;
            this.all_users = null;
            this.users_mc.addEventListener(ScrollEvent.SCROLL, this.updateListColors);
            this.search_txt.addEventListener(Event.CHANGE, this.applyFilter);
            this.num_friends_filter = 0;
            this.num_admins_filter = 0;
            return;
        }// end function

    }
}
