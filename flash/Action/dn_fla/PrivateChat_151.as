package dn_fla
{
    import fl.controls.*;
    import fl.controls.listClasses.*;
    import fl.data.*;
    import fl.events.*;
    import flash.display.*;
    import flash.events.*;

    dynamic public class PrivateChat_151 extends MovieClip
    {
        public var exit_btn:SimpleButton;
        public var user_mc:List;
        public var top_mc:MovieClip;
        public var minimize_btn:SimpleButton;
        public var cout_txt:TextArea;
        public var cin_txt:TextInput;
        public var scroll_pos:int;
        public var remember_position:Boolean;

        public function PrivateChat_151()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setChat(param1:TextArea, param2:TextInput)
        {
            if (this.cout_txt != null)
            {
                this.cout_txt.removeEventListener(Event.ENTER_FRAME, this.saveScrollPosE);
                this.cout_txt.removeEventListener(FocusEvent.FOCUS_OUT, this.restoreScrollPosE);
                removeChild(this.cout_txt);
                removeChild(this.cin_txt);
            }
            this.cout_txt = param1;
            this.cin_txt = param2;
            this.cout_txt.addEventListener(Event.ENTER_FRAME, this.saveScrollPosE);
            this.cout_txt.addEventListener(FocusEvent.FOCUS_OUT, this.restoreScrollPosE);
            addChild(this.cout_txt);
            addChild(this.cin_txt);
            return;
        }// end function

        public function saveScrollPosE(event:Event)
        {
            this.scroll_pos = this.cout_txt.verticalScrollPosition;
            return;
        }// end function

        public function restoreScrollPosE(event:FocusEvent)
        {
            if (this.scroll_pos >= 0)
            {
                this.cout_txt.verticalScrollPosition = this.scroll_pos;
            }
            return;
        }// end function

        public function dragCallback(param1:Sprite) : Sprite
        {
            this.remember_position = true;
            return this;
        }// end function

        public function startPrivateChat(param1:String, param2:Boolean) : int
        {
            var _loc_7:int = 0;
            var _loc_8:* = undefined;
            var _loc_9:int = 0;
            var _loc_10:TextArea = null;
            var _loc_11:TextInput = null;
            var _loc_12:Object = null;
            var _loc_3:* = param1.toUpperCase();
            var _loc_4:int = 0;
            var _loc_5:* = this.user_mc.length - 1;
            var _loc_6:int = -1;
            while (_loc_4 <= _loc_5)
            {
                
                _loc_7 = (_loc_4 + _loc_5) / 2;
                _loc_8 = this.user_mc.getItemAt(_loc_7).data.toUpperCase();
                if (_loc_3 < _loc_8)
                {
                    _loc_5 = _loc_7 - 1;
                    continue;
                }
                if (_loc_3 > _loc_8)
                {
                    _loc_4 = _loc_7 + 1;
                    continue;
                }
                _loc_6 = _loc_7;
                break;
            }
            if (_loc_6 >= 0)
            {
                return _loc_6;
            }
            _loc_9 = this.user_mc.selectedIndex;
            _loc_10 = new TextArea();
            _loc_10.x = 0;
            _loc_10.y = 30;
            _loc_10.width = 200;
            _loc_10.height = 301;
            _loc_10.editable = false;
            _loc_11 = new TextInput();
            _loc_11.x = 0;
            _loc_11.y = 334;
            _loc_11.width = 200;
            _loc_11.height = 22;
            _loc_11.maxChars = param2 ? (500) : (200);
            _loc_11.restrict = " -~";
            _loc_12 = {label:param1, data:param1, cout_txt:_loc_10, cout:"", cin_txt:_loc_11, new_msg:false};
            this.user_mc.dataProvider.addItemAt(_loc_12, _loc_4);
            if (_loc_9 >= _loc_4)
            {
                this.user_mc.selectedIndex = _loc_9 + 1;
            }
            return _loc_4;
        }// end function

        public function findPrivateChat(param1:String) : int
        {
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            var _loc_2:* = param1.toUpperCase();
            var _loc_3:int = 0;
            var _loc_4:* = this.user_mc.length - 1;
            while (_loc_3 <= _loc_4)
            {
                
                _loc_5 = (_loc_3 + _loc_4) / 2;
                _loc_6 = this.user_mc.getItemAt(_loc_5).data.toUpperCase();
                if (_loc_2 < _loc_6)
                {
                    _loc_4 = _loc_5 - 1;
                    continue;
                }
                if (_loc_2 > _loc_6)
                {
                    _loc_3 = _loc_5 + 1;
                    continue;
                }
                return _loc_5;
            }
            return -1;
        }// end function

        public function privateChatWriteLine(param1:int, param2:String) : Object
        {
            var _loc_3:* = this.user_mc.getItemAt(param1);
            var _loc_4:* = _loc_3.cout_txt.verticalScrollPosition;
            var _loc_5:* = _loc_3.cout_txt.maxVerticalScrollPosition;
            var _loc_6:* = _loc_4 == _loc_5;
            if (_loc_3.cout != "")
            {
                param2 = "<br />" + param2;
            }
            _loc_3.cout = _loc_3.cout + param2;
            _loc_3.cout_txt.htmlText = _loc_3.cout;
            _loc_3.cout_txt.verticalScrollPosition = _loc_4;
            if (_loc_6)
            {
                _loc_3.cout_txt.verticalScrollPosition = _loc_3.cout_txt.maxVerticalScrollPosition;
            }
            return _loc_3;
        }// end function

        public function updateListColors(event:Event = null)
        {
            var _loc_5:Object = null;
            var _loc_6:CellRenderer = null;
            this.user_mc.drawNow();
            var _loc_2:* = this.user_mc;
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
                if (_loc_5.new_msg)
                {
                    if (!(_loc_6.getStyle("upSkin") is NewMessageGlow))
                    {
                        _loc_6.setStyle("upSkin", new NewMessageGlow());
                    }
                }
                else
                {
                    _loc_6.setStyle("upSkin", new MovieClip());
                }
                _loc_3++;
            }
            return;
        }// end function

        public function fixChat()
        {
            if (this.cout_txt == null)
            {
                return;
            }
            var _loc_1:* = this.cout_txt.verticalScrollPosition;
            var _loc_2:* = this.cout_txt.maxVerticalScrollPosition;
            var _loc_3:* = _loc_1 == _loc_2;
            var _loc_4:* = this.user_mc.length;
            var _loc_5:* = this.user_mc.length < 5 && _loc_4 > 0 ? (20 * (5 - _loc_4)) : (0);
            this.cout_txt.height = 301 + _loc_5;
            this.cin_txt.y = 334 + _loc_5;
            this.user_mc.y = 359 + _loc_5;
            this.user_mc.height = 100 - _loc_5;
            this.cout_txt.verticalScrollPosition = _loc_1;
            if (_loc_3)
            {
                this.cout_txt.verticalScrollPosition = this.cout_txt.maxVerticalScrollPosition;
            }
            return;
        }// end function

        function frame1()
        {
            visible = false;
            this.user_mc.dataProvider = new DataProvider([]);
            this.scroll_pos = -1;
            this.remember_position = false;
            DragManager.enableDragging(this.top_mc, this.dragCallback, null);
            this.user_mc.addEventListener(ScrollEvent.SCROLL, this.updateListColors);
            return;
        }// end function

    }
}
