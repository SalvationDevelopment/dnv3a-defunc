package 
{
    import flash.*;
    import flash.utils.*;

    public class Type extends Object
    {

        public function Type() : void
        {
            return;
        }// end function

        public static function getClass(param1:Object) : Class
        {
            var _loc_2:* = getQualifiedClassName(param1);
            if (_loc_2 != "null")
            {
                if (_loc_2 != "Object")
                {
                    if (_loc_2 != "int")
                    {
                        if (_loc_2 != "Number")
                        {
                        }
                    }
                }
            }
            if (_loc_2 == "Boolean")
            {
                return null;
            }
            if (param1.hasOwnProperty("prototype"))
            {
                return null;
            }
            var _loc_3:* = getDefinitionByName(_loc_2) as Class;
            if (_loc_3.__isenum)
            {
                return null;
            }
            return _loc_3;
        }// end function

        public static function getEnum(param1) : Class
        {
            var _loc_2:* = getQualifiedClassName(param1);
            if (_loc_2 != "null")
            {
            }
            if (_loc_2.substr(0, 8) == "builtin.")
            {
                return null;
            }
            if (param1.hasOwnProperty("prototype"))
            {
                return null;
            }
            var _loc_3:* = getDefinitionByName(_loc_2) as Class;
            if (!_loc_3.__isenum)
            {
                return null;
            }
            return _loc_3;
        }// end function

        public static function getSuperClass(param1:Class) : Class
        {
            var _loc_2:* = getQualifiedSuperclassName(param1);
            if (_loc_2 != null)
            {
            }
            if (_loc_2 == "Object")
            {
                return null;
            }
            return getDefinitionByName(_loc_2) as Class;
        }// end function

        public static function getClassName(param1:Class) : String
        {
            if (param1 == null)
            {
                return null;
            }
            var _loc_2:* = getQualifiedClassName(param1);
            var _loc_3:* = _loc_2;
            if (_loc_3 == "int")
            {
                return "Int";
            }
            else if (_loc_3 == "Number")
            {
                return "Float";
            }
            else if (_loc_3 == "Boolean")
            {
                return "Bool";
                ;
            }
            return _loc_2.split("::").join(".");
        }// end function

        public static function getEnumName(param1:Class) : String
        {
            return Type.getClassName(param1);
        }// end function

        public static function resolveClass(param1:String) : Class
        {
            var _loc_3:* = null as Class;
            var _loc_4:* = null;
            var _loc_5:* = null as String;
            _loc_3 = getDefinitionByName(param1) as Class;
            if (_loc_3.__isenum)
            {
                return null;
            }
            return _loc_3;
            ;
            _loc_4 = null;
            _loc_5 = param1;
            if (_loc_5 == "Int")
            {
                return int;
            }
            else if (_loc_5 == "Float")
            {
                return Number;
                ;
            }
            return null;
            if (_loc_3 != null)
            {
            }
            if (_loc_3.__name__ == null)
            {
                return null;
            }
            return _loc_3;
        }// end function

        public static function resolveEnum(param1:String) : Class
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            _loc_3 = getDefinitionByName(param1);
            if (!_loc_3.__isenum)
            {
                return null;
            }
            return _loc_3;
            ;
            _loc_4 = null;
            if (param1 == "Bool")
            {
                return Boolean;
            }
            return null;
            if (_loc_3 != null)
            {
            }
            if (_loc_3.__ename__ == null)
            {
                return null;
            }
            return _loc_3;
        }// end function

        public static function createInstance(param1:Class, param2:Array) : Object
        {
            switch(param2.length) branch count is:<14>[71, 78, 92, 113, 141, 176, 218, 267, 323, 386, 456, 533, 617, 708, 806] default offset is:<50>;
            Boot.lastError = new Error();
            throw "Too many arguments";
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            ;
            return new param1(param2[0], param2[1], param2[2], param2[3], param2[4], param2[5], param2[6], param2[7], param2[8], param2[9], param2[10], param2[11], param2[12], param2[13]);
            return;
        }// end function

        public static function createEmptyInstance(param1:Class) : Object
        {
            var _loc_3:* = null as Object;
            var _loc_4:* = null;
            Boot.skip_constructor = true;
            _loc_3 = new param1;
            Boot.skip_constructor = false;
            return _loc_3;
            ;
            _loc_4 = null;
            Boot.skip_constructor = false;
            Boot.lastError = new Error();
            throw _loc_4;
            return null;
        }// end function

        public static function createEnum(param1:Class, param2:String, param3:Array = ) : Object
        {
            var _loc_4:* = param1 == null ? (null) : (param1[param2]);
            if ((param1 == null ? (null) : (param1[param2])) == null)
            {
                Boot.lastError = new Error();
                throw "No such constructor " + param2;
            }
            if (Reflect.isFunction(_loc_4))
            {
                if (param3 == null)
                {
                    Boot.lastError = new Error();
                    throw "Constructor " + param2 + " need parameters";
                }
                return _loc_4.apply(param1, param3);
            }
            if (param3 != null)
            {
            }
            if (param3.length != 0)
            {
                Boot.lastError = new Error();
                throw "Constructor " + param2 + " does not need parameters";
            }
            return _loc_4;
        }// end function

        public static function createEnumIndex(param1:Class, param2:int, param3:Array = ) : Object
        {
            var _loc_4:* = Type.getEnumConstructs(param1)[param2];
            if (Type.getEnumConstructs(param1)[param2] == null)
            {
                Boot.lastError = new Error();
                throw param2 + " is not a valid enum constructor index";
            }
            return Type.createEnum(param1, _loc_4, param3);
        }// end function

        public static function describe(param1, param2:Boolean) : Array
        {
            var _loc_8:int = 0;
            var _loc_3:Array = [];
            var _loc_4:* = describeType(param1);
            if (param2)
            {
                _loc_4 = _loc_4.factory[0];
            }
            var _loc_5:* = _loc_4.child("method");
            var _loc_6:int = 0;
            var _loc_7:* = _loc_5.length();
            while (_loc_6 < _loc_7)
            {
                
                _loc_6++;
                _loc_8 = _loc_6;
                _loc_3.push(Std.string(_loc_5[_loc_8].attribute("name")));
            }
            var _loc_9:* = _loc_4.child("variable");
            _loc_6 = 0;
            _loc_7 = _loc_9.length();
            while (_loc_6 < _loc_7)
            {
                
                _loc_6++;
                _loc_8 = _loc_6;
                _loc_3.push(Std.string(_loc_9[_loc_8].attribute("name")));
            }
            var _loc_10:* = _loc_4.child("accessor");
            _loc_6 = 0;
            _loc_7 = _loc_10.length();
            while (_loc_6 < _loc_7)
            {
                
                _loc_6++;
                _loc_8 = _loc_6;
                _loc_3.push(Std.string(_loc_10[_loc_8].attribute("name")));
            }
            return _loc_3;
        }// end function

        public static function getInstanceFields(param1:Class) : Array
        {
            return Type.describe(param1, true);
        }// end function

        public static function getClassFields(param1:Class) : Array
        {
            var _loc_2:* = Type.describe(param1, false);
            _loc_2.remove("__construct__");
            _loc_2.remove("prototype");
            return _loc_2;
        }// end function

        public static function getEnumConstructs(param1:Class) : Array
        {
            return param1.__constructs__;
        }// end function

        public static function typeof(param1) : ValueType
        {
            var _loc_5:* = null;
            var _loc_6:* = null;
            var _loc_3:* = getQualifiedClassName(param1);
            var _loc_4:* = _loc_3;
            if (_loc_3 == "null")
            {
                return ValueType.TNull;
            }
            else if (_loc_4 == "void")
            {
                return ValueType.TNull;
            }
            else if (_loc_4 == "int")
            {
                return ValueType.TInt;
            }
            else if (_loc_4 == "Number")
            {
                if (param1 >= -268435456)
                {
                }
                if (param1 >= 268435456)
                {
                }
                if (param1 == param1)
                {
                    return ValueType.TInt;
                }
                return ValueType.TFloat;
            }
            else if (_loc_4 == "Boolean")
            {
                return ValueType.TBool;
            }
            else if (_loc_4 == "Object")
            {
                return ValueType.TObject;
            }
            else if (_loc_4 == "Function")
            {
                return ValueType.TFunction;
            }
            else
            {
                _loc_5 = null;
                _loc_5 = getDefinitionByName(_loc_3);
                if (param1.hasOwnProperty("prototype"))
                {
                    return ValueType.TObject;
                }
                if (_loc_5.__isenum)
                {
                    return ValueType.TEnum(_loc_5);
                }
                return ValueType.TClass(_loc_5);
                ;
                _loc_6 = null;
                if (_loc_6 as Error)
                {
                    Boot.lastError = _loc_6;
                }
                if (_loc_3 != "builtin.as$0::MethodClosure")
                {
                }
                if (_loc_3.indexOf("-") != -1)
                {
                    return ValueType.TFunction;
                }
                return _loc_5 == null ? (ValueType.TFunction) : (ValueType.TClass(_loc_5));
            }
            return null;
        }// end function

        public static function enumEq(param1:Object, param2:Object) : Boolean
        {
            var _loc_4:* = null as Array;
            var _loc_5:* = null as Array;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:* = null;
            if (param1 == param2)
            {
                return true;
            }
            if (param1.index != param2.index)
            {
                return false;
            }
            _loc_4 = param1.params;
            _loc_5 = param2.params;
            _loc_6 = 0;
            _loc_7 = _loc_4.length;
            while (_loc_6 < _loc_7)
            {
                
                _loc_6++;
                _loc_8 = _loc_6;
                if (!Type.enumEq(_loc_4[_loc_8], _loc_5[_loc_8]))
                {
                    return false;
                }
            }
            ;
            _loc_9 = null;
            return false;
            return true;
        }// end function

        public static function enumConstructor(param1) : String
        {
            return param1.tag;
        }// end function

        public static function enumParameters(param1) : Array
        {
            return param1.params == null ? ([]) : (param1.params);
            return;
        }// end function

        public static function enumIndex(param1) : int
        {
            return param1.index;
        }// end function

    }
}
