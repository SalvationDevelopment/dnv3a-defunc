package 
{
    import de.polygonal.ds.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;

    dynamic public class JoinList extends MovieClip
    {
        public var joins_table:Object;
        public var joins:Array;
        public var extra_next:int;
        public var holes:Heap;
        public var click_handler:Function;
        public var filter_username:String;
        public var filter_rating_lower:int;
        public var filter_rating_upper:int;
        public var filter_rep_lower:int;
        public var filter_rep_upper:int;
        public var filter_match_type:String;

        public function JoinList()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function addJoin(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String)
        {
            var _loc_9:int = 0;
            var _loc_8:* = new JoinButton();
            new JoinButton().initialize(param1, param2, param3, param4, param5, param6, param7);
            _loc_8.addEventListener(MouseEvent.CLICK, this.click_handler);
            if (!this.filter(_loc_8))
            {
                this.joins[this.extra_next] = _loc_8;
                this.joins_table[this.arrayToString([param2, param7])] = this.extra_next;
                var _loc_10:String = this;
                var _loc_11:* = this.extra_next - 1;
                _loc_10.extra_next = _loc_11;
                return;
            }
            if (this.holes.size() > 0)
            {
                _loc_9 = -this.holes.dequeue().id;
                this.joins[_loc_9] = _loc_8;
            }
            else
            {
                _loc_9 = this.joins.length;
                this.joins.push(_loc_8);
            }
            this.joins_table[this.arrayToString([param2, param7])] = _loc_9;
            _loc_8.y = _loc_9 * _loc_8.height;
            addChild(_loc_8);
            return;
        }// end function

        public function removeJoin(param1:String, param2:String)
        {
            var _loc_3:* = this.arrayToString([param1, param2]);
            var _loc_4:* = this.joins_table[_loc_3];
            if (this.joins_table[_loc_3] == undefined)
            {
                return;
            }
            var _loc_5:* = int(_loc_4);
            if (int(_loc_4) >= 0)
            {
                removeChild(this.joins[_loc_5]);
                this.holes.enqueue(new ComparableInt(-_loc_5));
            }
            delete this.joins_table[_loc_3];
            this.joins[_loc_5] = null;
            return;
        }// end function

        public function clear()
        {
            var _loc_2:JoinButton = null;
            var _loc_1:* = 0;
            while (_loc_1 < this.joins.length)
            {
                
                _loc_2 = this.joins[_loc_1];
                if (_loc_2 != null)
                {
                    removeChild(_loc_2);
                }
                _loc_1 = _loc_1 + 1;
            }
            this.joins_table = new Object();
            this.joins = new Array();
            this.extra_next = -1;
            this.holes.free();
            this.holes = new Heap(false, -1);
            return;
        }// end function

        public function setClickHandler(param1:Function)
        {
            this.click_handler = param1;
            return;
        }// end function

        public function setEnabled(param1:Boolean)
        {
            var _loc_2:ColorTransform = null;
            if (param1)
            {
                _loc_2 = new ColorTransform();
                transform.colorTransform = _loc_2;
                mouseChildren = true;
            }
            else
            {
                _loc_2 = new ColorTransform(1, 1, 1, 0.4);
                transform.colorTransform = _loc_2;
                mouseChildren = false;
            }
            return;
        }// end function

        public function setFilter(param1:String, param2:int, param3:int, param4:int, param5:int, param6:String)
        {
            var jbCompare:Function;
            var jb:JoinButton;
            var username:* = param1;
            var rating_lower:* = param2;
            var rating_upper:* = param3;
            var rep_lower:* = param4;
            var rep_upper:* = param5;
            var match_type:* = param6;
            jbCompare = function (param1:JoinButton, param2:JoinButton) : int
            {
                if (uppercaseHostFromTitle(param1.title) < uppercaseHostFromTitle(param2.title))
                {
                    return -1;
                }
                return 1;
            }// end function
            ;
            var uppercaseHostFromTitle:* = function (param1:String) : String
            {
                var _loc_2:* = param1.indexOf("|");
                if (_loc_2 < 0)
                {
                    return param1.toUpperCase();
                }
                return param1.substring(0, (param1.lastIndexOf("(", _loc_2) - 1)).toUpperCase();
            }// end function
            ;
            this.filter_username = username.toUpperCase();
            this.filter_rating_lower = rating_lower;
            this.filter_rating_upper = rating_upper;
            this.filter_rep_lower = rep_lower;
            this.filter_rep_upper = rep_upper;
            this.filter_match_type = match_type;
            var joins_new:* = new Array();
            var i:* = (this.extra_next + 1);
            this.extra_next = -1;
            while (i < this.joins.length)
            {
                
                jb = this.joins[i];
                if (jb == null)
                {
                }
                else if (this.filter(jb))
                {
                    joins_new.push(jb);
                    if (i < 0)
                    {
                        addChild(jb);
                    }
                }
                else
                {
                    joins_new[this.extra_next] = jb;
                    var _loc_8:String = this;
                    var _loc_9:* = this.extra_next - 1;
                    _loc_8.extra_next = _loc_9;
                    if (i >= 0)
                    {
                        removeChild(jb);
                    }
                }
                i = (i + 1);
            }
            this.joins = joins_new;
            this.joins.sort(jbCompare);
            this.joins_table = new Object();
            i = (this.extra_next + 1);
            while (i < this.joins.length)
            {
                
                jb = this.joins[i];
                this.joins_table[this.arrayToString([jb.title, jb.rand])] = i;
                if (i >= 0)
                {
                    jb.y = i * jb.height;
                }
                i = (i + 1);
            }
            this.holes.free();
            this.holes = new Heap(false, -1);
            return;
        }// end function

        public function filter(param1:JoinButton) : Boolean
        {
            var _loc_4:int = 0;
            var _loc_5:String = null;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:String = null;
            if (this.filter_username == null)
            {
                return true;
            }
            switch(this.filter_match_type)
            {
                case "s":
                {
                    if (!param1.single_with_siding_mc.visible)
                    {
                        return false;
                    }
                    break;
                }
                case "n":
                {
                    if (!param1.single_no_siding_mc.visible)
                    {
                        return false;
                    }
                    break;
                }
                case "m":
                {
                    if (!param1.match_mc.visible)
                    {
                        return false;
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            var _loc_2:* = param1.title;
            var _loc_3:* = _loc_2.split(" | ");
            if (_loc_3.length == 1)
            {
                if (_loc_2.toUpperCase().indexOf(this.filter_username) < 0)
                {
                    return false;
                }
                if (!this.filterRatingRep(param1.rating_rep_txt.text))
                {
                    return false;
                }
                return true;
            }
            else
            {
                _loc_4 = 0;
                while (_loc_4 < _loc_3.length)
                {
                    
                    _loc_5 = _loc_3[_loc_4];
                    _loc_6 = _loc_5.lastIndexOf("(");
                    if (_loc_5.substring(0, (_loc_6 - 1)).toUpperCase().indexOf(this.filter_username) < 0)
                    {
                    }
                    else
                    {
                        _loc_7 = _loc_5.lastIndexOf(")");
                        _loc_8 = _loc_5.substring((_loc_6 + 1), _loc_7);
                        if (!this.filterRatingRep(_loc_8))
                        {
                        }
                        else
                        {
                            return true;
                        }
                    }
                    _loc_4++;
                }
            }
            return false;
        }// end function

        public function filterRatingRep(param1:String) : Boolean
        {
            var _loc_2:* = param1.indexOf("/");
            var _loc_3:* = int(param1.substring(0, _loc_2));
            if (_loc_3 < this.filter_rating_lower)
            {
                return false;
            }
            if (_loc_3 > this.filter_rating_upper)
            {
                return false;
            }
            var _loc_4:* = int(param1.substring((_loc_2 + 1)));
            if (int(param1.substring((_loc_2 + 1))) < this.filter_rep_lower)
            {
                return false;
            }
            if (_loc_4 > this.filter_rep_upper)
            {
                return false;
            }
            return true;
        }// end function

        public function arrayToString(param1:Array) : String
        {
            var _loc_2:String = "";
            var _loc_3:* = 0;
            while (_loc_3 < param1.length)
            {
                
                if (_loc_3 != 0)
                {
                    _loc_2 = _loc_2 + ",";
                }
                _loc_2 = _loc_2 + this.replaceAll(this.replaceAll(param1[_loc_3], "\\", "\\\\"), ",", "\\,");
                _loc_3 = _loc_3 + 1;
            }
            return _loc_2;
        }// end function

        public function replaceAll(param1:String, param2:String, param3:String) : String
        {
            return param1.split(param2).join(param3);
        }// end function

        public function destroyE(event:Event)
        {
            this.holes.free();
            return;
        }// end function

        function frame1()
        {
            this.joins_table = new Object();
            this.joins = new Array();
            this.extra_next = -1;
            this.holes = new Heap(false, -1);
            addEventListener(Event.REMOVED_FROM_STAGE, this.destroyE);
            return;
        }// end function

    }
}
