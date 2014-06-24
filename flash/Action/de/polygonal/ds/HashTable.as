package de.polygonal.ds
{
    import __AS3__.vec.*;
    import de.polygonal.core.fmt.*;
    import de.polygonal.core.util.*;
    import de.polygonal.ds.*;
    import flash.*;

    public class HashTable extends Object implements Map
    {
        public var slotCount:int;
        public var nullValue:Object;
        public var loadFactor:Number;
        public var capacity:int;
        public var _vals:Array;
        public var _sizeLevel:int;
        public var _next:Vector.<int>;
        public var _keys:Array;
        public var _isResizable:Boolean;
        public var _h:IntIntHashTable;
        public var _free:int;

        public function HashTable(param1:int = , param2:int = -1, param3:Boolean = true, param4:Object = ) : void
        {
            var _loc_8:int = 0;
            if (Boot.skip_constructor)
            {
                return;
            }
            if (param2 == -1)
            {
                param2 = param1;
            }
            nullValue = param4;
            _isResizable = param3;
            _h = new IntIntHashTable(param1, param2);
            var _loc_5:* = new Array(_h._capacity);
            _keys = new Array(_h._capacity);
            _loc_5 = new Array(_h._capacity);
            _vals = _loc_5;
            _next = new Vector.<int>(_h._capacity);
            var _loc_6:int = 0;
            var _loc_7:* = _h._capacity - 1;
            while (_loc_6 < _loc_7)
            {
                
                _loc_6++;
                _loc_8 = _loc_6;
                _next[_loc_8] = _loc_8 + 1;
            }
            _next[(_h._capacity - 1)] = -1;
            _free = 0;
            return;
        }// end function

        public function toValSet() : Set
        {
            var _loc_4:int = 0;
            var _loc_1:* = new ListSet();
            var _loc_2:int = 0;
            var _loc_3:* = _h._capacity;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                if (_keys[_loc_4] != null)
                {
                    _loc_1.set(_vals[_loc_4]);
                }
            }
            return _loc_1;
        }// end function

        public function toString() : String
        {
            var _loc_2:* = null as IntIntHashTable;
            var _loc_6:* = null as Hashable;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            _loc_2 = _h;
            var _loc_1:* = Sprintf.format("\n{HashTable, size/capacity: %d/%d, load factor: %.2f }", [size(), _h._capacity, _loc_2._size / (_loc_2._mask + 1)]);
            if (size() == 0)
            {
                return _loc_1;
            }
            _loc_1 = _loc_1 + "\n|<\n";
            var _loc_3:int = 0;
            var _loc_4:* = size();
            while (_loc_4 != 0)
            {
                
                _loc_3++;
                _loc_4 = _loc_4 / 10;
            }
            var _loc_5:* = keys();
            
            if (_loc_5.hasNext())
            {
                _loc_6 = _loc_5.next();
                _loc_2 = _h;
                _loc_8 = _loc_6.getKey();
                _loc_9 = _loc_2._hash[_loc_8 * 73856093 & _loc_2._mask];
                while (_loc_9 != -1)
                {
                    if (_loc_2._data[_loc_9] == _loc_8)
                    {
                        break;
                    }
                }
                _loc_7 = _loc_2._data[_loc_9] == _loc_8 ? (-2147483648) : (_loc_9 == -1 ? (_loc_2._data[(_loc_9 + 1)]) : (_loc_10 = -2147483648, _loc_9 = _loc_2._data[_loc_9 + 2], // Jump to 356, // label, if (!(_loc_2._data[_loc_9] == _loc_8)) goto 341, _loc_10 = _loc_2._data[(_loc_9 + 1)], // Jump to 364, _loc_9 = _loc_2._data[_loc_9 + 2], if (!(_loc_9 == -1)) goto 305, _loc_10));
                _loc_1 = _loc_1 + Sprintf.format("  %- " + _loc_3 + "d -> %s\n", [_loc_6, Std.string(_loc_7 == -2147483648 ? (nullValue) : (_vals[_loc_7]))]);
                ;
            }
            _loc_1 = _loc_1 + ">|";
            return _loc_1;
        }// end function

        public function toKeySet() : Set
        {
            var _loc_4:int = 0;
            var _loc_1:* = new ListSet();
            var _loc_2:int = 0;
            var _loc_3:* = _h._capacity;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                if (_keys[_loc_4] != null)
                {
                    _loc_1.set(_keys[_loc_4]);
                }
            }
            return _loc_1;
        }// end function

        public function toKeyDA() : DA
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_1:* = new DA(size());
            var _loc_2:int = 0;
            var _loc_3:* = _h._capacity;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                if (_keys[_loc_4] != null)
                {
                    _loc_5 = _loc_1._size;
                    if (_loc_5 >= 0)
                    {
                    }
                    if (_loc_5 > _loc_1._size)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("the index %d is out of range %d", [_loc_5, _loc_1._size]), {fileName:"DA.hx", lineNumber:157, className:"de.polygonal.ds.DA", methodName:"set"});
                    }
                    if (_loc_5 >= _loc_1._maxSize)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_1._maxSize]), {fileName:"DA.hx", lineNumber:158, className:"de.polygonal.ds.DA", methodName:"set"});
                    }
                    _loc_1._a[_loc_5] = _keys[_loc_4];
                    if (_loc_5 >= _loc_1._size)
                    {
                        (_loc_1._size + 1);
                    }
                }
            }
            return _loc_1;
        }// end function

        public function toKeyArray() : Array
        {
            var _loc_6:int = 0;
            var _loc_2:* = new Array(size());
            var _loc_1:* = _loc_2;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:* = _h._capacity;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                if (_keys[_loc_6] != null)
                {
                    _loc_3++;
                    _loc_1[_loc_3] = _keys[_loc_6];
                }
            }
            return _loc_1;
        }// end function

        public function toDA() : DA
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_1:* = new DA(size());
            var _loc_2:int = 0;
            var _loc_3:* = _h._capacity;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                if (_keys[_loc_4] != null)
                {
                    _loc_5 = _loc_1._size;
                    if (_loc_5 >= 0)
                    {
                    }
                    if (_loc_5 > _loc_1._size)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("the index %d is out of range %d", [_loc_5, _loc_1._size]), {fileName:"DA.hx", lineNumber:157, className:"de.polygonal.ds.DA", methodName:"set"});
                    }
                    if (_loc_5 >= _loc_1._maxSize)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_1._maxSize]), {fileName:"DA.hx", lineNumber:158, className:"de.polygonal.ds.DA", methodName:"set"});
                    }
                    _loc_1._a[_loc_5] = _vals[_loc_4];
                    if (_loc_5 >= _loc_1._size)
                    {
                        (_loc_1._size + 1);
                    }
                }
            }
            return _loc_1;
        }// end function

        public function toArray() : Array
        {
            var _loc_6:int = 0;
            var _loc_2:* = new Array(size());
            var _loc_1:* = _loc_2;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:* = _h._capacity;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                if (_keys[_loc_6] != null)
                {
                    _loc_3++;
                    _loc_1[_loc_3] = _vals[_loc_6];
                }
            }
            return _loc_1;
        }// end function

        public function size() : int
        {
            return _h._size;
        }// end function

        public function setIfAbsent(param1:Hashable, param2:Object) : Boolean
        {
            var _loc_3:* = null as IntIntHashTable;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:* = null as Vector.<int>;
            var _loc_11:* = null as Array;
            var _loc_12:* = null as Array;
            var _loc_13:* = null as Array;
            if (size() == _h._capacity)
            {
                _loc_3 = _h;
                _loc_4 = param1.getKey();
                _loc_5 = size();
                if (_loc_5 == -2147483648)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("val 0x80000000 is reserved", {fileName:"IntIntHashTable.hx", lineNumber:311, className:"de.polygonal.ds.IntIntHashTable", methodName:"setIfAbsent"});
                }
                _loc_6 = _loc_4 * 73856093 & _loc_3._mask;
                _loc_7 = _loc_3._hash[_loc_6];
                if (_loc_7 == -1)
                {
                    if (_loc_3._size >= _loc_3.maxSize)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_3.maxSize]), {fileName:"IntIntHashTable.hx", lineNumber:325, className:"de.polygonal.ds.IntIntHashTable", methodName:"setIfAbsent"});
                    }
                    if (_loc_3._size == _loc_3._capacity)
                    {
                        if (_loc_3._isResizable)
                        {
                            _loc_3._expand();
                        }
                        else
                        {
                            Boot.lastError = new Error();
                            throw new AssertionError(Sprintf.format("hash table is full (%d)", [_loc_3._capacity]), {fileName:"IntIntHashTable.hx", lineNumber:333, className:"de.polygonal.ds.IntIntHashTable", methodName:"setIfAbsent"});
                        }
                    }
                    _loc_8 = _loc_3._free * 3;
                    _loc_3._free = _loc_3._next[_loc_3._free];
                    _loc_3._hash[_loc_6] = _loc_8;
                    _loc_3._data[_loc_8] = _loc_4;
                    _loc_3._data[(_loc_8 + 1)] = _loc_5;
                    (_loc_3._size + 1);
                }
                else
                {
                    while (_loc_8 != -1)
                    {
                        if (_loc_3._data[_loc_8] == _loc_4)
                        {
                            break;
                        }
                    }
                    if (_loc_3._size == _loc_3._capacity)
                    {
                        if (_loc_3._isResizable)
                        {
                        }
                        else
                        {
                        }
                    }
                }
                if (_loc_7 == -1 ? (false) : (_loc_8 = _loc_3._data[_loc_7 + 2], // Jump to 520, // label, if (!(_loc_3._data[_loc_8] == _loc_4)) goto 501, _loc_7 = -1, // Jump to 528, _loc_7 = _loc_8, _loc_8 = _loc_3._data[_loc_7 + 2], if (!(_loc_8 == -1)) goto 476, _loc_3._isResizable ? (false) : (if (!(_loc_3._size == _loc_3._capacity)) goto 634, if (!_loc_3._isResizable) goto 570, _loc_3._expand(), // Jump to 634, Boot.lastError = new Error(), throw new AssertionError(Sprintf.format("hash table is full (%d)", [_loc_3._capacity]), {fileName:"IntIntHashTable.hx", lineNumber:401, className:"de.polygonal.ds.IntIntHashTable", methodName:"setIfAbsent"}), _loc_9 = _loc_3._free * 3, _loc_3._free = _loc_3._next[_loc_3._free], _loc_3._data[_loc_7 + 2] = _loc_9, _loc_3._data[_loc_9] = _loc_4, _loc_3._data[(_loc_9 + 1)] = _loc_5, _loc_3._size + 1, true)))
                {
                    if (!_isResizable)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("hash table is full (%d)", [_h._capacity]), {fileName:"HashTable.hx", lineNumber:181, className:"de.polygonal.ds.HashTable", methodName:"setIfAbsent"});
                    }
                    _loc_4 = _h._capacity >> 1;
                    _loc_5 = _loc_4 << 1;
                    _loc_10 = new Vector.<int>(_loc_5);
                    _loc_6 = 0;
                    while (_loc_6 < _loc_4)
                    {
                        
                        _loc_6++;
                        _loc_7 = _loc_6;
                        _loc_10[_loc_7] = _next[_loc_7];
                    }
                    _next = _loc_10;
                    _loc_12 = new Array(_loc_5);
                    _loc_11 = _loc_12;
                    _loc_12 = _keys;
                    if (_loc_4 > _loc_12.length)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    if (_loc_4 <= 0)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    _loc_6 = 0;
                    _loc_7 = 0;
                    while (_loc_7 < _loc_4)
                    {
                        
                        _loc_7++;
                        _loc_8 = _loc_7;
                        _loc_6++;
                        _loc_11[_loc_6] = _loc_12[_loc_8];
                    }
                    _keys = _loc_11;
                    _loc_6 = _loc_4 - 1;
                    _loc_7 = _loc_5 - 1;
                    while (_loc_6 < _loc_7)
                    {
                        
                        _loc_6++;
                        _loc_8 = _loc_6;
                        _next[_loc_8] = _loc_8 + 1;
                    }
                    _next[(_loc_5 - 1)] = -1;
                    _free = _loc_4;
                    _loc_13 = new Array(_loc_5);
                    _loc_12 = _loc_13;
                    _loc_13 = _vals;
                    if (_loc_4 > _loc_13.length)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    if (_loc_4 <= 0)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    _loc_6 = 0;
                    _loc_7 = 0;
                    while (_loc_7 < _loc_4)
                    {
                        
                        _loc_7++;
                        _loc_8 = _loc_7;
                        _loc_6++;
                        _loc_12[_loc_6] = _loc_13[_loc_8];
                    }
                    _vals = _loc_12;
                    (_sizeLevel + 1);
                    _vals[_free] = param2;
                    _keys[_free] = param1;
                    _free = _next[_free];
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                _loc_3 = _h;
                _loc_4 = param1.getKey();
                _loc_5 = _free;
                if (_loc_5 == -2147483648)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("val 0x80000000 is reserved", {fileName:"IntIntHashTable.hx", lineNumber:311, className:"de.polygonal.ds.IntIntHashTable", methodName:"setIfAbsent"});
                }
                _loc_6 = _loc_4 * 73856093 & _loc_3._mask;
                _loc_7 = _loc_3._hash[_loc_6];
                if (_loc_7 == -1)
                {
                    if (_loc_3._size >= _loc_3.maxSize)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_3.maxSize]), {fileName:"IntIntHashTable.hx", lineNumber:325, className:"de.polygonal.ds.IntIntHashTable", methodName:"setIfAbsent"});
                    }
                    if (_loc_3._size == _loc_3._capacity)
                    {
                        if (_loc_3._isResizable)
                        {
                            _loc_3._expand();
                        }
                        else
                        {
                            Boot.lastError = new Error();
                            throw new AssertionError(Sprintf.format("hash table is full (%d)", [_loc_3._capacity]), {fileName:"IntIntHashTable.hx", lineNumber:333, className:"de.polygonal.ds.IntIntHashTable", methodName:"setIfAbsent"});
                        }
                    }
                    _loc_8 = _loc_3._free * 3;
                    _loc_3._free = _loc_3._next[_loc_3._free];
                    _loc_3._hash[_loc_6] = _loc_8;
                    _loc_3._data[_loc_8] = _loc_4;
                    _loc_3._data[(_loc_8 + 1)] = _loc_5;
                    (_loc_3._size + 1);
                }
                else
                {
                    while (_loc_8 != -1)
                    {
                        if (_loc_3._data[_loc_8] == _loc_4)
                        {
                            break;
                        }
                    }
                    if (_loc_3._size == _loc_3._capacity)
                    {
                        if (_loc_3._isResizable)
                        {
                        }
                        else
                        {
                        }
                    }
                }
            }
            _vals[_free] = param2;
            _keys[_free] = param1;
            _free = _next[_free];
            return true;
            ;
            return false;
        }// end function

        public function set(param1:Object, param2:Object) : Boolean
        {
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:* = null as Vector.<int>;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:* = null as Array;
            var _loc_9:* = null as Array;
            var _loc_10:int = 0;
            var _loc_11:* = null as Array;
            var _loc_14:int = 0;
            if (size() == _h._capacity)
            {
                if (!_isResizable)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError(Sprintf.format("hash table is full (%d)", [_h._capacity]), {fileName:"HashTable.hx", lineNumber:358, className:"de.polygonal.ds.HashTable", methodName:"set"});
                }
                _loc_3 = _h._capacity;
                _loc_4 = _loc_3 << 1;
                _loc_5 = new Vector.<int>(_loc_4);
                _loc_6 = 0;
                while (_loc_6 < _loc_3)
                {
                    
                    _loc_6++;
                    _loc_7 = _loc_6;
                    _loc_5[_loc_7] = _next[_loc_7];
                }
                _next = _loc_5;
                _loc_9 = new Array(_loc_4);
                _loc_8 = _loc_9;
                _loc_9 = _keys;
                if (_loc_3 > _loc_9.length)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                }
                if (_loc_3 <= 0)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                }
                _loc_6 = 0;
                _loc_7 = 0;
                while (_loc_7 < _loc_3)
                {
                    
                    _loc_7++;
                    _loc_10 = _loc_7;
                    _loc_6++;
                    _loc_8[_loc_6] = _loc_9[_loc_10];
                }
                _keys = _loc_8;
                _loc_6 = _loc_3 - 1;
                _loc_7 = _loc_4 - 1;
                while (_loc_6 < _loc_7)
                {
                    
                    _loc_6++;
                    _loc_10 = _loc_6;
                    _next[_loc_10] = _loc_10 + 1;
                }
                _next[(_loc_4 - 1)] = -1;
                _free = _loc_3;
                _loc_11 = new Array(_loc_4);
                _loc_9 = _loc_11;
                _loc_11 = _vals;
                if (_loc_3 > _loc_11.length)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                }
                if (_loc_3 <= 0)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                }
                _loc_6 = 0;
                _loc_7 = 0;
                while (_loc_7 < _loc_3)
                {
                    
                    _loc_7++;
                    _loc_10 = _loc_7;
                    _loc_6++;
                    _loc_9[_loc_6] = _loc_11[_loc_10];
                }
                _vals = _loc_9;
                (_sizeLevel + 1);
            }
            var _loc_13:* = _h;
            _loc_3 = param1.getKey();
            _loc_4 = _free;
            if (_loc_4 == -2147483648)
            {
                Boot.lastError = new Error();
                throw new AssertionError("val 0x80000000 is reserved", {fileName:"IntIntHashTable.hx", lineNumber:769, className:"de.polygonal.ds.IntIntHashTable", methodName:"set"});
            }
            if (_loc_13._size >= _loc_13.maxSize)
            {
                Boot.lastError = new Error();
                throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_13.maxSize]), {fileName:"IntIntHashTable.hx", lineNumber:770, className:"de.polygonal.ds.IntIntHashTable", methodName:"set"});
            }
            if (_loc_13._size == _loc_13._capacity)
            {
                if (_loc_13._isResizable)
                {
                    _loc_13._expand();
                }
                else
                {
                    Boot.lastError = new Error();
                    throw new AssertionError(Sprintf.format("hash table is full (%d)", [_loc_13._capacity]), {fileName:"IntIntHashTable.hx", lineNumber:778, className:"de.polygonal.ds.IntIntHashTable", methodName:"set"});
                }
            }
            _loc_6 = _loc_13._free * 3;
            _loc_13._free = _loc_13._next[_loc_13._free];
            _loc_13._data[_loc_6] = _loc_3;
            _loc_13._data[(_loc_6 + 1)] = _loc_4;
            _loc_7 = _loc_3 * 73856093 & _loc_13._mask;
            _loc_10 = _loc_13._hash[_loc_7];
            while (_loc_14 != -1)
            {
            }
            var _loc_12:* = _loc_14 == -1 ? (_loc_13._hash[_loc_7] = _loc_6, _loc_13._size + 1, true) : (_loc_14 = _loc_13._data[_loc_10 + 2], // Jump to 1121, // label, _loc_10 = _loc_14, _loc_14 = _loc_13._data[_loc_14 + 2], if (!(_loc_14 == -1)) goto 1099, _loc_13._data[_loc_10 + 2] = _loc_6, _loc_13._size + 1, false);
            _vals[_free] = param2;
            _keys[_free] = param1;
            _free = _next[_free];
            return _loc_12;
        }// end function

        public function remove(param1:Object) : Boolean
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:* = null as Hashable;
            var _loc_8:* = null as IntIntHashTable;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            var _loc_11:Boolean = false;
            var _loc_12:int = 0;
            var _loc_13:Boolean = false;
            var _loc_14:int = 0;
            var _loc_15:* = null as Array;
            var _loc_16:* = null as Array;
            var _loc_17:* = null as Array;
            var _loc_18:* = null;
            var _loc_19:int = 0;
            var _loc_20:int = 0;
            var _loc_2:Boolean = false;
            var _loc_3:Array = [];
            _loc_4 = 0;
            _loc_5 = _h._capacity;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                if (_keys[_loc_6] != null)
                {
                    if (_vals[_loc_6] == param1)
                    {
                        _loc_3.push(_keys[_loc_6]);
                        _loc_2 = true;
                    }
                }
            }
            if (_loc_2)
            {
                _loc_4 = 0;
                while (_loc_4 < _loc_3.length)
                {
                    
                    _loc_7 = _loc_3[_loc_4];
                    _loc_4++;
                    _loc_8 = _h;
                    _loc_6 = _loc_7.getKey();
                    _loc_9 = _loc_8._hash[_loc_6 * 73856093 & _loc_8._mask];
                    while (_loc_9 != -1)
                    {
                        if (_loc_8._data[_loc_9] == _loc_6)
                        {
                            break;
                        }
                    }
                    _loc_5 = _loc_8._data[_loc_9] == _loc_6 ? (-2147483648) : (_loc_9 == -1 ? (_loc_8._data[(_loc_9 + 1)]) : (_loc_10 = -2147483648, _loc_9 = _loc_8._data[_loc_9 + 2], // Jump to 370, // label, if (!(_loc_8._data[_loc_9] == _loc_6)) goto 354, _loc_10 = _loc_8._data[(_loc_9 + 1)], // Jump to 378, _loc_9 = _loc_8._data[_loc_9 + 2], if (!(_loc_9 == -1)) goto 316, _loc_10));
                    if (_loc_5 == -2147483648)
                    {
                        continue;
                    }
                    _keys[_loc_5] = null;
                    _next[_loc_5] = _free;
                    _free = _loc_5;
                    _loc_11 = false;
                    if (_sizeLevel > 0)
                    {
                        if ((size() - 1) == _h._capacity >> 2)
                        {
                            if (_isResizable)
                            {
                                _loc_11 = true;
                            }
                        }
                    }
                    _loc_8 = _h;
                    _loc_6 = _loc_7.getKey();
                    _loc_9 = _loc_6 * 73856093 & _loc_8._mask;
                    _loc_10 = _loc_8._hash[_loc_9];
                    if (_loc_10 == -1)
                    {
                    }
                    else if (_loc_6 == _loc_8._data[_loc_10])
                    {
                        if (_loc_8._data[_loc_10 + 2] == -1)
                        {
                            _loc_8._hash[_loc_9] = -1;
                        }
                        else
                        {
                            _loc_8._hash[_loc_9] = _loc_8._data[_loc_10 + 2];
                        }
                        _loc_12 = _loc_10 / 3;
                        _loc_8._next[_loc_12] = _loc_8._free;
                        _loc_8._free = _loc_12;
                        _loc_8._data[(_loc_10 + 1)] = -2147483648;
                        _loc_8._data[_loc_10 + 2] = -1;
                        (_loc_8._size - 1);
                        if (_loc_8._sizeLevel > 0)
                        {
                            if (_loc_8._size == _loc_8._capacity >> 2)
                            {
                                if (_loc_8._isResizable)
                                {
                                    _loc_8._shrink();
                                }
                            }
                        }
                    }
                    else
                    {
                        _loc_13 = false;
                        _loc_12 = _loc_10;
                        _loc_10 = _loc_8._data[_loc_10 + 2];
                        while (_loc_10 != -1)
                        {
                            
                            if (_loc_8._data[_loc_10] == _loc_6)
                            {
                                _loc_13 = true;
                                break;
                            }
                            _loc_12 = _loc_10;
                            _loc_10 = _loc_8._data[_loc_12 + 2];
                        }
                        if (_loc_13)
                        {
                            _loc_8._data[_loc_12 + 2] = _loc_8._data[_loc_10 + 2];
                            _loc_14 = _loc_10 / 3;
                            _loc_8._next[_loc_14] = _loc_8._free;
                            _loc_8._free = _loc_14;
                            _loc_8._data[(_loc_10 + 1)] = -2147483648;
                            _loc_8._data[_loc_10 + 2] = -1;
                            (_loc_8._size - 1);
                            if (_loc_8._sizeLevel > 0)
                            {
                                if (_loc_8._size == _loc_8._capacity >> 2)
                                {
                                    if (_loc_8._isResizable)
                                    {
                                        _loc_8._shrink();
                                    }
                                }
                            }
                        }
                        else
                        {
                        }
                    }
                    if (_loc_11)
                    {
                        (_sizeLevel - 1);
                        _loc_6 = _h._capacity << 1;
                        _loc_9 = _h._capacity;
                        _next = new Vector.<int>(_loc_9);
                        _loc_10 = 0;
                        _loc_12 = _loc_9 - 1;
                        while (_loc_10 < _loc_12)
                        {
                            
                            _loc_10++;
                            _loc_14 = _loc_10;
                            _next[_loc_14] = _loc_14 + 1;
                        }
                        _next[(_loc_9 - 1)] = -1;
                        _free = 0;
                        _loc_16 = new Array(_loc_9);
                        _loc_15 = _loc_16;
                        _loc_17 = new Array(_loc_9);
                        _loc_16 = _loc_17;
                        _loc_18 = _h.iterator();
                        
                        if (_loc_18.hasNext())
                        {
                            _loc_10 = _loc_18.next();
                            _loc_15[_free] = _keys[_loc_10];
                            _loc_16[_free] = _vals[_loc_10];
                            _free = _next[_free];
                            ;
                        }
                        _keys = _loc_15;
                        _vals = _loc_16;
                        _loc_10 = 0;
                        _loc_12 = _free;
                        while (_loc_10 < _loc_12)
                        {
                            
                            _loc_10++;
                            _loc_14 = _loc_10;
                            _loc_8 = _h;
                            _loc_19 = _keys[_loc_14].getKey();
                            _loc_20 = _loc_8._hash[_loc_19 * 73856093 & _loc_8._mask];
                            if (_loc_20 == -1)
                            {
                                continue;
                            }
                            if (_loc_8._data[_loc_20] == _loc_19)
                            {
                                _loc_8._data[(_loc_20 + 1)] = _loc_14;
                                continue;
                            }
                            _loc_13 = false;
                            _loc_20 = _loc_8._data[_loc_20 + 2];
                            while (_loc_20 != -1)
                            {
                                
                                if (_loc_8._data[_loc_20] == _loc_19)
                                {
                                    _loc_8._data[(_loc_20 + 1)] = _loc_14;
                                    _loc_13 = true;
                                }
                                _loc_20 = _loc_8._data[_loc_20 + 2];
                            }
                        }
                    }
                }
                return true;
            }
            else
            {
                return false;
            }
        }// end function

        public function remap(param1:Object, param2:Object) : Boolean
        {
            var _loc_7:int = 0;
            var _loc_4:* = _h;
            var _loc_5:* = param1.getKey();
            var _loc_6:* = _loc_4._hash[_loc_5 * 73856093 & _loc_4._mask];
            while (_loc_6 != -1)
            {
                if (_loc_4._data[_loc_6] == _loc_5)
                {
                    break;
                }
            }
            var _loc_3:* = _loc_4._data[_loc_6] == _loc_5 ? (-2147483648) : (_loc_6 == -1 ? (_loc_4._data[(_loc_6 + 1)]) : (_loc_7 = -2147483648, _loc_6 = _loc_4._data[_loc_6 + 2], // Jump to 175, // label, if (!(_loc_4._data[_loc_6] == _loc_5)) goto 159, _loc_7 = _loc_4._data[(_loc_6 + 1)], // Jump to 183, _loc_6 = _loc_4._data[_loc_6 + 2], if (!(_loc_6 == -1)) goto 121, _loc_7));
            if (_loc_3 != -2147483648)
            {
                _vals[_loc_3] = param2;
                return true;
            }
            else
            {
                return false;
            }
        }// end function

        public function rehash(param1:int) : void
        {
            _h.rehash(param1);
            return;
        }// end function

        public function pack() : void
        {
            var _loc_3:int = 0;
            var _loc_1:int = 0;
            var _loc_2:* = _h._capacity;
            while (_loc_1 < _loc_2)
            {
                
                _loc_1++;
                _loc_3 = _loc_1;
                if (_keys[_loc_3] != null)
                {
                    _vals[_loc_3] = null;
                }
            }
            return;
        }// end function

        public function keys() : Itr
        {
            return new HashTableKeyIterator(this);
        }// end function

        public function iterator() : Itr
        {
            return new HashTableValIterator(this);
        }// end function

        public function isEmpty() : Boolean
        {
            return _h._size == 0;
        }// end function

        public function hasKey(param1:Object) : Boolean
        {
            var _loc_5:Boolean = false;
            var _loc_2:* = _h;
            var _loc_3:* = param1.getKey();
            var _loc_4:* = _loc_2._hash[_loc_3 * 73856093 & _loc_2._mask];
            while (_loc_4 != -1)
            {
                if (_loc_2._data[_loc_4] == _loc_3)
                {
                    break;
                }
            }
            return _loc_2._data[_loc_4] == _loc_3 ? (false) : (_loc_4 == -1 ? (true) : (_loc_5 = false, _loc_4 = _loc_2._data[_loc_4 + 2], // Jump to 133, // label, if (!(_loc_2._data[_loc_4] == _loc_3)) goto 118, _loc_5 = true, // Jump to 141, _loc_4 = _loc_2._data[_loc_4 + 2], if (!(_loc_4 == -1)) goto 95, _loc_5));
        }// end function

        public function has(param1:Object) : Boolean
        {
            var _loc_5:int = 0;
            var _loc_2:Boolean = false;
            var _loc_3:int = 0;
            var _loc_4:* = _h._capacity;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                if (_keys[_loc_5] != null)
                {
                    if (_vals[_loc_5] == param1)
                    {
                        _loc_2 = true;
                        break;
                    }
                }
            }
            return _loc_2;
        }// end function

        public function getFront(param1:Hashable) : Object
        {
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_3:* = _h;
            var _loc_4:* = param1.getKey();
            var _loc_5:* = param1.getKey() * 73856093 & _loc_3._mask;
            var _loc_6:* = _loc_3._hash[_loc_5];
            while (_loc_6 != -1)
            {
                if (_loc_3._data[_loc_6] == _loc_4)
                {
                    break;
                }
            }
            var _loc_2:* = _loc_3._data[_loc_6] == _loc_4 ? (-2147483648) : (_loc_6 == -1 ? (_loc_3._data[(_loc_6 + 1)]) : (_loc_7 = -2147483648, _loc_8 = _loc_6, _loc_9 = _loc_8, _loc_6 = _loc_3._data[_loc_6 + 2], // Jump to 240, // label, if (!(_loc_3._data[_loc_6] == _loc_4)) goto 221, _loc_7 = _loc_3._data[(_loc_6 + 1)], _loc_3._data[_loc_9 + 2] = _loc_3._data[_loc_6 + 2], _loc_3._data[_loc_6 + 2] = _loc_8, _loc_3._hash[_loc_5] = _loc_6, // Jump to 248, _loc_9 = _loc_6, _loc_6 = _loc_3._data[_loc_9 + 2], if (!(_loc_6 == -1)) goto 135, _loc_7));
            if (_loc_2 == -2147483648)
            {
                return nullValue;
            }
            else
            {
                return _vals[_loc_2];
            }
        }// end function

        public function getCollisionCount() : int
        {
            return _h.getCollisionCount();
        }// end function

        public function get(param1:Object) : Object
        {
            var _loc_6:int = 0;
            var _loc_3:* = _h;
            var _loc_4:* = param1.getKey();
            var _loc_5:* = _loc_3._hash[_loc_4 * 73856093 & _loc_3._mask];
            while (_loc_5 != -1)
            {
                if (_loc_3._data[_loc_5] == _loc_4)
                {
                    break;
                }
            }
            var _loc_2:* = _loc_3._data[_loc_5] == _loc_4 ? (-2147483648) : (_loc_5 == -1 ? (_loc_3._data[(_loc_5 + 1)]) : (_loc_6 = -2147483648, _loc_5 = _loc_3._data[_loc_5 + 2], // Jump to 166, // label, if (!(_loc_3._data[_loc_5] == _loc_4)) goto 151, _loc_6 = _loc_3._data[(_loc_5 + 1)], // Jump to 174, _loc_5 = _loc_3._data[_loc_5 + 2], if (!(_loc_5 == -1)) goto 115, _loc_6));
            if (_loc_2 == -2147483648)
            {
                return nullValue;
            }
            else
            {
                return _vals[_loc_2];
            }
        }// end function

        public function free() : void
        {
            var _loc_3:int = 0;
            var _loc_1:int = 0;
            var _loc_2:* = size();
            while (_loc_1 < _loc_2)
            {
                
                _loc_1++;
                _loc_3 = _loc_1;
                _vals[_loc_3] = null;
                _keys[_loc_3] = null;
            }
            _vals = null;
            _keys = null;
            _next = null;
            _h.free();
            _h = null;
            return;
        }// end function

        public function contains(param1:Object) : Boolean
        {
            var _loc_5:int = 0;
            var _loc_2:Boolean = false;
            var _loc_3:int = 0;
            var _loc_4:* = _h._capacity;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                if (_keys[_loc_5] != null)
                {
                    if (_vals[_loc_5] == param1)
                    {
                        _loc_2 = true;
                        break;
                    }
                }
            }
            return _loc_2;
        }// end function

        public function clr(param1:Object) : Boolean
        {
            var _loc_3:* = null as IntIntHashTable;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:Boolean = false;
            var _loc_8:int = 0;
            var _loc_9:Boolean = false;
            var _loc_10:int = 0;
            var _loc_11:* = null as Array;
            var _loc_12:* = null as Array;
            var _loc_13:* = null as Array;
            var _loc_14:* = null;
            var _loc_15:int = 0;
            var _loc_16:int = 0;
            _loc_3 = _h;
            _loc_4 = param1.getKey();
            _loc_5 = _loc_3._hash[_loc_4 * 73856093 & _loc_3._mask];
            while (_loc_5 != -1)
            {
                if (_loc_3._data[_loc_5] == _loc_4)
                {
                    break;
                }
            }
            var _loc_2:* = _loc_3._data[_loc_5] == _loc_4 ? (-2147483648) : (_loc_5 == -1 ? (_loc_3._data[(_loc_5 + 1)]) : (_loc_6 = -2147483648, _loc_5 = _loc_3._data[_loc_5 + 2], // Jump to 219, // label, if (!(_loc_3._data[_loc_5] == _loc_4)) goto 204, _loc_6 = _loc_3._data[(_loc_5 + 1)], // Jump to 227, _loc_5 = _loc_3._data[_loc_5 + 2], if (!(_loc_5 == -1)) goto 168, _loc_6));
            if (_loc_2 == -2147483648)
            {
                return false;
            }
            else
            {
                _keys[_loc_2] = null;
                _next[_loc_2] = _free;
                _free = _loc_2;
                _loc_7 = false;
                if (_sizeLevel > 0)
                {
                    if ((size() - 1) == _h._capacity >> 2)
                    {
                        if (_isResizable)
                        {
                            _loc_7 = true;
                        }
                    }
                }
                _loc_3 = _h;
                _loc_4 = param1.getKey();
                _loc_5 = _loc_4 * 73856093 & _loc_3._mask;
                _loc_6 = _loc_3._hash[_loc_5];
                if (_loc_6 == -1)
                {
                }
                else if (_loc_4 == _loc_3._data[_loc_6])
                {
                    if (_loc_3._data[_loc_6 + 2] == -1)
                    {
                        _loc_3._hash[_loc_5] = -1;
                    }
                    else
                    {
                        _loc_3._hash[_loc_5] = _loc_3._data[_loc_6 + 2];
                    }
                    _loc_8 = _loc_6 / 3;
                    _loc_3._next[_loc_8] = _loc_3._free;
                    _loc_3._free = _loc_8;
                    _loc_3._data[(_loc_6 + 1)] = -2147483648;
                    _loc_3._data[_loc_6 + 2] = -1;
                    (_loc_3._size - 1);
                    if (_loc_3._sizeLevel > 0)
                    {
                        if (_loc_3._size == _loc_3._capacity >> 2)
                        {
                            if (_loc_3._isResizable)
                            {
                                _loc_3._shrink();
                            }
                        }
                    }
                }
                else
                {
                    _loc_9 = false;
                    _loc_8 = _loc_6;
                    _loc_6 = _loc_3._data[_loc_6 + 2];
                    while (_loc_6 != -1)
                    {
                        
                        if (_loc_3._data[_loc_6] == _loc_4)
                        {
                            _loc_9 = true;
                            break;
                        }
                        _loc_8 = _loc_6;
                        _loc_6 = _loc_3._data[_loc_8 + 2];
                    }
                    if (_loc_9)
                    {
                        _loc_3._data[_loc_8 + 2] = _loc_3._data[_loc_6 + 2];
                        _loc_10 = _loc_6 / 3;
                        _loc_3._next[_loc_10] = _loc_3._free;
                        _loc_3._free = _loc_10;
                        _loc_3._data[(_loc_6 + 1)] = -2147483648;
                        _loc_3._data[_loc_6 + 2] = -1;
                        (_loc_3._size - 1);
                        if (_loc_3._sizeLevel > 0)
                        {
                            if (_loc_3._size == _loc_3._capacity >> 2)
                            {
                                if (_loc_3._isResizable)
                                {
                                    _loc_3._shrink();
                                }
                            }
                        }
                    }
                    else
                    {
                    }
                }
                if (_loc_7)
                {
                    (_sizeLevel - 1);
                    _loc_4 = _h._capacity << 1;
                    _loc_5 = _h._capacity;
                    _next = new Vector.<int>(_loc_5);
                    _loc_6 = 0;
                    _loc_8 = _loc_5 - 1;
                    while (_loc_6 < _loc_8)
                    {
                        
                        _loc_6++;
                        _loc_10 = _loc_6;
                        _next[_loc_10] = _loc_10 + 1;
                    }
                    _next[(_loc_5 - 1)] = -1;
                    _free = 0;
                    _loc_12 = new Array(_loc_5);
                    _loc_11 = _loc_12;
                    _loc_13 = new Array(_loc_5);
                    _loc_12 = _loc_13;
                    _loc_14 = _h.iterator();
                    
                    if (_loc_14.hasNext())
                    {
                        _loc_6 = _loc_14.next();
                        _loc_11[_free] = _keys[_loc_6];
                        _loc_12[_free] = _vals[_loc_6];
                        _free = _next[_free];
                        ;
                    }
                    _keys = _loc_11;
                    _vals = _loc_12;
                    _loc_6 = 0;
                    _loc_8 = _free;
                    while (_loc_6 < _loc_8)
                    {
                        
                        _loc_6++;
                        _loc_10 = _loc_6;
                        _loc_3 = _h;
                        _loc_15 = _keys[_loc_10].getKey();
                        _loc_16 = _loc_3._hash[_loc_15 * 73856093 & _loc_3._mask];
                        if (_loc_16 == -1)
                        {
                            continue;
                        }
                        if (_loc_3._data[_loc_16] == _loc_15)
                        {
                            _loc_3._data[(_loc_16 + 1)] = _loc_10;
                            continue;
                        }
                        _loc_9 = false;
                        _loc_16 = _loc_3._data[_loc_16 + 2];
                        while (_loc_16 != -1)
                        {
                            
                            if (_loc_3._data[_loc_16] == _loc_15)
                            {
                                _loc_3._data[(_loc_16 + 1)] = _loc_10;
                                _loc_9 = true;
                            }
                            _loc_16 = _loc_3._data[_loc_16 + 2];
                        }
                    }
                }
                return true;
            }
        }// end function

        public function clone(param1:Boolean, param2:Object = ) : Collection
        {
            var _loc_4:* = null as Array;
            var _loc_5:* = null as Array;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:* = null as Cloneable;
            var _loc_3:* = Type.createEmptyInstance(HashTable);
            _loc_3.nullValue = nullValue;
            _loc_3._h = _h.clone(false);
            if (param1)
            {
                _loc_3._vals = _vals.copy();
            }
            else
            {
                _loc_5 = new Array(_h._capacity);
                _loc_4 = _loc_5;
                if (param2 != null)
                {
                    _loc_6 = 0;
                    _loc_7 = _h._capacity;
                    while (_loc_6 < _loc_7)
                    {
                        
                        _loc_6++;
                        _loc_8 = _loc_6;
                        if (_keys[_loc_8] != null)
                        {
                            _loc_4[_loc_8] = this.param2(_vals[_loc_8]);
                        }
                    }
                }
                else
                {
                    _loc_9 = null;
                    _loc_6 = 0;
                    _loc_7 = _h._capacity;
                    while (_loc_6 < _loc_7)
                    {
                        
                        _loc_6++;
                        _loc_8 = _loc_6;
                        if (_keys[_loc_8] != null)
                        {
                            if (!Std.is(_vals[_loc_8], Cloneable))
                            {
                                Boot.lastError = new Error();
                                throw new AssertionError(Sprintf.format("element is not of type Cloneable (%s)", [_vals[_loc_8]]), {fileName:"HashTable.hx", lineNumber:603, className:"de.polygonal.ds.HashTable", methodName:"clone"});
                            }
                            _loc_9 = _vals[_loc_8];
                            _loc_4[_loc_8] = _loc_9.clone();
                        }
                    }
                }
                _loc_3._vals = _loc_4;
            }
            _loc_3._sizeLevel = _sizeLevel;
            _loc_3._free = _free;
            _loc_3._next = new Vector.<int>(_next.length);
            _loc_6 = 0;
            _loc_7 = _next.length;
            while (_loc_6 < _loc_7)
            {
                
                _loc_6++;
                _loc_8 = _loc_6;
                _loc_3._next[_loc_8] = _next[_loc_8];
            }
            _loc_3._keys = _keys.copy();
            return _loc_3;
        }// end function

        public function clear(param1:Boolean = false) : void
        {
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            _h.clear();
            if (param1)
            {
                _loc_2 = 0;
                _loc_3 = _h._capacity;
                while (_loc_2 < _loc_3)
                {
                    
                    _loc_2++;
                    _loc_4 = _loc_2;
                    _vals[_loc_4] = null;
                    _keys[_loc_4] = null;
                }
            }
            _loc_2 = 0;
            _loc_3 = _h._capacity - 1;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                _next[_loc_4] = _loc_4 + 1;
            }
            _next[(_h._capacity - 1)] = -1;
            _free = 0;
            return;
        }// end function

        public function _slotCountGetter() : int
        {
            return (_h._mask + 1);
        }// end function

        public function _shrink() : void
        {
            var _loc_3:int = 0;
            var _loc_5:int = 0;
            var _loc_10:* = null as IntIntHashTable;
            var _loc_11:int = 0;
            var _loc_12:int = 0;
            var _loc_13:Boolean = false;
            (_sizeLevel - 1);
            var _loc_1:* = _h._capacity << 1;
            var _loc_2:* = _h._capacity;
            _next = new Vector.<int>(_loc_2);
            _loc_3 = 0;
            var _loc_4:* = _loc_2 - 1;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                _next[_loc_5] = _loc_5 + 1;
            }
            _next[(_loc_2 - 1)] = -1;
            _free = 0;
            var _loc_7:* = new Array(_loc_2);
            var _loc_6:* = new Array(_loc_2);
            var _loc_8:* = new Array(_loc_2);
            _loc_7 = new Array(_loc_2);
            var _loc_9:* = _h.iterator();
            
            if (_loc_9.hasNext())
            {
                _loc_3 = _loc_9.next();
                _loc_6[_free] = _keys[_loc_3];
                _loc_7[_free] = _vals[_loc_3];
                _free = _next[_free];
                ;
            }
            _keys = _loc_6;
            _vals = _loc_7;
            _loc_3 = 0;
            _loc_4 = _free;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                _loc_10 = _h;
                _loc_11 = _keys[_loc_5].getKey();
                _loc_12 = _loc_10._hash[_loc_11 * 73856093 & _loc_10._mask];
                if (_loc_12 == -1)
                {
                    continue;
                }
                if (_loc_10._data[_loc_12] == _loc_11)
                {
                    _loc_10._data[(_loc_12 + 1)] = _loc_5;
                    continue;
                }
                _loc_13 = false;
                _loc_12 = _loc_10._data[_loc_12 + 2];
                while (_loc_12 != -1)
                {
                    
                    if (_loc_10._data[_loc_12] == _loc_11)
                    {
                        _loc_10._data[(_loc_12 + 1)] = _loc_5;
                        _loc_13 = true;
                    }
                    _loc_12 = _loc_10._data[_loc_12 + 2];
                }
            }
            return;
        }// end function

        public function _loadFactorGetter() : Number
        {
            var _loc_1:* = _h;
            return _loc_1._size / (_loc_1._mask + 1);
        }// end function

        public function _expand(param1:int) : void
        {
            var _loc_5:int = 0;
            var _loc_8:int = 0;
            var _loc_2:* = param1 << 1;
            var _loc_3:* = new Vector.<int>(_loc_2);
            var _loc_4:int = 0;
            while (_loc_4 < param1)
            {
                
                _loc_4++;
                _loc_5 = _loc_4;
                _loc_3[_loc_5] = _next[_loc_5];
            }
            _next = _loc_3;
            var _loc_7:* = new Array(_loc_2);
            var _loc_6:* = new Array(_loc_2);
            _loc_7 = _keys;
            if (param1 > _loc_7.length)
            {
                Boot.lastError = new Error();
                throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
            }
            if (param1 <= 0)
            {
                Boot.lastError = new Error();
                throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
            }
            _loc_4 = 0;
            _loc_5 = 0;
            while (_loc_5 < param1)
            {
                
                _loc_5++;
                _loc_8 = _loc_5;
                _loc_4++;
                _loc_6[_loc_4] = _loc_7[_loc_8];
            }
            _keys = _loc_6;
            _loc_4 = param1 - 1;
            _loc_5 = _loc_2 - 1;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_8 = _loc_4;
                _next[_loc_8] = _loc_8 + 1;
            }
            _next[(_loc_2 - 1)] = -1;
            _free = param1;
            var _loc_9:* = new Array(_loc_2);
            _loc_7 = new Array(_loc_2);
            _loc_9 = _vals;
            if (param1 > _loc_9.length)
            {
                Boot.lastError = new Error();
                throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
            }
            if (param1 <= 0)
            {
                Boot.lastError = new Error();
                throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
            }
            _loc_4 = 0;
            _loc_5 = 0;
            while (_loc_5 < param1)
            {
                
                _loc_5++;
                _loc_8 = _loc_5;
                _loc_4++;
                _loc_7[_loc_4] = _loc_9[_loc_8];
            }
            _vals = _loc_7;
            (_sizeLevel + 1);
            return;
        }// end function

        public function _capacityGetter() : int
        {
            return _h._capacity;
        }// end function

        public function __setNext(param1:int, param2:int) : void
        {
            _next[param1] = param2;
            return;
        }// end function

        public function __key(param1:Hashable) : int
        {
            return param1.getKey();
        }// end function

        public function __getNext(param1:int) : int
        {
            return _next[param1];
        }// end function

    }
}
