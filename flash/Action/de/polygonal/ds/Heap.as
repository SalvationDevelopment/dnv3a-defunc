package de.polygonal.ds
{
    import __AS3__.vec.*;
    import de.polygonal.core.fmt.*;
    import de.polygonal.core.util.*;
    import de.polygonal.ds.*;
    import flash.*;

    public class Heap extends Object implements Collection
    {
        public var _size:int;
        public var _removable:Boolean;
        public var _position:HashTable;
        public var _maxSize:int;
        public var _a:Array;

        public function Heap(param1:Boolean = false, param2:int = 0, param3:int = -1) : void
        {
            var _loc_4:* = null as Array;
            if (Boot.skip_constructor)
            {
                return;
            }
            if (param2 > 0)
            {
                if (param3 != -1)
                {
                    if (param2 > param3)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("reserved size is greater than allowed size", {fileName:"Heap.hx", lineNumber:104, className:"de.polygonal.ds.Heap", methodName:"new"});
                    }
                }
                _loc_4 = new Array((param2 + 1));
                _a = _loc_4;
            }
            else
            {
                _a = [];
            }
            var _loc_5:Object = null;
            _a[0] = _loc_5;
            _size = 0;
            _removable = param1;
            if (param1)
            {
                _position = new HashTable(1024);
            }
            _maxSize = param3;
            return;
        }// end function

        public function toString() : String
        {
            var _loc_4:* = null as Object;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:* = null as Object;
            var _loc_8:* = null as Object;
            var _loc_9:* = null as HashTable;
            var _loc_10:int = 0;
            var _loc_11:* = null as IntIntHashTable;
            var _loc_12:int = 0;
            var _loc_13:int = 0;
            var _loc_14:int = 0;
            var _loc_1:* = clone(true);
            var _loc_2:* = Sprintf.format("\n{Heap, size: %d}", [_size]);
            if (_size == 0)
            {
                return _loc_2;
            }
            _loc_2 = _loc_2 + "\n|< front\n";
            var _loc_3:int = 0;
            while (_loc_1._size > 0)
            {
                
                _loc_3++;
                if (_loc_1._size <= 0)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("heap is empty", {fileName:"Heap.hx", lineNumber:255, className:"de.polygonal.ds.Heap", methodName:"dequeue"});
                }
                _loc_4 = _loc_1._a[1];
                _loc_1._a[1] = _loc_1._a[_loc_1._size];
                _loc_5 = 1;
                _loc_6 = _loc_5 << 1;
                _loc_7 = _loc_1._a[_loc_5];
                if (_loc_1._removable)
                {
                    while (_loc_6 < _loc_1._size)
                    {
                        
                        if (_loc_6 < (_loc_1._size - 1))
                        {
                            if (_loc_1._a[_loc_6].compare(_loc_1._a[(_loc_6 + 1)]) < 0)
                            {
                                _loc_6++;
                            }
                        }
                        _loc_8 = _loc_1._a[_loc_6];
                        if (_loc_7.compare(_loc_8) < 0)
                        {
                            _loc_1._a[_loc_5] = _loc_8;
                            _loc_9 = _loc_1._position;
                            _loc_11 = _loc_9._h;
                            _loc_12 = _loc_8.getKey();
                            _loc_13 = _loc_11._hash[_loc_12 * 73856093 & _loc_11._mask];
                            while (_loc_13 != -1)
                            {
                                if (_loc_11._data[_loc_13] == _loc_12)
                                {
                                    break;
                                }
                            }
                            _loc_10 = _loc_11._data[_loc_13] == _loc_12 ? (-2147483648) : (_loc_13 == -1 ? (_loc_11._data[(_loc_13 + 1)]) : (_loc_14 = -2147483648, _loc_13 = _loc_11._data[_loc_13 + 2], // Jump to 524, // label, if (!(_loc_11._data[_loc_13] == _loc_12)) goto 508, _loc_14 = _loc_11._data[(_loc_13 + 1)], // Jump to 532, _loc_13 = _loc_11._data[_loc_13 + 2], if (!(_loc_13 == -1)) goto 470, _loc_14));
                            if (_loc_10 != -2147483648)
                            {
                                _loc_9._vals[_loc_10] = _loc_5;
                            }
                            else
                            {
                            }
                            _loc_9 = _loc_1._position;
                            _loc_11 = _loc_9._h;
                            _loc_12 = _loc_7.getKey();
                            _loc_13 = _loc_11._hash[_loc_12 * 73856093 & _loc_11._mask];
                            while (_loc_13 != -1)
                            {
                                if (_loc_11._data[_loc_13] == _loc_12)
                                {
                                    break;
                                }
                            }
                            _loc_10 = _loc_11._data[_loc_13] == _loc_12 ? (-2147483648) : (_loc_13 == -1 ? (_loc_11._data[(_loc_13 + 1)]) : (_loc_14 = -2147483648, _loc_13 = _loc_11._data[_loc_13 + 2], // Jump to 742, // label, if (!(_loc_11._data[_loc_13] == _loc_12)) goto 726, _loc_14 = _loc_11._data[(_loc_13 + 1)], // Jump to 750, _loc_13 = _loc_11._data[_loc_13 + 2], if (!(_loc_13 == -1)) goto 688, _loc_14));
                            if (_loc_10 != -2147483648)
                            {
                                _loc_9._vals[_loc_10] = _loc_6;
                            }
                            else
                            {
                            }
                            _loc_5 = _loc_6;
                            _loc_6 = _loc_6 << 1;
                            continue;
                        }
                        break;
                    }
                    _loc_9 = _loc_1._position;
                    _loc_11 = _loc_9._h;
                    _loc_12 = _loc_7.getKey();
                    _loc_13 = _loc_11._hash[_loc_12 * 73856093 & _loc_11._mask];
                    while (_loc_13 != -1)
                    {
                        if (_loc_11._data[_loc_13] == _loc_12)
                        {
                            break;
                        }
                    }
                    _loc_10 = _loc_11._data[_loc_13] == _loc_12 ? (-2147483648) : (_loc_13 == -1 ? (_loc_11._data[(_loc_13 + 1)]) : (_loc_14 = -2147483648, _loc_13 = _loc_11._data[_loc_13 + 2], // Jump to 990, // label, if (!(_loc_11._data[_loc_13] == _loc_12)) goto 974, _loc_14 = _loc_11._data[(_loc_13 + 1)], // Jump to 998, _loc_13 = _loc_11._data[_loc_13 + 2], if (!(_loc_13 == -1)) goto 936, _loc_14));
                    if (_loc_10 != -2147483648)
                    {
                        _loc_9._vals[_loc_10] = _loc_5;
                    }
                    else
                    {
                    }
                }
                else
                {
                    while (_loc_6 < _loc_1._size)
                    {
                        
                        if (_loc_6 < (_loc_1._size - 1))
                        {
                            if (_loc_1._a[_loc_6].compare(_loc_1._a[(_loc_6 + 1)]) < 0)
                            {
                                _loc_6++;
                            }
                        }
                        _loc_8 = _loc_1._a[_loc_6];
                        if (_loc_7.compare(_loc_8) < 0)
                        {
                            _loc_1._a[_loc_5] = _loc_8;
                            _loc_5 = _loc_6;
                            _loc_6 = _loc_6 << 1;
                            continue;
                        }
                        break;
                    }
                }
                _loc_1._a[_loc_5] = _loc_7;
                (_loc_1._size - 1);
                _loc_2 = _loc_2 + Sprintf.format("  %4d -> %s\n", [_loc_3, Std.string(_loc_4)]);
            }
            _loc_2 = _loc_2 + ">|";
            return _loc_2;
        }// end function

        public function toDA() : DA
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_1:* = new DA(_size);
            var _loc_2:int = 1;
            var _loc_3:* = _size + 1;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
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
                _loc_1._a[_loc_5] = _a[_loc_4];
                if (_loc_5 >= _loc_1._size)
                {
                    (_loc_1._size + 1);
                }
            }
            return _loc_1;
        }// end function

        public function toArray() : Array
        {
            var _loc_5:int = 0;
            var _loc_2:* = new Array(_size);
            var _loc_1:* = _loc_2;
            var _loc_3:int = 1;
            var _loc_4:* = _size + 1;
            while (_loc_3 < _loc_4)
            {
                
                _loc_3++;
                _loc_5 = _loc_3;
                _loc_1[(_loc_5 - 1)] = _a[_loc_5];
            }
            return _loc_1;
        }// end function

        public function size() : int
        {
            return _size;
        }// end function

        public function reserve(param1:int) : void
        {
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            if (_size == param1)
            {
                return;
            }
            var _loc_2:* = _a;
            var _loc_3:* = new Array((param1 + 1));
            _a = _loc_3;
            var _loc_4:Object = null;
            _a[0] = _loc_4;
            if (_size < param1)
            {
                _loc_5 = 1;
                _loc_6 = _size + 1;
                while (_loc_5 < _loc_6)
                {
                    
                    _loc_5++;
                    _loc_7 = _loc_5;
                    _a[_loc_7] = _loc_2[_loc_7];
                }
            }
            return;
        }// end function

        public function remove(param1:Object) : Boolean
        {
            var _loc_2:* = null as IntIntHashTable;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:Boolean = false;
            var _loc_6:* = null as HashTable;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_12:* = null as Object;
            var _loc_13:int = 0;
            var _loc_14:int = 0;
            var _loc_15:int = 0;
            var _loc_16:Boolean = false;
            var _loc_17:int = 0;
            var _loc_18:* = null as Array;
            var _loc_19:* = null as Array;
            var _loc_20:* = null as Array;
            var _loc_21:* = null;
            var _loc_22:int = 0;
            var _loc_23:int = 0;
            if (!_removable)
            {
                Boot.lastError = new Error();
                throw new AssertionError("removing is not supported", {fileName:"Heap.hx", lineNumber:399, className:"de.polygonal.ds.Heap", methodName:"remove"});
            }
            if (_size != 0)
            {
                _loc_2 = _position._h;
                _loc_3 = param1.getKey();
                _loc_4 = _loc_2._hash[_loc_3 * 73856093 & _loc_2._mask];
                while (_loc_4 != -1)
                {
                    if (_loc_2._data[_loc_4] == _loc_3)
                    {
                        break;
                    }
                }
            }
            if (!(_loc_2._data[_loc_4] == _loc_3 ? (false) : (_loc_4 == -1 ? (true) : (_loc_5 = false, _loc_4 = _loc_2._data[_loc_4 + 2], // Jump to 286, // label, if (!(_loc_2._data[_loc_4] == _loc_3)) goto 271, _loc_5 = true, // Jump to 294, _loc_4 = _loc_2._data[_loc_4 + 2], if (!(_loc_4 == -1)) goto 248, _loc_5))))
            {
                return false;
            }
            _loc_6 = _position;
            _loc_2 = _loc_6._h;
            var _loc_7:* = param1.getKey();
            _loc_8 = _loc_2._hash[_loc_7 * 73856093 & _loc_2._mask];
            while (_loc_8 != -1)
            {
                if (_loc_2._data[_loc_8] == _loc_7)
                {
                    break;
                }
            }
            _loc_4 = _loc_2._data[_loc_8] == _loc_7 ? (-2147483648) : (_loc_8 == -1 ? (_loc_2._data[(_loc_8 + 1)]) : (_loc_9 = -2147483648, _loc_8 = _loc_2._data[_loc_8 + 2], // Jump to 472, // label, if (!(_loc_2._data[_loc_8] == _loc_7)) goto 457, _loc_9 = _loc_2._data[(_loc_8 + 1)], // Jump to 480, _loc_8 = _loc_2._data[_loc_8 + 2], if (!(_loc_8 == -1)) goto 421, _loc_9));
            _loc_3 = _loc_4 == -2147483648 ? (_loc_6.nullValue) : (_loc_6._vals[_loc_4]);
            var _loc_10:* = _a[_loc_3];
            _a[_loc_3] = _a[_size];
            _loc_4 = _loc_3;
            _loc_7 = _loc_4 << 1;
            var _loc_11:* = _a[_loc_4];
            while (_loc_7 < _size)
            {
                
                if (_loc_7 < (_size - 1))
                {
                    if (_a[_loc_7].compare(_a[(_loc_7 + 1)]) < 0)
                    {
                        _loc_7++;
                    }
                }
                _loc_12 = _a[_loc_7];
                if (_loc_11.compare(_loc_12) < 0)
                {
                    _a[_loc_4] = _loc_12;
                    _loc_6 = _position;
                    _loc_2 = _loc_6._h;
                    _loc_9 = _loc_12.getKey();
                    _loc_13 = _loc_2._hash[_loc_9 * 73856093 & _loc_2._mask];
                    while (_loc_13 != -1)
                    {
                        if (_loc_2._data[_loc_13] == _loc_9)
                        {
                            break;
                        }
                    }
                    _loc_8 = _loc_2._data[_loc_13] == _loc_9 ? (-2147483648) : (_loc_13 == -1 ? (_loc_2._data[(_loc_13 + 1)]) : (_loc_14 = -2147483648, _loc_13 = _loc_2._data[_loc_13 + 2], // Jump to 855, // label, if (!(_loc_2._data[_loc_13] == _loc_9)) goto 840, _loc_14 = _loc_2._data[(_loc_13 + 1)], // Jump to 863, _loc_13 = _loc_2._data[_loc_13 + 2], if (!(_loc_13 == -1)) goto 804, _loc_14));
                    if (_loc_8 != -2147483648)
                    {
                        _loc_6._vals[_loc_8] = _loc_4;
                    }
                    else
                    {
                    }
                    _loc_6 = _position;
                    _loc_2 = _loc_6._h;
                    _loc_9 = _loc_11.getKey();
                    _loc_13 = _loc_2._hash[_loc_9 * 73856093 & _loc_2._mask];
                    while (_loc_13 != -1)
                    {
                        if (_loc_2._data[_loc_13] == _loc_9)
                        {
                            break;
                        }
                    }
                    _loc_8 = _loc_2._data[_loc_13] == _loc_9 ? (-2147483648) : (_loc_13 == -1 ? (_loc_2._data[(_loc_13 + 1)]) : (_loc_14 = -2147483648, _loc_13 = _loc_2._data[_loc_13 + 2], // Jump to 1066, // label, if (!(_loc_2._data[_loc_13] == _loc_9)) goto 1051, _loc_14 = _loc_2._data[(_loc_13 + 1)], // Jump to 1074, _loc_13 = _loc_2._data[_loc_13 + 2], if (!(_loc_13 == -1)) goto 1015, _loc_14));
                    if (_loc_8 != -2147483648)
                    {
                        _loc_6._vals[_loc_8] = _loc_7;
                    }
                    else
                    {
                    }
                    _loc_4 = _loc_7;
                    _loc_7 = _loc_7 << 1;
                    continue;
                }
                break;
            }
            _loc_6 = _position;
            _loc_2 = _loc_6._h;
            _loc_9 = _loc_11.getKey();
            _loc_13 = _loc_2._hash[_loc_9 * 73856093 & _loc_2._mask];
            while (_loc_13 != -1)
            {
                if (_loc_2._data[_loc_13] == _loc_9)
                {
                    break;
                }
            }
            _loc_8 = _loc_2._data[_loc_13] == _loc_9 ? (-2147483648) : (_loc_13 == -1 ? (_loc_2._data[(_loc_13 + 1)]) : (_loc_14 = -2147483648, _loc_13 = _loc_2._data[_loc_13 + 2], // Jump to 1309, // label, if (!(_loc_2._data[_loc_13] == _loc_9)) goto 1294, _loc_14 = _loc_2._data[(_loc_13 + 1)], // Jump to 1317, _loc_13 = _loc_2._data[_loc_13 + 2], if (!(_loc_13 == -1)) goto 1258, _loc_14));
            if (_loc_8 != -2147483648)
            {
                _loc_6._vals[_loc_8] = _loc_4;
            }
            else
            {
            }
            _loc_6 = _position;
            _loc_2 = _loc_6._h;
            _loc_9 = param1.getKey();
            _loc_13 = _loc_2._hash[_loc_9 * 73856093 & _loc_2._mask];
            while (_loc_13 != -1)
            {
                if (_loc_2._data[_loc_13] == _loc_9)
                {
                    break;
                }
            }
            _loc_8 = _loc_2._data[_loc_13] == _loc_9 ? (-2147483648) : (_loc_13 == -1 ? (_loc_2._data[(_loc_13 + 1)]) : (_loc_14 = -2147483648, _loc_13 = _loc_2._data[_loc_13 + 2], // Jump to 1519, // label, if (!(_loc_2._data[_loc_13] == _loc_9)) goto 1504, _loc_14 = _loc_2._data[(_loc_13 + 1)], // Jump to 1527, _loc_13 = _loc_2._data[_loc_13 + 2], if (!(_loc_13 == -1)) goto 1468, _loc_14));
            if (_loc_8 == -2147483648)
            {
            }
            else
            {
                _loc_6._keys[_loc_8] = null;
                _loc_6._next[_loc_8] = _loc_6._free;
                _loc_6._free = _loc_8;
                _loc_5 = false;
                if (_loc_6._sizeLevel > 0)
                {
                    if ((_loc_6.size() - 1) == _loc_6._h._capacity >> 2)
                    {
                        if (_loc_6._isResizable)
                        {
                            _loc_5 = true;
                        }
                    }
                }
                _loc_2 = _loc_6._h;
                _loc_9 = param1.getKey();
                _loc_13 = _loc_9 * 73856093 & _loc_2._mask;
                _loc_14 = _loc_2._hash[_loc_13];
                if (_loc_14 == -1)
                {
                }
                else if (_loc_9 == _loc_2._data[_loc_14])
                {
                    if (_loc_2._data[_loc_14 + 2] == -1)
                    {
                        _loc_2._hash[_loc_13] = -1;
                    }
                    else
                    {
                        _loc_2._hash[_loc_13] = _loc_2._data[_loc_14 + 2];
                    }
                    _loc_15 = _loc_14 / 3;
                    _loc_2._next[_loc_15] = _loc_2._free;
                    _loc_2._free = _loc_15;
                    _loc_2._data[(_loc_14 + 1)] = -2147483648;
                    _loc_2._data[_loc_14 + 2] = -1;
                    (_loc_2._size - 1);
                    if (_loc_2._sizeLevel > 0)
                    {
                        if (_loc_2._size == _loc_2._capacity >> 2)
                        {
                            if (_loc_2._isResizable)
                            {
                                _loc_2._shrink();
                            }
                        }
                    }
                }
                else
                {
                    _loc_16 = false;
                    _loc_15 = _loc_14;
                    _loc_14 = _loc_2._data[_loc_14 + 2];
                    while (_loc_14 != -1)
                    {
                        
                        if (_loc_2._data[_loc_14] == _loc_9)
                        {
                            _loc_16 = true;
                            break;
                        }
                        _loc_15 = _loc_14;
                        _loc_14 = _loc_2._data[_loc_15 + 2];
                    }
                    if (_loc_16)
                    {
                        _loc_2._data[_loc_15 + 2] = _loc_2._data[_loc_14 + 2];
                        _loc_17 = _loc_14 / 3;
                        _loc_2._next[_loc_17] = _loc_2._free;
                        _loc_2._free = _loc_17;
                        _loc_2._data[(_loc_14 + 1)] = -2147483648;
                        _loc_2._data[_loc_14 + 2] = -1;
                        (_loc_2._size - 1);
                        if (_loc_2._sizeLevel > 0)
                        {
                            if (_loc_2._size == _loc_2._capacity >> 2)
                            {
                                if (_loc_2._isResizable)
                                {
                                    _loc_2._shrink();
                                }
                            }
                        }
                    }
                    else
                    {
                    }
                }
                if (_loc_5)
                {
                    (_loc_6._sizeLevel - 1);
                    _loc_9 = _loc_6._h._capacity << 1;
                    _loc_13 = _loc_6._h._capacity;
                    _loc_6._next = new Vector.<int>(_loc_13);
                    _loc_14 = 0;
                    _loc_15 = _loc_13 - 1;
                    while (_loc_14 < _loc_15)
                    {
                        
                        _loc_14++;
                        _loc_17 = _loc_14;
                        _loc_6._next[_loc_17] = _loc_17 + 1;
                    }
                    _loc_6._next[(_loc_13 - 1)] = -1;
                    _loc_6._free = 0;
                    _loc_19 = new Array(_loc_13);
                    _loc_18 = _loc_19;
                    _loc_20 = new Array(_loc_13);
                    _loc_19 = _loc_20;
                    _loc_21 = _loc_6._h.iterator();
                    
                    if (_loc_21.hasNext())
                    {
                        _loc_14 = _loc_21.next();
                        _loc_18[_loc_6._free] = _loc_6._keys[_loc_14];
                        _loc_19[_loc_6._free] = _loc_6._vals[_loc_14];
                        _loc_6._free = _loc_6._next[_loc_6._free];
                        ;
                    }
                    _loc_6._keys = _loc_18;
                    _loc_6._vals = _loc_19;
                    _loc_14 = 0;
                    _loc_15 = _loc_6._free;
                    while (_loc_14 < _loc_15)
                    {
                        
                        _loc_14++;
                        _loc_17 = _loc_14;
                        _loc_2 = _loc_6._h;
                        _loc_22 = _loc_6._keys[_loc_17].getKey();
                        _loc_23 = _loc_2._hash[_loc_22 * 73856093 & _loc_2._mask];
                        if (_loc_23 == -1)
                        {
                            continue;
                        }
                        if (_loc_2._data[_loc_23] == _loc_22)
                        {
                            _loc_2._data[(_loc_23 + 1)] = _loc_17;
                            continue;
                        }
                        _loc_16 = false;
                        _loc_23 = _loc_2._data[_loc_23 + 2];
                        while (_loc_23 != -1)
                        {
                            
                            if (_loc_2._data[_loc_23] == _loc_22)
                            {
                                _loc_2._data[(_loc_23 + 1)] = _loc_17;
                                _loc_16 = true;
                            }
                            _loc_23 = _loc_2._data[_loc_23 + 2];
                        }
                    }
                }
            }
            _a[_loc_4] = _loc_11;
            (_size - 1);
            return true;
        }// end function

        public function pack() : void
        {
            var _loc_6:int = 0;
            if ((_a.length - 1) == _size)
            {
                return;
            }
            var _loc_1:Object = null;
            var _loc_2:* = _a;
            var _loc_3:* = new Array((_size + 1));
            _a = _loc_3;
            _a[0] = _loc_1;
            var _loc_4:int = 1;
            var _loc_5:* = _size + 1;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _a[_loc_6] = _loc_2[_loc_6];
            }
            _loc_4 = _size + 1;
            _loc_5 = _loc_2.length;
            while (_loc_4 < _loc_5)
            {
                
                _loc_4++;
                _loc_6 = _loc_4;
                _loc_2[_loc_6] = null;
            }
            return;
        }// end function

        public function maxSize() : int
        {
            return _maxSize;
        }// end function

        public function iterator() : Itr
        {
            return new HeapIterator(this);
        }// end function

        public function isEmpty() : Boolean
        {
            return _size == 0;
        }// end function

        public function front() : Object
        {
            if (_size <= 0)
            {
                Boot.lastError = new Error();
                throw new AssertionError("heap is empty", {fileName:"Heap.hx", lineNumber:185, className:"de.polygonal.ds.Heap", methodName:"front"});
            }
            return _a[1];
        }// end function

        public function free() : void
        {
            var _loc_4:int = 0;
            var _loc_1:Object = null;
            var _loc_2:int = 0;
            var _loc_3:* = _a.length;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                _a[_loc_4] = _loc_1;
            }
            if (_removable)
            {
                _position.free();
                _position = null;
            }
            return;
        }// end function

        public function enqueue(param1:Object) : void
        {
            var _loc_2:* = null as IntIntHashTable;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:Boolean = false;
            var _loc_7:* = null as HashTable;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:* = null as Vector.<int>;
            var _loc_11:int = 0;
            var _loc_12:int = 0;
            var _loc_13:* = null as Array;
            var _loc_14:* = null as Array;
            var _loc_15:int = 0;
            var _loc_16:* = null as Array;
            var _loc_17:int = 0;
            var _loc_18:* = null as Object;
            if (param1 == null)
            {
                Boot.lastError = new Error();
                throw new AssertionError("x is null", {fileName:"Heap.hx", lineNumber:200, className:"de.polygonal.ds.Heap", methodName:"enqueue"});
            }
            if (_maxSize != -1)
            {
                if (_size > _maxSize)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError(Sprintf.format("size equals max size (%d)", [_maxSize]), {fileName:"Heap.hx", lineNumber:202, className:"de.polygonal.ds.Heap", methodName:"enqueue"});
                }
            }
            if (_removable)
            {
                _loc_2 = _position._h;
                _loc_3 = param1.getKey();
                _loc_4 = _loc_2._hash[_loc_3 * 73856093 & _loc_2._mask];
                while (_loc_4 != -1)
                {
                    if (_loc_2._data[_loc_4] == _loc_3)
                    {
                        break;
                    }
                }
            }
            if (_loc_2._data[_loc_4] == _loc_3 ? (false) : (_loc_4 == -1 ? (true) : (_loc_5 = false, _loc_4 = _loc_2._data[_loc_4 + 2], // Jump to 370, // label, if (!(_loc_2._data[_loc_4] == _loc_3)) goto 355, _loc_5 = true, // Jump to 378, _loc_4 = _loc_2._data[_loc_4 + 2], if (!(_loc_4 == -1)) goto 332, _loc_5)))
            {
                Boot.lastError = new Error();
                throw "x already exists";
            }
            ++_size;
            _a[++_size] = param1;
            _loc_3 = _size;
            _loc_4 = _loc_3 >> 1;
            var _loc_6:* = _a[_loc_3];
            if (_removable)
            {
                _loc_7 = _position;
                if (_loc_7.size() == _loc_7._h._capacity)
                {
                    if (!_loc_7._isResizable)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("hash table is full (%d)", [_loc_7._h._capacity]), {fileName:"HashTable.hx", lineNumber:358, className:"de.polygonal.ds.HashTable", methodName:"set"});
                    }
                    _loc_8 = _loc_7._h._capacity;
                    _loc_9 = _loc_8 << 1;
                    _loc_10 = new Vector.<int>(_loc_9);
                    _loc_11 = 0;
                    while (_loc_11 < _loc_8)
                    {
                        
                        _loc_11++;
                        _loc_12 = _loc_11;
                        _loc_10[_loc_12] = _loc_7._next[_loc_12];
                    }
                    _loc_7._next = _loc_10;
                    _loc_14 = new Array(_loc_9);
                    _loc_13 = _loc_14;
                    _loc_14 = _loc_7._keys;
                    if (_loc_8 > _loc_14.length)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    if (_loc_8 <= 0)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    _loc_11 = 0;
                    _loc_12 = 0;
                    while (_loc_12 < _loc_8)
                    {
                        
                        _loc_12++;
                        _loc_15 = _loc_12;
                        _loc_11++;
                        _loc_13[_loc_11] = _loc_14[_loc_15];
                    }
                    _loc_7._keys = _loc_13;
                    _loc_11 = _loc_8 - 1;
                    _loc_12 = _loc_9 - 1;
                    while (_loc_11 < _loc_12)
                    {
                        
                        _loc_11++;
                        _loc_15 = _loc_11;
                        _loc_7._next[_loc_15] = _loc_15 + 1;
                    }
                    _loc_7._next[(_loc_9 - 1)] = -1;
                    _loc_7._free = _loc_8;
                    _loc_16 = new Array(_loc_9);
                    _loc_14 = _loc_16;
                    _loc_16 = _loc_7._vals;
                    if (_loc_8 > _loc_16.length)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("max <= src.length", {fileName:"ArrayUtil.hx", lineNumber:52, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    if (_loc_8 <= 0)
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError("min < max", {fileName:"ArrayUtil.hx", lineNumber:53, className:"de.polygonal.ds.ArrayUtil", methodName:"copy"});
                    }
                    _loc_11 = 0;
                    _loc_12 = 0;
                    while (_loc_12 < _loc_8)
                    {
                        
                        _loc_12++;
                        _loc_15 = _loc_12;
                        _loc_11++;
                        _loc_14[_loc_11] = _loc_16[_loc_15];
                    }
                    _loc_7._vals = _loc_14;
                    (_loc_7._sizeLevel + 1);
                }
                _loc_2 = _loc_7._h;
                _loc_8 = param1.getKey();
                _loc_9 = _loc_7._free;
                if (_loc_9 == -2147483648)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError("val 0x80000000 is reserved", {fileName:"IntIntHashTable.hx", lineNumber:769, className:"de.polygonal.ds.IntIntHashTable", methodName:"set"});
                }
                if (_loc_2._size >= _loc_2.maxSize)
                {
                    Boot.lastError = new Error();
                    throw new AssertionError(Sprintf.format("size equals max size (%d)", [_loc_2.maxSize]), {fileName:"IntIntHashTable.hx", lineNumber:770, className:"de.polygonal.ds.IntIntHashTable", methodName:"set"});
                }
                if (_loc_2._size == _loc_2._capacity)
                {
                    if (_loc_2._isResizable)
                    {
                        _loc_2._expand();
                    }
                    else
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("hash table is full (%d)", [_loc_2._capacity]), {fileName:"IntIntHashTable.hx", lineNumber:778, className:"de.polygonal.ds.IntIntHashTable", methodName:"set"});
                    }
                }
                _loc_11 = _loc_2._free * 3;
                _loc_2._free = _loc_2._next[_loc_2._free];
                _loc_2._data[_loc_11] = _loc_8;
                _loc_2._data[(_loc_11 + 1)] = _loc_9;
                _loc_12 = _loc_8 * 73856093 & _loc_2._mask;
                _loc_15 = _loc_2._hash[_loc_12];
                while (_loc_17 != -1)
                {
                }
                _loc_5 = _loc_17 == -1 ? (_loc_2._hash[_loc_12] = _loc_11, _loc_2._size + 1, true) : (_loc_17 = _loc_2._data[_loc_15 + 2], // Jump to 1523, // label, _loc_15 = _loc_17, _loc_17 = _loc_2._data[_loc_17 + 2], if (!(_loc_17 == -1)) goto 1502, _loc_2._data[_loc_15 + 2] = _loc_11, _loc_2._size + 1, false);
                _loc_7._vals[_loc_7._free] = _loc_3;
                _loc_7._keys[_loc_7._free] = param1;
                _loc_7._free = _loc_7._next[_loc_7._free];
                while (_loc_4 > 0)
                {
                    
                    _loc_18 = _a[_loc_4];
                    if (_loc_6.compare(_loc_18) > 0)
                    {
                        _a[_loc_3] = _loc_18;
                        _loc_7 = _position;
                        _loc_2 = _loc_7._h;
                        _loc_9 = _loc_18.getKey();
                        _loc_11 = _loc_2._hash[_loc_9 * 73856093 & _loc_2._mask];
                        while (_loc_11 != -1)
                        {
                            if (_loc_2._data[_loc_11] == _loc_9)
                            {
                                break;
                            }
                        }
                        _loc_8 = _loc_2._data[_loc_11] == _loc_9 ? (-2147483648) : (_loc_11 == -1 ? (_loc_2._data[(_loc_11 + 1)]) : (_loc_12 = -2147483648, _loc_11 = _loc_2._data[_loc_11 + 2], // Jump to 1825, // label, if (!(_loc_2._data[_loc_11] == _loc_9)) goto 1810, _loc_12 = _loc_2._data[(_loc_11 + 1)], // Jump to 1833, _loc_11 = _loc_2._data[_loc_11 + 2], if (!(_loc_11 == -1)) goto 1774, _loc_12));
                        if (_loc_8 != -2147483648)
                        {
                            _loc_7._vals[_loc_8] = _loc_3;
                        }
                        else
                        {
                        }
                        _loc_3 = _loc_4;
                        _loc_4 = _loc_4 >> 1;
                        continue;
                    }
                    break;
                }
                _loc_7 = _position;
                _loc_2 = _loc_7._h;
                _loc_9 = _loc_6.getKey();
                _loc_11 = _loc_2._hash[_loc_9 * 73856093 & _loc_2._mask];
                while (_loc_11 != -1)
                {
                    if (_loc_2._data[_loc_11] == _loc_9)
                    {
                        break;
                    }
                }
                _loc_8 = _loc_2._data[_loc_11] == _loc_9 ? (-2147483648) : (_loc_11 == -1 ? (_loc_2._data[(_loc_11 + 1)]) : (_loc_12 = -2147483648, _loc_11 = _loc_2._data[_loc_11 + 2], // Jump to 2062, // label, if (!(_loc_2._data[_loc_11] == _loc_9)) goto 2047, _loc_12 = _loc_2._data[(_loc_11 + 1)], // Jump to 2070, _loc_11 = _loc_2._data[_loc_11 + 2], if (!(_loc_11 == -1)) goto 2011, _loc_12));
                if (_loc_8 != -2147483648)
                {
                    _loc_7._vals[_loc_8] = _loc_3;
                }
                else
                {
                }
            }
            else
            {
                while (_loc_4 > 0)
                {
                    
                    _loc_18 = _a[_loc_4];
                    if (_loc_6.compare(_loc_18) > 0)
                    {
                        _a[_loc_3] = _loc_18;
                        _loc_3 = _loc_4;
                        _loc_4 = _loc_4 >> 1;
                        continue;
                    }
                    break;
                }
            }
            _a[_loc_3] = _loc_6;
            return;
        }// end function

        public function dequeue() : Object
        {
            var _loc_5:* = null as Object;
            var _loc_6:* = null as HashTable;
            var _loc_7:int = 0;
            var _loc_8:* = null as IntIntHashTable;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            var _loc_11:int = 0;
            if (_size <= 0)
            {
                Boot.lastError = new Error();
                throw new AssertionError("heap is empty", {fileName:"Heap.hx", lineNumber:255, className:"de.polygonal.ds.Heap", methodName:"dequeue"});
            }
            var _loc_1:* = _a[1];
            _a[1] = _a[_size];
            var _loc_2:int = 1;
            var _loc_3:* = _loc_2 << 1;
            var _loc_4:* = _a[_loc_2];
            if (_removable)
            {
                while (_loc_3 < _size)
                {
                    
                    if (_loc_3 < (_size - 1))
                    {
                        if (_a[_loc_3].compare(_a[(_loc_3 + 1)]) < 0)
                        {
                            _loc_3++;
                        }
                    }
                    _loc_5 = _a[_loc_3];
                    if (_loc_4.compare(_loc_5) < 0)
                    {
                        _a[_loc_2] = _loc_5;
                        _loc_6 = _position;
                        _loc_8 = _loc_6._h;
                        _loc_9 = _loc_5.getKey();
                        _loc_10 = _loc_8._hash[_loc_9 * 73856093 & _loc_8._mask];
                        while (_loc_10 != -1)
                        {
                            if (_loc_8._data[_loc_10] == _loc_9)
                            {
                                break;
                            }
                        }
                        _loc_7 = _loc_8._data[_loc_10] == _loc_9 ? (-2147483648) : (_loc_10 == -1 ? (_loc_8._data[(_loc_10 + 1)]) : (_loc_11 = -2147483648, _loc_10 = _loc_8._data[_loc_10 + 2], // Jump to 447, // label, if (!(_loc_8._data[_loc_10] == _loc_9)) goto 431, _loc_11 = _loc_8._data[(_loc_10 + 1)], // Jump to 455, _loc_10 = _loc_8._data[_loc_10 + 2], if (!(_loc_10 == -1)) goto 393, _loc_11));
                        if (_loc_7 != -2147483648)
                        {
                            _loc_6._vals[_loc_7] = _loc_2;
                        }
                        else
                        {
                        }
                        _loc_6 = _position;
                        _loc_8 = _loc_6._h;
                        _loc_9 = _loc_4.getKey();
                        _loc_10 = _loc_8._hash[_loc_9 * 73856093 & _loc_8._mask];
                        while (_loc_10 != -1)
                        {
                            if (_loc_8._data[_loc_10] == _loc_9)
                            {
                                break;
                            }
                        }
                        _loc_7 = _loc_8._data[_loc_10] == _loc_9 ? (-2147483648) : (_loc_10 == -1 ? (_loc_8._data[(_loc_10 + 1)]) : (_loc_11 = -2147483648, _loc_10 = _loc_8._data[_loc_10 + 2], // Jump to 666, // label, if (!(_loc_8._data[_loc_10] == _loc_9)) goto 650, _loc_11 = _loc_8._data[(_loc_10 + 1)], // Jump to 674, _loc_10 = _loc_8._data[_loc_10 + 2], if (!(_loc_10 == -1)) goto 612, _loc_11));
                        if (_loc_7 != -2147483648)
                        {
                            _loc_6._vals[_loc_7] = _loc_3;
                        }
                        else
                        {
                        }
                        _loc_2 = _loc_3;
                        _loc_3 = _loc_3 << 1;
                        continue;
                    }
                    break;
                }
                _loc_6 = _position;
                _loc_8 = _loc_6._h;
                _loc_9 = _loc_4.getKey();
                _loc_10 = _loc_8._hash[_loc_9 * 73856093 & _loc_8._mask];
                while (_loc_10 != -1)
                {
                    if (_loc_8._data[_loc_10] == _loc_9)
                    {
                        break;
                    }
                }
                _loc_7 = _loc_8._data[_loc_10] == _loc_9 ? (-2147483648) : (_loc_10 == -1 ? (_loc_8._data[(_loc_10 + 1)]) : (_loc_11 = -2147483648, _loc_10 = _loc_8._data[_loc_10 + 2], // Jump to 912, // label, if (!(_loc_8._data[_loc_10] == _loc_9)) goto 896, _loc_11 = _loc_8._data[(_loc_10 + 1)], // Jump to 920, _loc_10 = _loc_8._data[_loc_10 + 2], if (!(_loc_10 == -1)) goto 858, _loc_11));
                if (_loc_7 != -2147483648)
                {
                    _loc_6._vals[_loc_7] = _loc_2;
                }
                else
                {
                }
            }
            else
            {
                while (_loc_3 < _size)
                {
                    
                    if (_loc_3 < (_size - 1))
                    {
                        if (_a[_loc_3].compare(_a[(_loc_3 + 1)]) < 0)
                        {
                            _loc_3++;
                        }
                    }
                    _loc_5 = _a[_loc_3];
                    if (_loc_4.compare(_loc_5) < 0)
                    {
                        _a[_loc_2] = _loc_5;
                        _loc_2 = _loc_3;
                        _loc_3 = _loc_3 << 1;
                        continue;
                    }
                    break;
                }
            }
            _a[_loc_2] = _loc_4;
            (_size - 1);
            return _loc_1;
        }// end function

        public function contains(param1:Object) : Boolean
        {
            var _loc_4:int = 0;
            var _loc_2:int = 1;
            var _loc_3:* = _size + 1;
            while (_loc_2 < _loc_3)
            {
                
                _loc_2++;
                _loc_4 = _loc_2;
                if (_a[_loc_4] == param1)
                {
                    return true;
                }
            }
            return false;
        }// end function

        public function clone(param1:Boolean, param2:Object = ) : Collection
        {
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:* = null as Cloneable;
            var _loc_3:* = new Heap(_removable);
            if (_size == 0)
            {
                return _loc_3;
            }
            if (param1)
            {
                _loc_4 = 1;
                _loc_5 = _size + 1;
                while (_loc_4 < _loc_5)
                {
                    
                    _loc_4++;
                    _loc_6 = _loc_4;
                    _loc_3._a[_loc_6] = _a[_loc_6];
                }
            }
            else if (param2 == null)
            {
                _loc_7 = null;
                _loc_4 = 1;
                _loc_5 = _size + 1;
                while (_loc_4 < _loc_5)
                {
                    
                    _loc_4++;
                    _loc_6 = _loc_4;
                    if (!Std.is(_a[_loc_6], Cloneable))
                    {
                        Boot.lastError = new Error();
                        throw new AssertionError(Sprintf.format("element is not of type Cloneable (%s)", [_a[_loc_6]]), {fileName:"Heap.hx", lineNumber:517, className:"de.polygonal.ds.Heap", methodName:"clone"});
                    }
                    _loc_7 = _a[_loc_6];
                    _loc_3._a[_loc_6] = _loc_7.clone();
                }
            }
            else
            {
                _loc_4 = 1;
                _loc_5 = _size + 1;
                while (_loc_4 < _loc_5)
                {
                    
                    _loc_4++;
                    _loc_6 = _loc_4;
                    _loc_3._a[_loc_6] = this.param2(_a[_loc_6]);
                }
            }
            _loc_3._size = _size;
            return _loc_3;
        }// end function

        public function clear(param1:Boolean = false) : void
        {
            var _loc_2:* = null as Object;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            if (param1)
            {
                _loc_2 = null;
                _loc_3 = 1;
                _loc_4 = _a.length;
                while (_loc_3 < _loc_4)
                {
                    
                    _loc_3++;
                    _loc_5 = _loc_3;
                    _a[_loc_5] = _loc_2;
                }
            }
            if (_removable)
            {
                _position.clear(param1);
            }
            _size = 0;
            return;
        }// end function

        public function __set(param1:int, param2:Object) : void
        {
            _a[param1] = param2;
            return;
        }// end function

        public function __get(param1:int) : Object
        {
            return _a[param1];
        }// end function

    }
}
