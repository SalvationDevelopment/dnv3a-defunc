package 
{
    import flash.display.*;
    import flash.text.*;
    import flash.utils.*;

    dynamic public class Front extends MovieClip
    {
        public var water_mc:MovieClip;
        public var rankstar10_mc:MovieClip;
        public var star9_mc:MovieClip;
        public var normal_mc:MovieClip;
        public var spell_text_mc:MovieClip;
        public var counter_icon_mc:MovieClip;
        public var fusion_mc:MovieClip;
        public var trap_text2_mc:MovieClip;
        public var fire_mc:MovieClip;
        public var rankstar12_mc:MovieClip;
        public var rankstar1_mc:MovieClip;
        public var star12_mc:MovieClip;
        public var spell_mc:MovieClip;
        public var name_txt:TextField;
        public var trap_text_mc:MovieClip;
        public var light_mc:MovieClip;
        public var wind_mc:MovieClip;
        public var rankstar3_mc:MovieClip;
        public var star10_mc:MovieClip;
        public var type_txt:TextField;
        public var st_txt:TextField;
        public var field_icon_mc:MovieClip;
        public var rankstar2_mc:MovieClip;
        public var star11_mc:MovieClip;
        public var star2_mc:MovieClip;
        public var ritual_mc:MovieClip;
        public var synchro_mc:MovieClip;
        public var quickplay_icon_mc:MovieClip;
        public var rankstar5_mc:MovieClip;
        public var star3_mc:MovieClip;
        public var spell_text2_mc:MovieClip;
        public var earth_mc:MovieClip;
        public var rankstar4_mc:MovieClip;
        public var mon_txt:TextField;
        public var rankstar7_mc:MovieClip;
        public var star1_mc:MovieClip;
        public var rankstar6_mc:MovieClip;
        public var star6_mc:MovieClip;
        public var border_mc:MovieClip;
        public var xyz_mc:MovieClip;
        public var spell_text1_mc:MovieClip;
        public var equip_icon_mc:MovieClip;
        public var divine_mc:MovieClip;
        public var rankstar9_mc:MovieClip;
        public var star7_mc:MovieClip;
        public var number_txt:TextField;
        public var rankstar8_mc:MovieClip;
        public var star4_mc:MovieClip;
        public var trap_mc:MovieClip;
        public var star5_mc:MovieClip;
        public var picture_mc:SquarePicture;
        public var effect_mc:MovieClip;
        public var ATK_txt:TextField;
        public var ritual_icon_mc:MovieClip;
        public var continuous_icon_mc:MovieClip;
        public var dark_mc:MovieClip;
        public var DEF_txt:TextField;
        public var trap_text1_mc:MovieClip;
        public var rankstar11_mc:MovieClip;
        public var star8_mc:MovieClip;
        public var id:Object;
        public var number:Object;
        public var card_name:Object;
        public var treated_as:Object;
        public var card:Object;
        public var type:Object;
        public var attribute:Object;
        public var desc:Object;
        public var atk:Object;
        public var def:Object;
        public var level:Object;
        public var limit:Object;
        public var name_width:Object;
        public var name_scaleX:Object;
        public var name_y:Object;
        public var st_height:Object;
        public var st_size:Object;
        public var type_width:Object;
        public var type_scaleX:Object;
        public var mon_height:Object;
        public var mon_size:Object;

        public function Front()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function initialize(param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, param12, param13)
        {
            this.id = param1;
            this.number = param2;
            this.card_name = param3;
            this.treated_as = param5;
            this.card = param6;
            this.type = param7;
            this.attribute = param8;
            this.desc = param9;
            this.atk = param10;
            this.def = param11;
            this.level = param12;
            this.limit = param13;
            this.setNumber(param2);
            this.setName(param3);
            this.setCard(param6);
            if (param4 != null)
            {
                this.picture_mc.setPicture(param4);
            }
            var _loc_14:* = false;
            switch(param6)
            {
                case "normal":
                {
                    _loc_14 = true;
                }
                case "effect":
                case "ritual":
                case "fusion":
                case "synchro":
                case "xyz":
                {
                    this.setMonsterText(param7, _loc_14, param9);
                    this.setAttribute(param8);
                    this.setLevel(param12);
                    this.setAttack(param10);
                    this.setDefense(param11);
                    this.setSpellTrap("none", "none");
                    break;
                }
                case "spell":
                case "trap":
                {
                    this.setSpellTrapText(param9);
                    this.setAttribute("none");
                    this.setLevel(0);
                    this.setAttack("");
                    this.setDefense("");
                    this.setSpellTrap(param6, param7);
                    break;
                }
                case "token":
                {
                    this.setSpellTrapText(param9);
                    this.setAttribute("none");
                    this.setLevel(0);
                    this.setAttack("");
                    this.setDefense("");
                    this.setSpellTrap("none", "none");
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function initializeFromArray(param1:Array, param2:ByteArray = null)
        {
            if (param2 == null)
            {
                this.initialize(param1[0], param1[1], param1[2], param1[3], param1[4], param1[5], param1[6], param1[7], param1[8], param1[9], param1[10], param1[11], param1[12]);
            }
            else
            {
                this.initialize(param1[0], param1[1], param1[2], null, param1[4], param1[5], param1[6], param1[7], param1[8], param1[9], param1[10], param1[11], param1[12]);
                this.loadPictureBytes(param1[3], param2);
            }
            return;
        }// end function

        public function copyFront(param1:Front)
        {
            if (this.id == param1.id)
            {
                return;
            }
            this.initialize(param1.id, param1.number, param1.card_name, null, param1.treated_as, param1.card, param1.type, param1.attribute, param1.desc, param1.atk, param1.def, param1.level, param1.limit);
            this.picture_mc.copyPicture(param1.picture_mc);
            return;
        }// end function

        public function initializeToken()
        {
            this.initialize(-1, "This card cannot be in a Deck.", "Token", null, "Token", "token", null, null, "This card can be used as any token.", null, null, null, null);
            this.picture_mc.loadTokenPicture();
            return;
        }// end function

        public function loadPictureBytes(param1:String, param2:ByteArray)
        {
            this.picture_mc.loadBytes(param1, param2);
            return;
        }// end function

        public function setName(param1:String)
        {
            var _loc_7:String = null;
            if (this.name_width == undefined)
            {
                this.name_width = this.name_txt.width;
                this.name_scaleX = this.name_txt.scaleX;
                this.name_y = this.name_txt.y;
            }
            this.name_txt.text = param1;
            var _loc_2:* = new TextFormat();
            _loc_2.font = "MatrixBoldSmallCaps";
            var _loc_3:* = new TextFormat();
            _loc_3.font = "Palatino Linotype";
            _loc_3.bold = true;
            _loc_3.size = 33;
            var _loc_4:* = new TextFormat();
            new TextFormat().font = "MS UI Gothic";
            _loc_4.size = 33;
            var _loc_5:Boolean = false;
            var _loc_6:* = 0;
            while (_loc_6 < param1.length)
            {
                
                _loc_7 = param1.charAt(_loc_6);
                if (_loc_7 == "☆")
                {
                    this.name_txt.setTextFormat(_loc_4, _loc_6, (_loc_6 + 1));
                }
                else if (_loc_7 > "~" && _loc_7 != "ã")
                {
                    this.name_txt.setTextFormat(_loc_3, _loc_6, (_loc_6 + 1));
                    _loc_5 = true;
                }
                else
                {
                    this.name_txt.setTextFormat(_loc_2, _loc_6, (_loc_6 + 1));
                }
                _loc_6 = _loc_6 + 1;
            }
            if (_loc_5)
            {
                this.name_txt.y = this.name_y - 8;
            }
            else
            {
                this.name_txt.y = this.name_y;
            }
            this.name_txt.scaleX = this.name_scaleX;
            this.name_txt.autoSize = "left";
            if (this.name_txt.width > this.name_width)
            {
                this.name_txt.scaleX = this.name_scaleX * this.name_width / this.name_txt.width;
            }
            return;
        }// end function

        public function setCard(param1:String)
        {
            this.normal_mc.visible = false;
            this.effect_mc.visible = false;
            this.ritual_mc.visible = false;
            this.fusion_mc.visible = false;
            this.synchro_mc.visible = false;
            this.xyz_mc.visible = false;
            this.spell_mc.visible = false;
            this.trap_mc.visible = false;
            switch(param1)
            {
                case "normal":
                case "token":
                {
                    this.normal_mc.visible = true;
                    this.name_txt.textColor = 0;
                    this.number_txt.textColor = 0;
                    break;
                }
                case "effect":
                {
                    this.effect_mc.visible = true;
                    this.name_txt.textColor = 0;
                    this.number_txt.textColor = 0;
                    break;
                }
                case "ritual":
                {
                    this.ritual_mc.visible = true;
                    this.name_txt.textColor = 0;
                    this.number_txt.textColor = 0;
                    break;
                }
                case "fusion":
                {
                    this.fusion_mc.visible = true;
                    this.name_txt.textColor = 0;
                    this.number_txt.textColor = 0;
                    break;
                }
                case "synchro":
                {
                    this.synchro_mc.visible = true;
                    this.name_txt.textColor = 0;
                    this.number_txt.textColor = 0;
                    break;
                }
                case "xyz":
                {
                    this.xyz_mc.visible = true;
                    this.name_txt.textColor = 16777215;
                    this.number_txt.textColor = 16777215;
                    break;
                }
                case "spell":
                {
                    this.spell_mc.visible = true;
                    this.name_txt.textColor = 16777215;
                    this.number_txt.textColor = 0;
                    break;
                }
                case "trap":
                {
                    this.trap_mc.visible = true;
                    this.name_txt.textColor = 16777215;
                    this.number_txt.textColor = 0;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function setAttribute(param1:String)
        {
            this.dark_mc.visible = false;
            this.divine_mc.visible = false;
            this.earth_mc.visible = false;
            this.fire_mc.visible = false;
            this.light_mc.visible = false;
            this.water_mc.visible = false;
            this.wind_mc.visible = false;
            switch(param1)
            {
                case "dark":
                {
                    this.dark_mc.visible = true;
                    break;
                }
                case "divine":
                {
                    this.divine_mc.visible = true;
                    break;
                }
                case "earth":
                {
                    this.earth_mc.visible = true;
                    break;
                }
                case "fire":
                {
                    this.fire_mc.visible = true;
                    break;
                }
                case "light":
                {
                    this.light_mc.visible = true;
                    break;
                }
                case "water":
                {
                    this.water_mc.visible = true;
                    break;
                }
                case "wind":
                {
                    this.wind_mc.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function setLevel(param1:int)
        {
            if (param1 > 12)
            {
                param1 = 12;
            }
            var _loc_2:* = 26.1 + (12 - param1) / 2;
            this.star1_mc.visible = false;
            this.star2_mc.visible = false;
            this.star3_mc.visible = false;
            this.star4_mc.visible = false;
            this.star5_mc.visible = false;
            this.star6_mc.visible = false;
            this.star7_mc.visible = false;
            this.star8_mc.visible = false;
            this.star9_mc.visible = false;
            this.star10_mc.visible = false;
            this.star11_mc.visible = false;
            this.star12_mc.visible = false;
            this.rankstar1_mc.visible = false;
            this.rankstar2_mc.visible = false;
            this.rankstar3_mc.visible = false;
            this.rankstar4_mc.visible = false;
            this.rankstar5_mc.visible = false;
            this.rankstar6_mc.visible = false;
            this.rankstar7_mc.visible = false;
            this.rankstar8_mc.visible = false;
            this.rankstar9_mc.visible = false;
            this.rankstar10_mc.visible = false;
            this.rankstar11_mc.visible = false;
            this.rankstar12_mc.visible = false;
            switch(param1)
            {
                case 12:
                {
                }
                case 11:
                {
                }
                case 10:
                {
                }
                case 9:
                {
                }
                case 8:
                {
                }
                case 7:
                {
                }
                case 6:
                {
                }
                case 5:
                {
                }
                case 4:
                {
                }
                case 3:
                {
                }
                case 2:
                {
                }
                case 1:
                {
                }
                default:
                {
                    break;
                }
            }
            switch(param1)
            {
                case 12:
                {
                }
                case 11:
                {
                }
                case 10:
                {
                }
                case 9:
                {
                }
                case 8:
                {
                }
                case 7:
                {
                }
                case 6:
                {
                }
                case 5:
                {
                }
                case 4:
                {
                }
                case 3:
                {
                }
                case 2:
                {
                }
                case 1:
                {
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function setSpellTrap(param1:String, param2:String)
        {
            switch(param1)
            {
                case "spell":
                {
                    this.setSpell(param2);
                    break;
                }
                case "trap":
                {
                    this.setTrap(param2);
                    break;
                }
                default:
                {
                    this.setSpell("none");
                    break;
                    break;
                }
            }
            return;
        }// end function

        public function setSpell(param1:String)
        {
            this.spell_text_mc.visible = false;
            this.spell_text1_mc.visible = false;
            this.spell_text2_mc.visible = false;
            this.trap_text_mc.visible = false;
            this.trap_text1_mc.visible = false;
            this.trap_text2_mc.visible = false;
            this.continuous_icon_mc.visible = false;
            this.counter_icon_mc.visible = false;
            this.equip_icon_mc.visible = false;
            this.field_icon_mc.visible = false;
            this.quickplay_icon_mc.visible = false;
            this.ritual_icon_mc.visible = false;
            switch(param1)
            {
                case "normal":
                {
                    this.spell_text_mc.visible = true;
                    break;
                }
                case "continuous":
                {
                    this.spell_text1_mc.visible = true;
                    this.spell_text2_mc.visible = true;
                    this.continuous_icon_mc.visible = true;
                    break;
                }
                case "equip":
                {
                    this.spell_text1_mc.visible = true;
                    this.spell_text2_mc.visible = true;
                    this.equip_icon_mc.visible = true;
                    break;
                }
                case "field":
                {
                    this.spell_text1_mc.visible = true;
                    this.spell_text2_mc.visible = true;
                    this.field_icon_mc.visible = true;
                    break;
                }
                case "quickplay":
                {
                    this.spell_text1_mc.visible = true;
                    this.spell_text2_mc.visible = true;
                    this.quickplay_icon_mc.visible = true;
                    break;
                }
                case "ritual":
                {
                    this.spell_text1_mc.visible = true;
                    this.spell_text2_mc.visible = true;
                    this.ritual_icon_mc.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function setTrap(param1:String)
        {
            this.spell_text_mc.visible = false;
            this.spell_text1_mc.visible = false;
            this.spell_text2_mc.visible = false;
            this.trap_text_mc.visible = false;
            this.trap_text1_mc.visible = false;
            this.trap_text2_mc.visible = false;
            this.continuous_icon_mc.visible = false;
            this.counter_icon_mc.visible = false;
            this.equip_icon_mc.visible = false;
            this.field_icon_mc.visible = false;
            this.quickplay_icon_mc.visible = false;
            this.ritual_icon_mc.visible = false;
            switch(param1)
            {
                case "normal":
                {
                    this.trap_text_mc.visible = true;
                    break;
                }
                case "continuous":
                {
                    this.trap_text1_mc.visible = true;
                    this.trap_text2_mc.visible = true;
                    this.continuous_icon_mc.visible = true;
                    break;
                }
                case "counter":
                {
                    this.trap_text1_mc.visible = true;
                    this.trap_text2_mc.visible = true;
                    this.counter_icon_mc.visible = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function setMonsterText(param1:String, param2:Boolean, param3:String)
        {
            var _loc_9:* = undefined;
            var _loc_12:* = undefined;
            var _loc_13:TextFormat = null;
            var _loc_14:* = undefined;
            if (this.type_width == undefined)
            {
                this.type_width = this.type_txt.width;
                this.type_scaleX = this.type_txt.scaleX;
                this.mon_height = this.mon_txt.height;
                this.mon_size = this.mon_txt.getTextFormat().size;
            }
            this.type_txt.visible = true;
            this.mon_txt.visible = true;
            this.ATK_txt.visible = true;
            this.DEF_txt.visible = true;
            this.st_txt.visible = false;
            this.type_txt.text = "[ " + param1.toUpperCase() + " ]";
            var _loc_4:* = new TextFormat();
            new TextFormat().size = 15;
            this.type_txt.setTextFormat(_loc_4);
            var _loc_5:* = new TextFormat();
            new TextFormat().size = 16;
            this.type_txt.setTextFormat(_loc_5, 0, 1);
            this.type_txt.setTextFormat(_loc_5, (this.type_txt.length - 1), this.type_txt.length);
            var _loc_6:* = new TextFormat();
            new TextFormat().size = 5;
            this.type_txt.setTextFormat(_loc_6, 1, 2);
            this.type_txt.setTextFormat(_loc_6, this.type_txt.length - 2, (this.type_txt.length - 1));
            var _loc_7:* = new TextFormat();
            new TextFormat().size = 12;
            var _loc_8:* = -1;
            _loc_9 = 0;
            while (_loc_9 < param1.length)
            {
                
                _loc_12 = param1.charAt(_loc_9);
                if (_loc_12 >= "a" && _loc_12 <= "z")
                {
                    if (_loc_8 < 0)
                    {
                        _loc_8 = _loc_9;
                    }
                }
                else if (_loc_8 >= 0)
                {
                    this.type_txt.setTextFormat(_loc_7, _loc_8 + 2, _loc_9 + 2);
                    _loc_8 = -1;
                }
                _loc_9 = _loc_9 + 1;
            }
            if (_loc_8 >= 0)
            {
                this.type_txt.setTextFormat(_loc_7, _loc_8 + 2, _loc_9 + 2);
            }
            this.type_txt.scaleX = this.type_scaleX;
            this.type_txt.autoSize = "left";
            if (this.type_txt.width > this.type_width)
            {
                this.type_txt.scaleX = this.type_scaleX * this.type_width / this.type_txt.width;
            }
            this.mon_txt.text = param3;
            var _loc_10:* = new TextFormat();
            if (param2)
            {
                _loc_10.font = "ITC Stone Serif Std";
                _loc_10.italic = true;
            }
            else
            {
                _loc_10.font = "Palatino Linotype";
            }
            this.mon_txt.setTextFormat(_loc_10);
            var _loc_11:* = new TextFormat();
            new TextFormat().size = this.mon_size;
            this.mon_txt.setTextFormat(_loc_11);
            this.mon_txt.height = this.mon_height;
            this.mon_txt.autoSize = "left";
            if (this.mon_txt.height > this.mon_height)
            {
                _loc_13 = new TextFormat();
                _loc_14 = this.mon_size;
                do
                {
                    
                    _loc_14 = _loc_14 - 1;
                    _loc_13.size = _loc_14;
                    this.mon_txt.setTextFormat(_loc_13);
                }while (this.mon_txt.height > this.mon_height && _loc_14 > 0)
            }
            return;
        }// end function

        public function setSpellTrapText(param1:String)
        {
            var _loc_3:TextFormat = null;
            var _loc_4:* = undefined;
            if (this.st_height == undefined)
            {
                this.st_height = this.st_txt.height;
                this.st_size = this.st_txt.getTextFormat().size;
            }
            this.type_txt.visible = false;
            this.mon_txt.visible = false;
            this.ATK_txt.visible = false;
            this.DEF_txt.visible = false;
            this.st_txt.visible = true;
            this.st_txt.text = param1;
            var _loc_2:* = new TextFormat();
            _loc_2.size = this.st_size;
            this.st_txt.setTextFormat(_loc_2);
            this.st_txt.height = this.st_height;
            this.st_txt.autoSize = "left";
            if (this.st_txt.height > this.st_height)
            {
                _loc_3 = new TextFormat();
                _loc_4 = this.st_size;
                do
                {
                    
                    _loc_4 = _loc_4 - 1;
                    _loc_3.size = _loc_4;
                    this.st_txt.setTextFormat(_loc_3);
                }while (this.st_txt.height > this.st_height && _loc_4 > 0)
            }
            return;
        }// end function

        public function setAttack(param1)
        {
            this.ATK_txt.text = param1;
            return;
        }// end function

        public function setDefense(param1)
        {
            this.DEF_txt.text = param1;
            return;
        }// end function

        public function setNumber(param1)
        {
            this.number_txt.text = param1;
            return;
        }// end function

        function frame1()
        {
            mouseChildren = false;
            return;
        }// end function

    }
}
