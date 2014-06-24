package 
{

    public class Reflect extends Object
    {

        public function Reflect() : void
        {
            return;
        }// end function

        public static function hasField(param1, param2:String) : Boolean
        {
            return param1.hasOwnProperty(param2);
        }// end function

        public static function field(param1, param2:String)
        {
            return param1 == null ? (null) : (param1[param2]);
            return;
        }// end function

        public static function setField(param1, param2:String, param3) : void
        {
            param1[param2] = param3;
            return;
        }// end function

        public static function callMethod(param1, param2, param3:Array)
        {
            return param2.apply(param1, param3);
        }// end function

        public static function fields(param1) : Array
        {
            if (param1 == null)
            {
                return [];
            }
            var _loc_4:int = 0;
            var _loc_3:Array = [];
            var _loc_5:* = param1;
            while (_loc_5 in _loc_4)
            {
                
                _loc_3.push(_loc_5[_loc_4]);
            }
            var _loc_2:* = _loc_3;
            _loc_4 = 0;
            while (_loc_4 < _loc_2.length)
            {
                
                if (!param1.hasOwnProperty(_loc_2[_loc_4]))
                {
                    _loc_2.splice(_loc_4, 1);
                    continue;
                }
                _loc_4++;
            }
            return _loc_2;
        }// end function

        public static function isFunction(param1) : Boolean
        {
            return typeof(param1) == "function";
        }// end function

        public static function compare(param1:Object, param2:Object) : int
        {
            var _loc_3:* = param1;
            var _loc_4:* = param2;
            return _loc_3 == _loc_4 ? (0) : (_loc_3 > _loc_4 ? (1) : (-1));
            return;
        }// end function

        public static function compareMethods(param1, param2) : Boolean
        {
            return param1 == param2;
        }// end function

        public static function isObject(param1) : Boolean
        {
            var _loc_4:* = null;
            if (param1 == null)
            {
                return false;
            }
            var _loc_3:* = typeof(param1);
            if (_loc_3 == "object")
            {
                if (param1.__enum__ == true)
                {
                    return false;
                }
                ;
                _loc_4 = null;
                return true;
            }
            return _loc_3 == "string";
        }// end function

        public static function deleteField(param1, param2:String) : Boolean
        {
            if (param1.hasOwnProperty(param2) != true)
            {
                return false;
            }
            delete param1[param2];
            return true;
        }// end function

        public static function copy(param1:Object) : Object
        {
            var _loc_5:* = null as String;
            var _loc_2:* = {};
            var _loc_3:int = 0;
            var _loc_4:* = Reflect.fields(param1);
            while (_loc_3 < _loc_4.length)
            {
                
                _loc_5 = _loc_4[_loc_3];
                _loc_3++;
                _loc_2[_loc_5] = param1 == null ? (null) : (param1[_loc_5]);
            }
            return _loc_2;
        }// end function

        public static function makeVarArgs(param1:Function)
        {
            var f:* = param1;
            return function (... args)
            {
                return null.f(args);
            }// end function
            ;
        }// end function

    }
}
