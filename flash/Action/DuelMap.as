package 
{

    public class DuelMap extends Object
    {
        private var object:Object;
        private var header:MapEntry;
        private var count:uint;
        private var curr_entry:MapEntry;

        public function DuelMap()
        {
            this.object = new Object();
            this.header = new MapEntry(null);
            this.header.before = this.header;
            this.header.after = this.header;
            this.count = 0;
            this.curr_entry = this.header;
            return;
        }// end function

        public function get size() : uint
        {
            return this.count;
        }// end function

        public function get(param1:String) : DuelCard
        {
            var _loc_2:* = this.object[param1];
            if (_loc_2 == null)
            {
                return null;
            }
            return _loc_2.card;
        }// end function

        public function remove(param1:String = null) : DuelCard
        {
            var _loc_2:MapEntry = null;
            if (param1 == null)
            {
                _loc_2 = this.header.after;
                if (_loc_2 == this.header)
                {
                    return null;
                }
                param1 = _loc_2.card.id;
            }
            else
            {
                _loc_2 = this.object[param1];
                if (_loc_2 == null)
                {
                    return null;
                }
            }
            var _loc_3:String = this;
            var _loc_4:* = this.count - 1;
            _loc_3.count = _loc_4;
            this.object[param1] = undefined;
            _loc_2.unlink();
            return _loc_2.card;
        }// end function

        public function put(param1:DuelCard)
        {
            var _loc_3:String = this;
            var _loc_4:* = this.count + 1;
            _loc_3.count = _loc_4;
            var _loc_2:* = new MapEntry(param1);
            this.object[param1.id] = _loc_2;
            _loc_2.link(this.header.before, this.header);
            return;
        }// end function

        public function putInFront(param1:DuelCard)
        {
            var _loc_3:String = this;
            var _loc_4:* = this.count + 1;
            _loc_3.count = _loc_4;
            var _loc_2:* = new MapEntry(param1);
            this.object[param1.id] = _loc_2;
            _loc_2.link(this.header, this.header.after);
            return;
        }// end function

        public function next() : DuelCard
        {
            this.curr_entry = this.curr_entry.after;
            return this.curr_entry.card;
        }// end function

        public function prev() : DuelCard
        {
            this.curr_entry = this.curr_entry.before;
            return this.curr_entry.card;
        }// end function

        public function first() : DuelCard
        {
            return this.header.after.card;
        }// end function

        public function last() : DuelCard
        {
            return this.header.before.card;
        }// end function

        public function iterate_stop()
        {
            this.curr_entry = this.header;
            return;
        }// end function

        public function toArray() : Array
        {
            var _loc_1:* = new Array(this.count);
            var _loc_2:* = this.header;
            var _loc_3:int = 0;
            while (_loc_3 < this.count)
            {
                
                _loc_2 = _loc_2.after;
                _loc_1[_loc_3] = _loc_2.card;
                _loc_3++;
            }
            return _loc_1;
        }// end function

        public function remap(param1:Array, param2:String)
        {
            var _loc_6:DuelCard = null;
            var _loc_7:MapEntry = null;
            this.object = new Object();
            var _loc_3:* = this.header;
            var _loc_4:* = param2;
            var _loc_5:int = 0;
            while (_loc_5 < param1.length)
            {
                
                _loc_6 = param1[_loc_5];
                _loc_6.id = _loc_4;
                _loc_7 = new MapEntry(_loc_6);
                _loc_3.after = _loc_7;
                _loc_7.before = _loc_3;
                _loc_3 = _loc_7;
                this.object[_loc_4] = _loc_7;
                _loc_4 = this.increment(_loc_4);
                _loc_5++;
            }
            _loc_3.after = this.header;
            this.header.before = _loc_3;
            return;
        }// end function

        private function increment(param1:String) : String
        {
            var _loc_3:Array = null;
            var _loc_2:* = param1.length - 1;
            while (_loc_2 >= 0)
            {
                
                if (param1.charCodeAt(_loc_2) != 57)
                {
                    break;
                }
                _loc_2 = _loc_2 - 1;
            }
            if (_loc_2 < 0)
            {
                _loc_3 = new Array((param1.length + 1));
                _loc_3[0] = 49;
                _loc_2 = 1;
                while (_loc_2 < _loc_3.length)
                {
                    
                    _loc_3[_loc_2] = 48;
                    _loc_2++;
                }
                return String.fromCharCode.apply(null, _loc_3);
            }
            else
            {
                _loc_3 = param1.split("");
                _loc_3[_loc_2] = String.fromCharCode((String(_loc_3[_loc_2]).charCodeAt(0) + 1));
                _loc_2++;
                while (_loc_2 < _loc_3.length)
                {
                    
                    _loc_3[_loc_2] = "0";
                    _loc_2++;
                }
            }
            return _loc_3.join("");
        }// end function

        public function hasMonsterOpening() : Boolean
        {
            return this.hasOpening(6, 11);
        }// end function

        public function hasSpellTrapOpening() : Boolean
        {
            return this.hasOpening(0, 5);
        }// end function

        public function hasFieldSpellOpening() : Boolean
        {
            return this.hasOpening(5, 6);
        }// end function

        public function getFieldSpell() : DuelCard
        {
            var _loc_2:DuelCard = null;
            var _loc_1:* = this.header.after;
            while (_loc_1 != this.header)
            {
                
                _loc_2 = _loc_1.card;
                if (_loc_2.position == 5)
                {
                    return _loc_2;
                }
                _loc_1 = _loc_1.after;
            }
            return null;
        }// end function

        public function hasMonsters() : Boolean
        {
            var _loc_2:DuelCard = null;
            var _loc_1:* = this.header.after;
            while (_loc_1 != this.header)
            {
                
                _loc_2 = _loc_1.card;
                if (_loc_2.position >= 6)
                {
                    return true;
                }
                _loc_1 = _loc_1.after;
            }
            return false;
        }// end function

        public function getOnlyMonsterId() : String
        {
            var _loc_3:DuelCard = null;
            var _loc_1:String = null;
            var _loc_2:* = this.header.after;
            while (_loc_2 != this.header)
            {
                
                _loc_3 = _loc_2.card;
                if (_loc_3.position >= 6)
                {
                    if (_loc_1 != null)
                    {
                        return null;
                    }
                    _loc_1 = _loc_3.id;
                }
                _loc_2 = _loc_2.after;
            }
            return _loc_1;
        }// end function

        public function hasOverlayOption(param1:String) : Boolean
        {
            var _loc_3:DuelCard = null;
            var _loc_4:String = null;
            var _loc_5:Boolean = false;
            var _loc_2:* = this.header.after;
            while (_loc_2 != this.header)
            {
                
                _loc_3 = _loc_2.card;
                _loc_4 = _loc_3.front_mc.card;
                _loc_5 = _loc_4 == "token";
                if (_loc_3.position >= 6 && !_loc_3.show_back && _loc_3.id != param1 && !_loc_5)
                {
                    return true;
                }
                _loc_2 = _loc_2.after;
            }
            return false;
        }// end function

        public function getOnlyOverlayOptionId(param1:String) : String
        {
            var _loc_4:DuelCard = null;
            var _loc_5:String = null;
            var _loc_6:Boolean = false;
            var _loc_2:String = null;
            var _loc_3:* = this.header.after;
            while (_loc_3 != this.header)
            {
                
                _loc_4 = _loc_3.card;
                _loc_5 = _loc_4.front_mc.card;
                _loc_6 = _loc_5 == "token";
                if (_loc_4.position >= 6 && !_loc_4.show_back && _loc_4.id != param1 && !_loc_6)
                {
                    if (_loc_2 != null)
                    {
                        return null;
                    }
                    _loc_2 = _loc_4.id;
                }
                _loc_3 = _loc_3.after;
            }
            return _loc_2;
        }// end function

        private function hasOpening(param1:int, param2:int) : Boolean
        {
            var _loc_6:int = 0;
            var _loc_3:* = new Array(param2 - param1);
            var _loc_4:* = this.header.after;
            while (_loc_4 != this.header)
            {
                
                _loc_6 = _loc_4.card.position;
                if (_loc_6 >= param1 && _loc_6 < param2)
                {
                    _loc_3[_loc_6 - param1] = true;
                }
                _loc_4 = _loc_4.after;
            }
            var _loc_5:int = 0;
            while (_loc_5 < _loc_3.length)
            {
                
                if (!_loc_3[_loc_5])
                {
                    return true;
                }
                _loc_5++;
            }
            return false;
        }// end function

    }
}
