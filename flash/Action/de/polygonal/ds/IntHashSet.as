﻿package de.polygonal.ds
{
    import __AS3__.vec.*;
    import de.polygonal.core.fmt.*;
    import de.polygonal.core.util.*;
    import de.polygonal.ds.*;
    import flash.*;

    public class IntHashSet extends Object implements Set
    {
        public var slotCount:int;
        public var maxSize:int;
        public var loadFactor:Number;
        public var capacity:int;
        public var _sizeLevel:int;
        public var _size:int;
        public var _next:Vector.<int>;
        public var _mask:int;
        public var _isResizable:Boolean;
        public var _hash:Vector.<int>;
        public var _free:int;
        public var _data:Vector.<int>;
        public var _capacity:int;
        public static var VAL_ABSENT:int;
        public static var EMPTY_SLOT:int;
        public static var NULL_POINTER:int;

        public function IntHashSet(param1:int = , param2:int = -1, param3:Boolean = true, param4:int = -1) : void
        {
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            if (Boot.skip_constructor)
            {
                return;
            }
            if (param1 > 0)
            {
            }
            if ((param1 & (param1 - 1)) != 0)
            {
                Boot.lastError = new Error();
                throw new AssertionError("slotCount is not a power of 2", {fileName:"IntHashSet.hx", lineNumber:133, className:"de.polygonal.ds.IntHashSet", methodName:"new"});
            }
            _isResizable = param3;
            if (param2 == -1)
            {
                param2 = param1;
            }
            else
            {
                if (param2 < 2)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("minimum initCapacity is 2", {fileName:"IntHashSet.hx", lineNumber:143, className:"de.polygonal.ds.IntHashSet", methodName:"new"});
                }
                if (param1 > 0)
                {
                }
                if ((param1 & (param1 - 1)) != 0)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("initCapacity is not a power of 2", {fileName:"IntHashSet.hx", lineNumber:144, className:"de.polygonal.ds.IntHashSet", methodName:"new"});
                }
            }
            _free = 0;
            _capacity = param2;
            _size = 0;
            _mask = param1 - 1;
            _sizeLevel = 0;
            maxSize = param4 == -1 ? (2147483647) : (param4);
            _hash = new Vector.<int>(param1);
            var _loc_5:int = 0;
            while (_loc_5 < param1)
            {
                
                _loc_5++;
                _loc_6 = _loc_5;
                _hash[_loc_6] = -1;
            }
            _data = new Vector.<int>(_capacity << 1);
            _next = new Vector.<int>(_capacity);
            _loc_5 = 1;
            _loc_6 = 0;
            while (_loc_6 < param2)
            {
                
                _loc_6++;
                _loc_7 = _loc_6;
                _data[(_loc_5 - 1)] = -2147483648;
                _data[_loc_5] = -1;
                _loc_5 = _loc_5 + 2;
            }
            _loc_6 = 0;
            _loc_7 = _capacity - 1;
            while (_loc_6 < _loc_7)
            {
                
                _loc_6++;
                _loc_8 = _loc_6;
                _next[_loc_8] = _loc_8 + 1;
            }
            _next[(_capacity - 1)] = -1;
            return;
        }// end function

        public function toString() : String
        {
            var _loc_3:int = 0;
            var _loc_1:* = Sprintf.format("\n{IntHashSet, size/capacity: %d/%d, load factor: %.2f }", [_size, _capacity, _size / (_mask + 1)]);
            if (_size == 0)
            {
                return _loc_1;
            }
            _loc_1 = _loc_1 + "\n|<\n";
            var _loc_2:* = iterator();
            
            if (_loc_2.hasNext())
            {
                _loc_3 = _loc_2.next();
                _loc_1 = _loc_1 + Sprintf.format("  %d\n", [_loc_3]);
                ;
            }
            _loc_1 = _loc_1 + ">|";
            return _loc_1;
        }// end function

        public function toDA() : DA
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_1:* = new DA(_size);
            var _loc_2:int = 0;
            var _loc_3:* = _capacity;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                _loc_5 = _data[_loc_4 << 1];
                if (_loc_5 != -2147483648)
                {
                    _loc_6 = _loc_1._size;
                    if (_loc_6 >= 0)
                    {
                    }
                    if (_loc_6 > _loc_1._size)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("the index %d is out of range %d", [_loc_6, _loc_1._size]), {fileName:"DA.hx", lineNumber:157, className:"de.polygonal.ds.DA", methodName:"set"});
                    }
                    if (_loc_6 >= _loc_1._maxSize)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_1._maxSize]), {fileName:"DA.hx", lineNumber:158, className:"de.polygonal.ds.DA", methodName:"set"});
                    }
                    _loc_1._a[_loc_6] = _loc_5;
                    if (_loc_6 >= _loc_1._size)
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
            var _loc_7:int = 0;
            var _loc_2:* = new Array(_size);
            var _loc_1:* = _loc_2;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:* = _capacity;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _loc_7 = _data[_loc_6 << 1];
                if (_loc_7 != -2147483648)
                {
                    _loc_3++;
                    _loc_1[_loc_3] = _loc_7;
                }
            }
            return _loc_1;
        }// end function

        public function size() : int
        {
            return _size;
        }// end function

        public function set(param1:Object) : Boolean
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            if (param1 == -2147483648)
            {
                Boot.lastError = new Error();
                throw new AssertionError("value 0x80000000 is reserved", {fileName:"IntHashSet.hx", lineNumber:408, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
            }
            if (_size >= maxSize)
            {
                Boot.lastError = new Error();
                throw new AssertionError(Sprintf.format("size equals max size (%d)", [maxSize]), {fileName:"IntHashSet.hx", lineNumber:409, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
            }
            var _loc_2:* = param1 * 73856093 & _mask;
            var _loc_3:* = _hash[_loc_2];
            if (_loc_3 == -1)
            {
                if (_size == _capacity)
                {
                    if (!_isResizable)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("hash set is full (%d)", [_capacity]), {fileName:"IntHashSet.hx", lineNumber:425, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
                    }
                    _expand();
                }
                _loc_4 = _free << 1;
                _free = _next[_free];
                _hash[_loc_2] = _loc_4;
                _data[_loc_4] = param1;
                (_size + 1);
                return true;
            }
            else
            {
                if (_data[_loc_3] == param1)
                {
                    return false;
                }
                else
                {
                    _loc_4 = _data[(_loc_3 + 1)];
                    while (_loc_4 != -1)
                    {
                        
                        if (_data[_loc_4] == param1)
                        {
                            _loc_3 = -1;
                            break;
                        }
                        _loc_3 = _loc_4;
                        _loc_4 = _data[(_loc_4 + 1)];
                    }
                    if (_loc_3 == -1)
                    {
                        return false;
                    }
                    else
                    {
                        if (_size == _capacity)
                        {
                            if (!_isResizable)
                            {
                                Boot.lastError = new Error();
                                throw new AssertionError(Sprintf.format("hash set is full (%d)", [_capacity]), {fileName:"IntHashSet.hx", lineNumber:492, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
                            }
                            _expand();
                        }
                        _loc_5 = _free << 1;
                        _free = _next[_free];
                        _data[_loc_5] = param1;
                        _data[(_loc_3 + 1)] = _loc_5;
                        (_size + 1);
                    }
                    return true;
                }
            }
        }// end function

        public function remove(param1:Object) : Boolean
        {
            var _loc_4:int = 0;
            var _loc_5:Boolean = false;
            var _loc_6:int = 0;
            var _loc_2:* = param1 * 73856093 & _mask;
            var _loc_3:* = _hash[_loc_2];
            if (_loc_3 == -1)
            {
                return false;
            }
            else
            {
                if (param1 == _data[_loc_3])
                {
                    if (_data[(_loc_3 + 1)] == -1)
                    {
                        _hash[_loc_2] = -1;
                    }
                    else
                    {
                        _hash[_loc_2] = _data[(_loc_3 + 1)];
                    }
                    _loc_4 = _loc_3 >> 1;
                    _next[_loc_4] = _free;
                    _free = _loc_4;
                    _data[_loc_3] = -2147483648;
                    _data[(_loc_3 + 1)] = -1;
                    (_size - 1);
                    if (_sizeLevel > 0)
                    {
                        if (_size == _capacity >> 2)
                        {
                            if (_isResizable)
                            {
                                _shrink();
                            }
                        }
                    }
                    return true;
                }
                else
                {
                    _loc_5 = false;
                    _loc_4 = _loc_3;
                    _loc_3 = _data[(_loc_3 + 1)];
                    while (_loc_3 != -1)
                    {
                        
                        if (_data[_loc_3] == param1)
                        {
                            _loc_5 = true;
                            break;
                        }
                        _loc_4 = _loc_3;
                        _loc_3 = _data[(_loc_4 + 1)];
                    }
                    if (_loc_5)
                    {
                        _data[(_loc_4 + 1)] = _data[(_loc_3 + 1)];
                        _loc_6 = _loc_3 >> 1;
                        _next[_loc_6] = _free;
                        _free = _loc_6;
                        _data[_loc_3] = -2147483648;
                        _data[(_loc_3 + 1)] = -1;
                        (_size - 1);
                        if (_sizeLevel > 0)
                        {
                            if (_size == _capacity >> 2)
                            {
                                if (_isResizable)
                                {
                                    _shrink();
                                }
                            }
                        }
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
        }// end function

        public function rehash(param1:int) : void
        {
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            if (param1 > 0)
            {
            }
            if ((param1 & (param1 - 1)) != 0)
            {
                Boot.lastError = new Error();
                throw new AssertionError("slotCount is not a power of 2", {fileName:"IntHashSet.hx", lineNumber:239, className:"de.polygonal.ds.IntHashSet", methodName:"rehash"});
            }
            if (param1 == (_mask + 1))
            {
                return;
            }
            var _loc_2:* = new IntHashSet(param1, _capacity);
            var _loc_3:int = 0;
            var _loc_4:* = _capacity;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                _loc_6 = _data[_loc_5 << 1];
                if (_loc_6 != -2147483648)
                {
                    if (_loc_6 == -2147483648)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("value 0x80000000 is reserved", {fileName:"IntHashSet.hx", lineNumber:408, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
                    }
                    if (_loc_2._size >= _loc_2.maxSize)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_2.maxSize]), {fileName:"IntHashSet.hx", lineNumber:409, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
                    }
                    _loc_7 = _loc_6 * 73856093 & _loc_2._mask;
                    _loc_8 = _loc_2._hash[_loc_7];
                    if (_loc_8 == -1)
                    {
                        if (_loc_2._size == _loc_2._capacity)
                        {
                            if (!_loc_2._isResizable)
                            {
                                Boot.lastError = new Error();
                                throw new AssertionError(Sprintf.format("hash set is full (%d)", [_loc_2._capacity]), {fileName:"IntHashSet.hx", lineNumber:425, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
                            }
                            _loc_2._expand();
                        }
                        _loc_9 = _loc_2._free << 1;
                        _loc_2._free = _loc_2._next[_loc_2._free];
                        _loc_2._hash[_loc_7] = _loc_9;
                        _loc_2._data[_loc_9] = _loc_6;
                        (_loc_2._size + 1);
                        continue;
                    }
                    if (_loc_2._data[_loc_8] == _loc_6)
                    {
                        continue;
                    }
                    _loc_9 = _loc_2._data[(_loc_8 + 1)];
                    while (_loc_9 != -1)
                    {
                        
                        if (_loc_2._data[_loc_9] == _loc_6)
                        {
                            _loc_8 = -1;
                            break;
                        }
                        _loc_8 = _loc_9;
                        _loc_9 = _loc_2._data[(_loc_9 + 1)];
                    }
                    if (_loc_8 == -1)
                    {
                        continue;
                    }
                    if (_loc_2._size == _loc_2._capacity)
                    {
                        if (!_loc_2._isResizable)
                        {
                            Boot.lastError = new Error();
                            throw new AssertionError(Sprintf.format("hash set is full (%d)", [_loc_2._capacity]), {fileName:"IntHashSet.hx", lineNumber:492, className:"de.polygonal.ds.IntHashSet", methodName:"set"});
                        }
                        _loc_2._expand();
                    }
                    _loc_10 = _loc_2._free << 1;
                    _loc_2._free = _loc_2._next[_loc_2._free];
                    _loc_2._data[_loc_10] = _loc_6;
                    _loc_2._data[(_loc_8 + 1)] = _loc_10;
                    (_loc_2._size + 1);
                }
            }
            _hash = _loc_2._hash;
            _data = _loc_2._data;
            _next = _loc_2._next;
            _mask = _loc_2._mask;
            _free = _loc_2._free;
            _sizeLevel = _loc_2._sizeLevel;
            return;
        }// end function

        public function iterator() : Itr
        {
            return new IntHashSetIterator(this);
        }// end function

        public function isEmpty() : Boolean
        {
            return _size == 0;
        }// end function

        public function hasFront(param1:int) : Boolean
        {
            var _loc_4:Boolean = false;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            if (param1 == -2147483648)
            {
                Boot.lastError = new Error();
                throw new AssertionError("value 0x80000000 is reserved", {fileName:"IntHashSet.hx", lineNumber:283, className:"de.polygonal.ds.IntHashSet", methodName:"hasFront"});
            }
            var _loc_2:* = param1 * 73856093 & _mask;
            var _loc_3:* = _hash[_loc_2];
            if (_loc_3 == -1)
            {
                return false;
            }
            else
            {
                if (_data[_loc_3] == param1)
                {
                    return true;
                }
                else
                {
                    _loc_4 = false;
                    _loc_5 = _loc_3;
                    _loc_6 = _loc_5;
                    _loc_3 = _data[(_loc_3 + 1)];
                    while (_loc_3 != -1)
                    {
                        
                        if (_data[_loc_3] == param1)
                        {
                            _data[(_loc_6 + 1)] = _data[(_loc_3 + 1)];
                            _data[(_loc_3 + 1)] = _loc_5;
                            _hash[_loc_2] = _loc_3;
                            _loc_4 = true;
                            break;
                        }
                        _loc_6 = _loc_3;
                        _loc_3 = _data[(_loc_6 + 1)];
                    }
                    return _loc_4;
                }
            }
        }// end function

        public function has(param1:Object) : Boolean
        {
            var _loc_3:Boolean = false;
            if (param1 == -2147483648)
            {
                Boot.lastError = new Error();
                throw new AssertionError("value 0x80000000 is reserved", {fileName:"IntHashSet.hx", lineNumber:351, className:"de.polygonal.ds.IntHashSet", methodName:"has"});
            }
            var _loc_2:* = _hash[param1 * 73856093 & _mask];
            if (_loc_2 == -1)
            {
                return false;
            }
            else
            {
                if (_data[_loc_2] == param1)
                {
                    return true;
                }
                else
                {
                    _loc_3 = false;
                    _loc_2 = _data[(_loc_2 + 1)];
                    while (_loc_2 != -1)
                    {
                        
                        if (_data[_loc_2] == param1)
                        {
                            _loc_3 = true;
                            break;
                        }
                        _loc_2 = _data[(_loc_2 + 1)];
                    }
                    return _loc_3;
                }
            }
        }// end function

        public function getCollisionCount() : int
        {
            var _loc_2:int = 0;
            var _loc_5:int = 0;
            var _loc_1:int = 0;
            var _loc_3:int = 0;
            var _loc_4:* = _mask + 1;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                _loc_2 = _hash[_loc_5];
                if (_loc_2 == -1)
                {
                    continue;
                }
                _loc_2 = _data[(_loc_2 + 1)];
                while (_loc_2 != -1)
                {
                    
                    _loc_2 = _data[(_loc_2 + 1)];
                    _loc_1++;
                }
            }
            return _loc_1;
        }// end function

        public function free() : void
        {
            _hash = null;
            _data = null;
            _next = null;
            return;
        }// end function

        public function contains(param1:Object) : Boolean
        {
            var _loc_3:Boolean = false;
            if (param1 == -2147483648)
            {
                Boot.lastError = new Error();
                throw new AssertionError("value 0x80000000 is reserved", {fileName:"IntHashSet.hx", lineNumber:351, className:"de.polygonal.ds.IntHashSet", methodName:"has"});
            }
            var _loc_2:* = _hash[param1 * 73856093 & _mask];
            while (_loc_2 != -1)
            {
                if (_data[_loc_2] == param1)
                {
                    break;
                }
            }
            return _data[_loc_2] == param1 ? (false) : (_loc_2 == -1 ? (true) : (_loc_3 = false, _loc_2 = _data[(_loc_2 + 1)], // Jump to 179, // label, if (!(_data[_loc_2] == param1)) goto 164, _loc_3 = true, // Jump to 186, _loc_2 = _data[(_loc_2 + 1)], if (!(_loc_2 == -1)) goto 141, _loc_3));
        }// end function

        public function clone(param1:Boolean, param2:Object = ) : Collection
        {
            var _loc_6:int = 0;
            var _loc_3:* = Type.createEmptyInstance(IntHashSet);
            _loc_3._hash = new Vector.<int>(_hash.length);
            _loc_3._data = new Vector.<int>(_data.length);
            _loc_3._next = new Vector.<int>(_next.length);
            var _loc_4:int = 0;
            var _loc_5:* = _hash.length;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _loc_3._hash[_loc_6] = _hash[_loc_6];
            }
            _loc_4 = 0;
            _loc_5 = _data.length;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _loc_3._data[_loc_6] = _data[_loc_6];
            }
            _loc_4 = 0;
            _loc_5 = _next.length;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _loc_3._next[_loc_6] = _next[_loc_6];
            }
            _loc_3._mask = _mask;
            _loc_3._capacity = _capacity;
            _loc_3._free = _free;
            _loc_3._size = _size;
            _loc_3._sizeLevel = _sizeLevel;
            return _loc_3;
        }// end function

        public function clear(param1:Boolean = false) : void
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            if (_sizeLevel > 0)
            {
                _capacity = _capacity >> _sizeLevel;
                _sizeLevel = 0;
                _data = new Vector.<int>(_capacity << 1);
                _next = new Vector.<int>(_capacity);
            }
            var _loc_2:int = 0;
            var _loc_3:* = _mask + 1;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                _hash[_loc_4] = -1;
            }
            _loc_2 = 1;
            _loc_3 = 0;
            _loc_4 = _capacity;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                _data[(_loc_2 - 1)] = -2147483648;
                _data[_loc_2] = -1;
                _loc_2 = _loc_2 + 2;
            }
            _loc_3 = 0;
            _loc_4 = _capacity - 1;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                _next[_loc_5] = _loc_5 + 1;
            }
            _next[(_capacity - 1)] = -1;
            _free = 0;
            _size = 0;
            return;
        }// end function

        public function _slotCountGetter() : int
        {
            return (_mask + 1);
        }// end function

        public function _shrink() : void
        {
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            (_sizeLevel - 1);
            var _loc_1:* = _capacity;
            var _loc_2:* = _loc_1 >> 1;
            _capacity = _loc_2;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:* = _mask + 1;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _loc_7 = _hash[_loc_6];
                if (_loc_7 == -1)
                {
                    continue;
                }
                _loc_3 = 0;
                while (true)
                {
                    
                    if (_data[_loc_3] == -2147483648)
                    {
                        break;
                    }
                    _loc_3 = _loc_3 + 2;
                }
                _loc_8 = _data[(_loc_7 + 1)];
                if (_loc_3 < _loc_7)
                {
                    if (_loc_3 == _loc_7)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("e != j", {fileName:"IntHashSet.hx", lineNumber:894, className:"de.polygonal.ds.IntHashSet", methodName:"_shrink"});
                    }
                    _data[_loc_3] = _data[_loc_7];
                    _data[(_loc_3 + 1)] = _loc_8;
                    _data[_loc_7] = -2147483648;
                    _data[(_loc_7 + 1)] = -1;
                    _hash[_loc_6] = _loc_3;
                }
                _loc_9 = _loc_7;
                _loc_7 = _loc_8;
                while (_loc_7 != -1)
                {
                    
                    _loc_3 = 0;
                    while (true)
                    {
                        
                        if (_data[_loc_3] == -2147483648)
                        {
                            break;
                        }
                        _loc_3 = _loc_3 + 2;
                    }
                    if (_loc_7 == _loc_3)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("j != e", {fileName:"IntHashSet.hx", lineNumber:929, className:"de.polygonal.ds.IntHashSet", methodName:"_shrink"});
                    }
                    _loc_8 = _data[(_loc_7 + 1)];
                    if (_loc_3 < _loc_7)
                    {
                        _data[_loc_3] = _data[_loc_7];
                        _data[(_loc_3 + 1)] = _loc_8;
                        _data[_loc_7] = -2147483648;
                        _data[(_loc_7 + 1)] = -1;
                        _data[(_loc_9 + 1)] = _loc_3;
                    }
                    _loc_9 = _loc_7;
                    _loc_7 = _loc_8;
                }
            }
            var _loc_10:* = new Vector.<int>(_loc_2 << 1);
            _loc_4 = 0;
            _loc_5 = _loc_2 << 1;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _loc_10[_loc_6] = _data[_loc_6];
            }
            _data = _loc_10;
            _next = new Vector.<int>(_loc_2);
            _loc_4 = 0;
            _loc_5 = _loc_2 - 1;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _next[_loc_6] = _loc_6 + 1;
            }
            _next[(_loc_2 - 1)] = -1;
            _free = _loc_2 >> 1;
            return;
        }// end function

        public function _loadFactorGetter() : Number
        {
            return _size / (_mask + 1);
        }// end function

        public function _hashCode(param1:int) : int
        {
            return param1 * 73856093 & _mask;
        }// end function

        public function _expand() : void
        {
            var _loc_5:int = 0;
            var _loc_7:int = 0;
            (_sizeLevel + 1);
            var _loc_1:* = _capacity;
            var _loc_2:* = _loc_1 << 1;
            _capacity = _loc_2;
            var _loc_3:* = new Vector.<int>(_loc_2);
            var _loc_4:int = 0;
            while (_loc_4 < _loc_1)
            {
                
                _loc_4++;
                _loc_5 = _loc_4;
                _loc_3[_loc_5] = _next[_loc_5];
            }
            _next = _loc_3;
            var _loc_6:* = new Vector.<int>(_loc_2 << 1);
            _loc_4 = 0;
            _loc_5 = _loc_1 << 1;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_7 = _loc_4;
                _loc_6[_loc_7] = _data[_loc_7];
            }
            _data = _loc_6;
            _loc_4 = _loc_1 - 1;
            _loc_5 = _loc_2 - 1;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_7 = _loc_4;
                _next[_loc_7] = _loc_7 + 1;
            }
            _next[(_loc_2 - 1)] = -1;
            _free = _loc_1;
            _loc_4 = (_loc_1 << 1) + 1;
            _loc_5 = 0;
            while (_loc_5 < _loc_1)
            {
                
                _loc_5++;
                _loc_7 = _loc_5;
                _data[(_loc_4 - 1)] = -2147483648;
                _data[_loc_4] = -1;
                _loc_4 = _loc_4 + 2;
            }
            return;
        }// end function

        public function _capacityGetter() : int
        {
            return _capacity;
        }// end function

        public function __setNext(param1:int, param2:int) : void
        {
            _next[param1] = param2;
            return;
        }// end function

        public function __setHash(param1:int, param2:int) : void
        {
            _hash[param1] = param2;
            return;
        }// end function

        public function __setData(param1:int, param2:int) : void
        {
            _data[param1] = param2;
            return;
        }// end function

        public function __getNext(param1:int) : int
        {
            return _next[param1];
        }// end function

        public function __getHash(param1:int) : int
        {
            return _hash[param1];
        }// end function

        public function __getData(param1:int) : int
        {
            return _data[param1];
        }// end function

    }
}
