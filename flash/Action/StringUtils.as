package 
{

    public class StringUtils extends Object
    {

        public function StringUtils()
        {
            return;
        }// end function

        public static function stringToArray(param1:String) : Array
        {
            var _loc_5:String = null;
            var _loc_2:* = new Array();
            var _loc_3:int = 0;
            var _loc_4:* = 0;
            while (_loc_4 < param1.length)
            {
                
                _loc_5 = param1.charAt(_loc_4);
                if (_loc_5 == "\\")
                {
                    _loc_4 = _loc_4 + 1;
                }
                else if (_loc_5 == ",")
                {
                    _loc_2.push(replaceAll(replaceAll(param1.substring(_loc_3, _loc_4), "\\\\", "\\"), "\\,", ","));
                    _loc_3 = _loc_4 + 1;
                }
                _loc_4 = _loc_4 + 1;
            }
            _loc_2.push(replaceAll(replaceAll(param1.substring(_loc_3), "\\\\", "\\"), "\\,", ","));
            return _loc_2;
        }// end function

        public static function arrayToString(param1:Array) : String
        {
            var _loc_2:String = "";
            var _loc_3:* = 0;
            while (_loc_3 < param1.length)
            {
                
                if (_loc_3 != 0)
                {
                    _loc_2 = _loc_2 + ",";
                }
                _loc_2 = _loc_2 + replaceAll(replaceAll(param1[_loc_3], "\\", "\\\\"), ",", "\\,");
                _loc_3 = _loc_3 + 1;
            }
            return _loc_2;
        }// end function

        public static function replaceAll(param1:String, param2:String, param3:String) : String
        {
            return param1.split(param2).join(param3);
        }// end function

        public static function escapeHtml(param1:String) : String
        {
            param1 = replaceAll(param1, "&", "&amp;");
            param1 = replaceAll(param1, "<", "&lt;");
            return param1;
        }// end function

        public static function escapeHtmlWithLinks(param1:String) : String
        {
            var _loc_5:int = 0;
            var _loc_6:String = null;
            var _loc_7:int = 0;
            var _loc_2:* = escapeHtml(param1);
            var _loc_3:String = "";
            var _loc_4:* = _loc_2;
            while (true)
            {
                
                _loc_5 = _loc_4.search("http://[!-~]|https://[!-~]|ftp://[!-~]|www\\.[!-~]");
                if (_loc_5 < 0)
                {
                    _loc_3 = _loc_3 + _loc_4;
                    break;
                }
                if (_loc_5 > 0)
                {
                    _loc_6 = _loc_4.charAt((_loc_5 - 1));
                    if (_loc_6 != " " && _loc_6 != "\n")
                    {
                        _loc_7 = indexOf2(_loc_4, " ", "\n", _loc_5);
                        if (_loc_7 < 0)
                        {
                            _loc_3 = _loc_3 + _loc_4;
                            break;
                        }
                        else
                        {
                            _loc_3 = _loc_3 + _loc_4.substring(0, _loc_7);
                            _loc_4 = _loc_4.substring(_loc_7);
                            continue;
                        }
                    }
                }
                _loc_3 = _loc_3 + _loc_4.substring(0, _loc_5);
                _loc_7 = indexOf2(_loc_4, " ", "\n", _loc_5);
                if (_loc_7 < 0)
                {
                    _loc_3 = _loc_3 + urlToLink(_loc_4.substring(_loc_5));
                    break;
                    continue;
                }
                _loc_3 = _loc_3 + urlToLink(_loc_4.substring(_loc_5, _loc_7));
                _loc_4 = _loc_4.substring(_loc_7);
            }
            return _loc_3;
        }// end function

        private static function indexOf2(param1:String, param2:String, param3:String, param4:int)
        {
            var _loc_5:* = param1.indexOf(param2, param4);
            var _loc_6:* = param1.indexOf(param3, param4);
            if (_loc_5 < 0)
            {
                return _loc_6;
            }
            if (_loc_6 < 0)
            {
                return _loc_5;
            }
            return _loc_5 <= _loc_6 ? (_loc_5) : (_loc_6);
        }// end function

        private static function urlToLink(param1:String) : String
        {
            var _loc_2:String = null;
            if (param1.substring(0, 7) == "http://")
            {
                _loc_2 = "";
            }
            else if (param1.substring(0, 8) == "https://")
            {
                _loc_2 = "";
            }
            else if (param1.substring(0, 6) == "ftp://")
            {
                _loc_2 = "";
            }
            else
            {
                _loc_2 = "http://";
            }
            var _loc_3:* = _loc_2 + replaceAll(param1, "\"", "&quot;");
            return "<font color=\"#0000FF\"><u><a href=\"" + _loc_3 + "\" target=\"_blank\">" + param1 + "</a></u></font>";
        }// end function

        public static function escapeAndColorSender(param1:String, param2:String) : String
        {
            if (param2 == null)
            {
                return "<b>" + escapeHtml(param1) + ":</b> ";
            }
            return "<font color=\"" + param2 + "\"><b>" + escapeHtml(param1) + ":</b></font> ";
        }// end function

    }
}
