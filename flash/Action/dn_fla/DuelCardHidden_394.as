package dn_fla
{
    import fl.data.*;
    import fl.events.*;
    import fl.transitions.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.media.*;
    import flash.text.*;

    dynamic public class DuelCardHidden_394 extends MovieClip
    {
        public var grave2_mc:MovieClip;
        public var deck2_mc:MovieClip;
        public var middle_mc:MovieClip;
        public var grave1_mc:MovieClip;
        public var deck1_mc:MovieClip;
        public var select2_mc:MovieClip;
        public var extra2_txt:TextField;
        public var atk_def2_9_txt:TextField;
        public var deck1_txt:TextField;
        public var atk_def2_8_txt:TextField;
        public var atk_def1_9_txt:TextField;
        public var field_mc:MovieClip;
        public var grave1_txt:TextField;
        public var atk_def1_8_txt:TextField;
        public var shuffle1_mc:MovieClip;
        public var select1_mc:MovieClip;
        public var extra1_txt:TextField;
        public var top_mc:MovieClip;
        public var atk_def2_7_txt:TextField;
        public var deck2_txt:TextField;
        public var atk_def2_6_txt:TextField;
        public var atk_def1_7_txt:TextField;
        public var red_stream_mc:MovieClip;
        public var grave2_txt:TextField;
        public var seal_mc:MovieClip;
        public var atk_def1_6_txt:TextField;
        public var sword_mc:MovieClip;
        public var shuffle2_mc:MovieClip;
        public var menu_mc:MovieClip;
        public var rfg2_mc:MovieClip;
        public var counter_mc:Counter;
        public var xyz_target_mc:MovieClip;
        public var view_mc:MovieClip;
        public var rfg1_txt:TextField;
        public var blue_stream_mc:MovieClip;
        public var atk_def1_10_txt:TextField;
        public var rfg1_mc:MovieClip;
        public var atk_def2_10_txt:TextField;
        public var rfg2_txt:TextField;
        public var duelist:Boolean;
        public var admin:int;
        public var addTweens:Function;
        public var DUEL_TWEEN_TIME:Number;
        public var HAND_SHUFFLE_TWEEN_TIME:Number;
        public var previewE:Function;
        public var previewStopE:Function;
        public var click_callback:Function;
        public var isMyBP:Function;
        public var Send:Function;
        public var initDuelCard:Function;
        public var field_bg:SquarePicture;
        public var enableCounter:Function;
        public var FIELD_SCALE:Number;
        public var HAND_SCALE:Number;
        public var DECK1_X:Number;
        public var DECK1_Y:Number;
        public var EXTRA1_X:Number;
        public var EXTRA1_Y:Number;
        public var GRAVE1_X:Number;
        public var GRAVE1_Y:Number;
        public var RFG1_X:Number;
        public var RFG1_Y:Number;
        public var DECK2_X:Number;
        public var DECK2_Y:Number;
        public var EXTRA2_X:Number;
        public var EXTRA2_Y:Number;
        public var GRAVE2_X:Number;
        public var GRAVE2_Y:Number;
        public var RFG2_X:Number;
        public var RFG2_Y:Number;
        public var FIELD1_X:Array;
        public var FIELD1_Y:Array;
        public var FIELD2_X:Array;
        public var FIELD2_Y:Array;
        public var CARD_SPACING_X:Number;
        public var CARD_SPACING_Y:Number;
        public var HAND_LEFT_X:Number;
        public var HAND_RIGHT_X:Number;
        public var HAND_MIDDLE_X:Number;
        public var HAND_WIDTH:Number;
        public var HAND_SPAN_X:Number;
        public var HAND1_Y:Number;
        public var HAND1_Y_UP:Number;
        public var HAND2_Y:Number;
        public var COUNT_OFFSET_X:Number;
        public var COUNT_OFFSET_Y:Number;
        public var REVEAL_X:Number;
        public var REVEAL_Y:Number;
        public var REVEAL_SCALE:Number;
        public var OVERLAY_WIDTH:Number;
        public var deck1:DuelMap;
        public var hand1:DuelMap;
        public var extra1:DuelMap;
        public var field1:DuelMap;
        public var underlay:DuelMap;
        public var grave1:DuelMap;
        public var rfg1:DuelMap;
        public var deck2:DuelMap;
        public var hand2:DuelMap;
        public var extra2:DuelMap;
        public var field2:DuelMap;
        public var grave2:DuelMap;
        public var rfg2:DuelMap;
        public var card_over:DuelCard;
        public var menu_card:DuelCard;
        public var menu:DuelCardMenu;
        public var attacking_id:String;
        public var xyz_card:DuelCard;
        public var xyz_menu:String;
        public var seal_card:DuelCard;
        public var sel_card1:DuelCard;
        public var sel_card2:DuelCard;
        public var shuffling:DuelMap;
        public var VIEW_SCALE:Number;
        public var view_cards_mc:Sprite;
        public var view_back:Shape;
        public var viewing:DuelMap;
        public var viewing2:DuelMap;
        public var scroll_rect_graphics:Graphics;
        public var fix_menu_flag:Boolean;

        public function DuelCardHidden_394()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function cardOverE(event:MouseEvent)
        {
            this.card_over = DuelCard(event.currentTarget);
            var _loc_2:Boolean = false;
            switch(this.card_over.loc)
            {
                case "grave1":
                {
                    break;
                }
                case "rfg1":
                {
                    break;
                }
                case "grave2":
                {
                    break;
                }
                case "rfg2":
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (this.duelist)
            {
                switch(this.card_over.loc)
                {
                    case "grave1":
                    {
                        break;
                    }
                    case "rfg1":
                    {
                        break;
                    }
                    case "hand1":
                    case "field1":
                    {
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            if (_loc_2)
            {
                this.previewE(event);
            }
            if (this.duelist && this.attacking_id == null && this.xyz_card == null)
            {
                this.menuCardMouseOver(this.card_over);
            }
            if (this.duelist && this.xyz_card != null && this.xyz_card != this.card_over && this.card_over.loc == "field1" && !this.card_over.show_back && this.card_over.position >= 6 && this.card_over.front_mc.card != "token")
            {
                this.xyz_target_mc.glow = true;
            }
            if (this.duelist && this.counter_mc.visible && this.card_over.loc == "field1" && !this.card_over.show_back && this.card_over.counter < 99)
            {
                this.counter_mc.glow = true;
            }
            return;
        }// end function

        public function cardOutE(event:MouseEvent)
        {
            this.card_over = null;
            if (this.duelist)
            {
                this.menuCardMouseOut(event);
            }
            if (event.currentTarget != this.menu_card)
            {
                this.previewStopE(event);
            }
            if (this.duelist)
            {
                this.xyz_target_mc.glow = false;
            }
            if (this.duelist && this.counter_mc.visible)
            {
                this.counter_mc.glow = false;
            }
            return;
        }// end function

        public function menuCardMouseOver(param1:DuelCard)
        {
            if (param1 == this.menu_card)
            {
                return;
            }
            this.removeCardMenu();
            if (param1.tweenCount == 0 && DragManager.draggedObject() == null)
            {
                this.showMenu(param1);
            }
            return;
        }// end function

        public function tryMenuCardMouseOver(param1:DuelCard)
        {
            if (this.duelist && param1 == this.card_over)
            {
                this.menuCardMouseOver(param1);
            }
            return;
        }// end function

        public function showMenu(param1:DuelCard)
        {
            var _loc_3:* = undefined;
            var _loc_4:Boolean = false;
            var _loc_5:int = 0;
            var _loc_6:Boolean = false;
            var _loc_7:Boolean = false;
            var _loc_8:Boolean = false;
            var _loc_9:Boolean = false;
            var _loc_10:DuelCardMenu = null;
            var _loc_2:Array = [];
            if (this.viewing == null)
            {
                switch(param1.loc)
                {
                    case "hand1":
                    {
                        param1.y = this.HAND1_Y_UP;
                        if (param1 == this.sel_card1)
                        {
                            this.select1_mc.y = this.HAND1_Y_UP;
                        }
                        _loc_3 = param1.front_mc.card;
                        _loc_4 = false;
                        if (_loc_3 == "spell" || _loc_3 == "trap")
                        {
                            _loc_7 = param1.front_mc.type == "field" ? (this.field1.hasFieldSpellOpening()) : (this.field1.hasSpellTrapOpening());
                            if (_loc_7)
                            {
                                if (_loc_3 == "spell")
                                {
                                    _loc_2.push({label:"Activate", data:"Hand Activate"});
                                }
                                _loc_2.push({label:"Set", data:"Hand Set"});
                            }
                        }
                        else
                        {
                            _loc_7 = this.field1.hasMonsterOpening();
                            if (_loc_7)
                            {
                                if (_loc_3 == "normal" || _loc_3 == "effect")
                                {
                                    _loc_2.push({label:"Normal Summon", data:"Normal Summon"});
                                    _loc_2.push({label:"Set", data:"Hand Set"});
                                }
                                _loc_2.push({label:"S. Summon ATK", data:"Hand Special Summon ATK"});
                                _loc_2.push({label:"S. Summon DEF", data:"Hand Special Summon DEF"});
                            }
                            if (this.field1.hasSpellTrapOpening())
                            {
                                _loc_4 = true;
                            }
                        }
                        _loc_2.push({label:"To Graveyard", data:"Hand To Graveyard"});
                        _loc_2.push({label:"To Top of Deck", data:"Hand To Top of Deck"});
                        _loc_2.push({label:"Banish", data:"Hand Remove from Play"});
                        _loc_2.push({label:"To Bottom of Deck", data:"Hand To Bottom of Deck"});
                        _loc_2.push({label:"Reveal", data:"Hand Reveal"});
                        if (_loc_4)
                        {
                            _loc_2.push({label:"To S/T", data:"Hand To Spell/Trap Zone"});
                            if (param1.front_mc.id == 4435 || param1.front_mc.id == 5463)
                            {
                                _loc_2.push({label:"Set (To S/T)", data:"Hand Set To Spell/Trap"});
                            }
                        }
                        break;
                    }
                    case "field1":
                    {
                        _loc_5 = param1.position;
                        _loc_3 = param1.front_mc.card;
                        _loc_6 = _loc_3 == "token";
                        if (_loc_5 < 6)
                        {
                            if (_loc_6)
                            {
                                _loc_2.push({label:"Remove", data:"Remove Token"});
                            }
                            else
                            {
                                if (param1.show_back)
                                {
                                    _loc_2.push({label:"Activate", data:"Field Activate"});
                                }
                                _loc_2.push({label:"To Grave", data:"Field To Graveyard"});
                                _loc_2.push({label:"Banish", data:"Field Remove from Play"});
                                if (!param1.show_back)
                                {
                                    _loc_2.push({label:"Set", data:"Field Set"});
                                }
                                if (_loc_3 == "fusion" || _loc_3 == "synchro" || _loc_3 == "xyz")
                                {
                                    _loc_2.push({label:"To Extra", data:"Field To Extra Deck"});
                                }
                                else
                                {
                                    _loc_2.push({label:"To Hand", data:"Field To Hand"});
                                    _loc_2.push({label:"To T. Deck", data:"Field To Top of Deck"});
                                    _loc_2.push({label:"To B. Deck", data:"Field To Bottom of Deck"});
                                }
                            }
                            if (_loc_5 != 5 && !param1.show_back && this.field1.hasMonsterOpening())
                            {
                                _loc_2.push({label:"To Mon. Zone", data:"Field To Monster Zone"});
                            }
                        }
                        else
                        {
                            _loc_8 = !param1.isSideways();
                            if (this.isMyBP() && _loc_8)
                            {
                                if (this.field2.hasMonsters())
                                {
                                    _loc_2.push({label:"Attack", data:"Attack"});
                                }
                                _loc_2.push({label:"Attack Directly", data:"Attack directly"});
                            }
                            if (_loc_6)
                            {
                                _loc_2.push({label:"Remove", data:"Remove Token"});
                            }
                            else
                            {
                                _loc_2.push({label:"To Grave", data:"Field To Graveyard"});
                            }
                            if (param1.show_back)
                            {
                                _loc_2.push({label:"Flip Summon", data:"Flip Summon"});
                                _loc_2.push({label:"Flip", data:"Flip"});
                            }
                            else
                            {
                                if (_loc_8)
                                {
                                    _loc_2.push({label:"To DEF", data:"To DEF"});
                                }
                                else
                                {
                                    _loc_2.push({label:"To ATK", data:"To ATK"});
                                }
                                if (!_loc_6)
                                {
                                    _loc_2.push({label:"Set", data:"Field Set"});
                                }
                            }
                            if (!_loc_6)
                            {
                                _loc_2.push({label:"Banish", data:"Field Remove from Play"});
                            }
                            if (this.field2.hasMonsterOpening())
                            {
                                _loc_2.push({label:"Change Control", data:"Change Control"});
                            }
                            if (_loc_3 == "fusion" || _loc_3 == "synchro" || _loc_3 == "xyz")
                            {
                                _loc_2.push({label:"To Extra", data:"Field To Extra Deck"});
                            }
                            else if (!_loc_6)
                            {
                                _loc_2.push({label:"To Hand", data:"Field To Hand"});
                                _loc_2.push({label:"To T. Deck", data:"Field To Top of Deck"});
                                _loc_2.push({label:"To B. Deck", data:"Field To Bottom of Deck"});
                            }
                            if (this.field1.hasSpellTrapOpening())
                            {
                                _loc_2.push({label:"To S/T", data:"Field To Spell/Trap Zone"});
                            }
                            if (!param1.show_back && !_loc_6 && this.field1.hasOverlayOption(param1.id))
                            {
                                _loc_2.push({label:"Overlay", data:"Field Overlay"});
                            }
                        }
                        break;
                    }
                    case "deck1":
                    {
                        if (param1 != this.deck1.first())
                        {
                            break;
                        }
                        if (this.shuffling == this.deck1)
                        {
                            break;
                        }
                        _loc_2.push({label:"Draw", data:"Draw"});
                        if (this.viewing2 != this.deck1)
                        {
                            _loc_2.push({label:"Shuffle", data:"Shuffle"});
                        }
                        _loc_2.push({label:"Mill", data:"Mill"});
                        _loc_2.push({label:"Banish T.", data:"Mill to RFG"});
                        _loc_2.push({label:"Banish FD", data:"Mill to RFG Face-Down"});
                        _loc_2.push({label:"View", data:"View Deck"});
                        if (this.viewing2 == null)
                        {
                            _loc_2.push({label:"Show", data:"Show Deck"});
                        }
                        break;
                    }
                    case "extra1":
                    {
                        if (param1 != this.extra1.last())
                        {
                            break;
                        }
                        _loc_2.push({label:"View", data:"View Extra"});
                        if (this.viewing2 == null)
                        {
                            _loc_2.push({label:"Show", data:"Show Extra"});
                        }
                        break;
                    }
                    case "underlay1":
                    {
                        _loc_2.push({label:"Detach", data:"Detach Grave"});
                        _loc_2.push({label:"Banish", data:"Detach RFG"});
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            else if (this.isInView(param1))
            {
                switch(param1.loc)
                {
                    case "deck1":
                    {
                        if (this.viewing != this.deck1)
                        {
                            break;
                        }
                        _loc_3 = param1.front_mc.card;
                        _loc_4 = false;
                        if (_loc_3 != "spell" && _loc_3 != "trap")
                        {
                            if (this.field1.hasMonsterOpening())
                            {
                                _loc_2.push({label:"SS ATK", data:"Deck Special Summon ATK"});
                                _loc_2.push({label:"SS DEF", data:"Deck Special Summon DEF"});
                            }
                            if (this.field1.hasSpellTrapOpening())
                            {
                                _loc_4 = true;
                            }
                        }
                        _loc_2.push({label:"To Hand", data:"Deck To Hand"});
                        _loc_2.push({label:"To Grave", data:"Deck To Graveyard"});
                        _loc_2.push({label:"Banish", data:"Deck Remove from Play"});
                        _loc_2.push({label:"Banish FD", data:"Deck Remove from Play Face-Down"});
                        if (_loc_4)
                        {
                            _loc_2.push({label:"To S/T", data:"Deck To Spell/Trap Zone"});
                        }
                        break;
                    }
                    case "extra1":
                    {
                        if (this.viewing != this.extra1)
                        {
                            break;
                        }
                        _loc_3 = param1.front_mc.card;
                        if (_loc_3 == "xyz" && this.field1.hasOverlayOption(param1.id))
                        {
                            _loc_2.push({label:"OL ATK", data:"Xyz Overlay ATK"});
                            _loc_2.push({label:"OL DEF", data:"Xyz Overlay DEF"});
                        }
                        if (this.field1.hasMonsterOpening())
                        {
                            _loc_2.push({label:"SS ATK", data:"Extra Special Summon ATK"});
                            _loc_2.push({label:"SS DEF", data:"Extra Special Summon DEF"});
                        }
                        _loc_2.push({label:"To Grave", data:"Extra To Graveyard"});
                        _loc_2.push({label:"Banish", data:"Extra Remove from Play"});
                        _loc_2.push({label:"Reveal", data:"Extra Reveal"});
                        break;
                    }
                    case "grave1":
                    {
                        if (this.viewing != this.grave1)
                        {
                            break;
                        }
                        _loc_3 = param1.front_mc.card;
                        _loc_4 = false;
                        if (_loc_3 != "spell" && _loc_3 != "trap")
                        {
                            if (this.field1.hasMonsterOpening())
                            {
                                _loc_2.push({label:"SS ATK", data:"Grave1 Special Summon ATK"});
                                _loc_2.push({label:"SS DEF", data:"Grave1 Special Summon DEF"});
                            }
                            if (this.field1.hasSpellTrapOpening())
                            {
                                _loc_4 = true;
                            }
                        }
                        _loc_9 = _loc_3 == "fusion" || _loc_3 == "synchro" || _loc_3 == "xyz";
                        if (_loc_9)
                        {
                            _loc_2.push({label:"To Extra", data:"Grave1 To Extra Deck"});
                        }
                        else
                        {
                            _loc_2.push({label:"To Hand", data:"Grave1 To Hand"});
                        }
                        _loc_2.push({label:"Banish", data:"Grave1 Remove from Play"});
                        if (!_loc_9)
                        {
                            _loc_2.push({label:"To T. Deck", data:"Grave1 To Top of Deck"});
                            _loc_2.push({label:"To B. Deck", data:"Grave1 To Bottom of Deck"});
                        }
                        if (_loc_4)
                        {
                            _loc_2.push({label:"To S/T", data:"Grave1 To Spell/Trap Zone"});
                        }
                        break;
                    }
                    case "grave2":
                    {
                        if (this.viewing != this.grave2)
                        {
                            break;
                        }
                        _loc_3 = param1.front_mc.card;
                        if (_loc_3 != "spell" && _loc_3 != "trap" && this.field1.hasMonsterOpening())
                        {
                            _loc_2.push({label:"SS ATK", data:"Grave2 Special Summon ATK"});
                            _loc_2.push({label:"SS DEF", data:"Grave2 Special Summon DEF"});
                        }
                        _loc_2.push({label:"Banish", data:"Grave2 Remove from Play"});
                        break;
                    }
                    case "rfg1":
                    {
                        if (this.viewing != this.rfg1)
                        {
                            break;
                        }
                        _loc_3 = param1.front_mc.card;
                        if (!param1.show_back && _loc_3 != "spell" && _loc_3 != "trap" && this.field1.hasMonsterOpening())
                        {
                            _loc_2.push({label:"SS ATK", data:"RFG1 Special Summon ATK"});
                            _loc_2.push({label:"SS DEF", data:"RFG1 Special Summon DEF"});
                        }
                        _loc_9 = _loc_3 == "fusion" || _loc_3 == "synchro" || _loc_3 == "xyz";
                        if (_loc_9)
                        {
                            _loc_2.push({label:"To Extra", data:"RFG1 To Extra Deck"});
                        }
                        else
                        {
                            _loc_2.push({label:"To Hand", data:"RFG1 To Hand"});
                        }
                        if (!param1.show_back)
                        {
                            _loc_2.push({label:"To Grave", data:"RFG1 To Graveyard"});
                        }
                        if (!_loc_9)
                        {
                            _loc_2.push({label:"To T. Deck", data:"RFG1 To Top of Deck"});
                        }
                        break;
                    }
                    case "rfg2":
                    {
                        if (this.viewing != this.rfg2 || param1.show_back)
                        {
                            break;
                        }
                        _loc_3 = param1.front_mc.card;
                        if (_loc_3 != "spell" && _loc_3 != "trap" && this.field1.hasMonsterOpening())
                        {
                            _loc_2.push({label:"SS ATK", data:"RFG2 Special Summon ATK"});
                            _loc_2.push({label:"SS DEF", data:"RFG2 Special Summon DEF"});
                        }
                        _loc_2.push({label:"To Grave", data:"RFG2 To Graveyard"});
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            if (_loc_2.length > 0)
            {
                _loc_10 = new DuelCardMenu();
                _loc_10.initialize(new DataProvider(_loc_2), this.cardMenuClick, param1);
                _loc_10.addEventListener(MouseEvent.ROLL_OUT, this.menuRollOutE);
                this.menu_mc.addChild(_loc_10);
                this.menu = _loc_10;
                this.menu_card = param1;
            }
            return;
        }// end function

        public function menuCardMouseOut(event:MouseEvent)
        {
            if (this.menu_card == null)
            {
                return;
            }
            var _loc_2:* = event.stageX;
            var _loc_3:* = event.stageY;
            var _loc_4:* = this.menu.x;
            var _loc_5:* = this.menu.y;
            if (_loc_2 >= _loc_4 + 2 && _loc_2 <= _loc_4 + this.menu.menu_width - 2 && _loc_3 <= _loc_5 + 50 && _loc_3 >= _loc_5 - 10)
            {
                return;
            }
            if (this.menu.hitTestPoint(_loc_2, _loc_3, true))
            {
                return;
            }
            this.removeCardMenu();
            return;
        }// end function

        public function menuRollOutE(event:MouseEvent)
        {
            if (this.menu_card == null)
            {
                return;
            }
            var _loc_2:* = event.stageX;
            var _loc_3:* = event.stageY;
            var _loc_4:* = this.menu.x;
            var _loc_5:* = this.menu.y;
            if (_loc_2 >= _loc_4 + 2 && _loc_2 <= _loc_4 + this.menu.menu_width - 2 && _loc_3 <= _loc_5 + 50 && _loc_3 >= _loc_5 - 10)
            {
                return;
            }
            if (this.menu_card.hitTestPoint(_loc_2, _loc_3, true))
            {
                return;
            }
            this.removeCardMenu();
            this.previewStopE(event);
            return;
        }// end function

        public function removeCardMenu(param1:Boolean = true)
        {
            if (this.menu != null)
            {
                this.menu.removeEventListener(MouseEvent.ROLL_OUT, this.menuRollOutE);
                this.menu_mc.removeChild(this.menu);
                this.menu = null;
                if (this.menu_card.loc == "hand1" && param1)
                {
                    this.menu_card.y = this.HAND1_Y;
                    if (this.menu_card == this.sel_card1)
                    {
                        this.select1_mc.y = this.HAND1_Y;
                    }
                }
                this.menu_card = null;
            }
            return;
        }// end function

        public function cardMenuClick(param1:DuelCard, param2:String, param3:MouseEvent)
        {
            var _loc_4:* = undefined;
            if (param2 == "Attack")
            {
                _loc_4 = this.field2.getOnlyMonsterId();
                if (_loc_4 == null)
                {
                    this.attacking_id = param1.id;
                    this.sword_mc.x = param1.x;
                    this.sword_mc.y = param1.y;
                    this.sword_mc.rotation = -90;
                    this.sword_mc.visible = true;
                    stage.addEventListener(MouseEvent.CLICK, this.removeSwordE);
                    stage.addEventListener(MouseEvent.MOUSE_MOVE, this.moveSwordE);
                }
                else
                {
                    this.Send(["Duel", "Attack", param1.id, _loc_4]);
                }
            }
            else if (param2 == "Attack directly")
            {
                this.Send(["Duel", "Attack", param1.id, ""]);
            }
            else if (param2 == "Field Overlay" || param2 == "Xyz Overlay ATK" || param2 == "Xyz Overlay DEF")
            {
                _loc_4 = this.field1.getOnlyOverlayOptionId(param1.id);
                if (_loc_4 == null)
                {
                    this.xyz_menu = param2;
                    this.xyz_card = param1;
                    this.xyz_target_mc.x = param3.stageX;
                    this.xyz_target_mc.y = param3.stageY;
                    this.xyz_target_mc.angle = -90;
                    this.xyz_target_mc.visible = true;
                    this.xyz_target_mc.glow = false;
                    stage.addEventListener(MouseEvent.CLICK, this.removeXyzTargetE);
                    stage.addEventListener(MouseEvent.MOUSE_MOVE, this.moveXyzTargetE);
                }
                else
                {
                    this.Send(["Duel", param2, param1.id, _loc_4]);
                }
            }
            else
            {
                this.click_callback(param1, param2);
            }
            this.removeCardMenu();
            return;
        }// end function

        public function removeSwordE(event:MouseEvent = null)
        {
            if (event != null && event.target is DuelCardMenuItem)
            {
                return;
            }
            this.attacking_id = null;
            this.sword_mc.visible = false;
            stage.removeEventListener(MouseEvent.CLICK, this.removeSwordE);
            stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.moveSwordE);
            if (this.card_over != null)
            {
                this.menuCardMouseOver(this.card_over);
            }
            return;
        }// end function

        public function moveSwordE(event:MouseEvent)
        {
            var _loc_2:* = event.stageY - this.sword_mc.y;
            var _loc_3:* = event.stageX - this.sword_mc.x;
            this.sword_mc.rotation = Math.atan2(_loc_2, _loc_3) * 180 / Math.PI;
            return;
        }// end function

        public function removeXyzTargetE(event:MouseEvent = null)
        {
            if (event != null && event.target is DuelCardMenuItem)
            {
                return;
            }
            this.xyz_card = null;
            this.xyz_target_mc.visible = false;
            stage.removeEventListener(MouseEvent.CLICK, this.removeXyzTargetE);
            stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.moveXyzTargetE);
            if (this.card_over != null)
            {
                this.menuCardMouseOver(this.card_over);
            }
            return;
        }// end function

        public function moveXyzTargetE(event:MouseEvent)
        {
            this.xyz_target_mc.x = event.stageX;
            this.xyz_target_mc.y = event.stageY;
            var _loc_2:* = this.xyz_card.parent.localToGlobal(new Point(this.xyz_card.x, this.xyz_card.y));
            var _loc_3:* = event.stageY - _loc_2.y;
            var _loc_4:* = event.stageX - _loc_2.x;
            this.xyz_target_mc.angle = Math.atan2(_loc_3, _loc_4) * 180 / Math.PI;
            return;
        }// end function

        public function init(param1:Boolean, param2:int, param3:Function, param4:Number, param5, param6:Function, param7:Function, param8:Function, param9:Function, param10:SquarePicture, param11:Function)
        {
            this.duelist = param1;
            this.admin = param2;
            this.addTweens = param3;
            this.DUEL_TWEEN_TIME = param4;
            this.HAND_SHUFFLE_TWEEN_TIME = this.DUEL_TWEEN_TIME / 2;
            this.previewE = param5.previewE;
            this.previewStopE = param5.previewStopE;
            this.click_callback = param6;
            this.isMyBP = param7;
            this.Send = param8;
            this.initDuelCard = param9;
            this.field_bg = param10;
            this.enableCounter = param11;
            this.deck1 = new DuelMap();
            this.hand1 = new DuelMap();
            this.extra1 = new DuelMap();
            this.field1 = new DuelMap();
            this.grave1 = new DuelMap();
            this.rfg1 = new DuelMap();
            this.deck2 = new DuelMap();
            this.hand2 = new DuelMap();
            this.extra2 = new DuelMap();
            this.field2 = new DuelMap();
            this.grave2 = new DuelMap();
            this.rfg2 = new DuelMap();
            this.underlay = new DuelMap();
            this.FIELD_SCALE = 0.15;
            this.HAND_SCALE = 0.25;
            this.DECK1_X = 785;
            this.DECK1_Y = 477.5;
            this.EXTRA1_X = 254;
            this.EXTRA1_Y = 477.5;
            this.GRAVE1_X = 785;
            this.GRAVE1_Y = 384.5;
            this.RFG1_X = 785;
            this.RFG1_Y = 291.5;
            this.DECK2_X = 254;
            this.DECK2_Y = 105.5;
            this.EXTRA2_X = 785;
            this.EXTRA2_Y = 105.5;
            this.GRAVE2_X = 254;
            this.GRAVE2_Y = 198.5;
            this.RFG2_X = 254;
            this.RFG2_Y = 291.5;
            this.FIELD1_X = [333.5, 426.5, 519.5, 612.5, 705.5, 254, 333.5, 426.5, 519.5, 612.5, 705.5];
            this.FIELD1_Y = [477.5, 477.5, 477.5, 477.5, 477.5, 384.5, 384.5, 384.5, 384.5, 384.5, 384.5];
            this.FIELD2_X = [705.5, 612.5, 519.5, 426.5, 333.5, 785, 705.5, 612.5, 519.5, 426.5, 333.5];
            this.FIELD2_Y = [105.5, 105.5, 105.5, 105.5, 105.5, 198.5, 198.5, 198.5, 198.5, 198.5, 198.5];
            this.CARD_SPACING_X = 0.3;
            this.CARD_SPACING_Y = 0.1;
            this.HAND_LEFT_X = 272;
            this.HAND_RIGHT_X = 701;
            this.HAND_MIDDLE_X = (this.HAND_LEFT_X + this.HAND_RIGHT_X) / 2;
            this.HAND_WIDTH = 100;
            this.HAND_SPAN_X = this.HAND_RIGHT_X - this.HAND_LEFT_X;
            this.HAND1_Y = 603.5;
            this.HAND1_Y_UP = this.HAND1_Y - 28;
            this.HAND2_Y = -20.5;
            this.COUNT_OFFSET_X = 25;
            this.COUNT_OFFSET_Y = 13.55;
            this.REVEAL_X = 519.5;
            this.REVEAL_Y = 291.5;
            this.REVEAL_SCALE = 0.5;
            this.OVERLAY_WIDTH = 27;
            this.viewInit();
            this.seal_mc.visible = false;
            this.seal_mc.mouseChildren = false;
            this.seal_mc.mouseEnabled = false;
            removeChild(this.select1_mc);
            removeChild(this.select2_mc);
            if (param1 || param2)
            {
                this.grave1_mc.addEventListener(MouseEvent.CLICK, this.grave1ClickE);
                this.grave1_mc.buttonMode = true;
                this.grave1_mc.tabEnabled = false;
                this.rfg1_mc.addEventListener(MouseEvent.CLICK, this.rfg1ClickE);
                this.rfg1_mc.buttonMode = true;
                this.rfg1_mc.tabEnabled = false;
                this.grave2_mc.addEventListener(MouseEvent.CLICK, this.grave2ClickE);
                this.grave2_mc.buttonMode = true;
                this.grave2_mc.tabEnabled = false;
                this.rfg2_mc.addEventListener(MouseEvent.CLICK, this.rfg2ClickE);
                this.rfg2_mc.buttonMode = true;
                this.rfg2_mc.tabEnabled = false;
            }
            this.red_stream_mc.visible = false;
            this.red_stream_mc.mouseChildren = false;
            this.red_stream_mc.mouseEnabled = false;
            this.red_stream_mc.gotoAndStop(0);
            this.blue_stream_mc.visible = false;
            this.blue_stream_mc.mouseChildren = false;
            this.blue_stream_mc.mouseEnabled = false;
            this.blue_stream_mc.gotoAndStop(0);
            this.sword_mc.visible = false;
            this.sword_mc.mouseChildren = false;
            this.sword_mc.mouseEnabled = false;
            this.xyz_target_mc.visible = false;
            this.xyz_target_mc.mouseChildren = false;
            this.xyz_target_mc.mouseEnabled = false;
            this.counter_mc.visible = false;
            this.counter_mc.mouseEnabled = false;
            mouseEnabled = false;
            return;
        }// end function

        public function removeCard(param1:String, param2:String = null, param3:Array = null) : DuelCard
        {
            var _loc_4:DuelCard = null;
            var _loc_5:DuelCard = null;
            var _loc_6:DuelCard = null;
            this.removeSelect();
            if (param2 == "")
            {
                param2 = null;
            }
            switch(param1)
            {
                case "deck1":
                {
                    if (param2 == null)
                    {
                        _loc_4 = this.deck1.remove();
                    }
                    else
                    {
                        _loc_4 = this.deck1.remove(param2);
                    }
                    if (this.viewing == this.deck1)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else if (param2 != null)
                    {
                        this.restoreDeck1();
                    }
                    this.updateDeck1Count();
                    break;
                }
                case "hand1":
                {
                    _loc_4 = this.hand1.remove(param2);
                    this.updateHand1(param3);
                    break;
                }
                case "extra1":
                {
                    _loc_4 = this.extra1.remove(param2);
                    if (this.viewing == this.extra1)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.restoreExtra1();
                    }
                    this.updateExtra1Count();
                    break;
                }
                case "field1":
                {
                    _loc_4 = this.field1.remove(param2);
                    if (_loc_4.position >= 6)
                    {
                        this["atk_def1_" + _loc_4.position + "_txt"].text = "";
                    }
                    if (this.duelist)
                    {
                        this.enableCounter(_loc_4.counter_mc, false);
                        _loc_4.removeEventListener(MouseEvent.CLICK, this.clickCardOverlayE);
                    }
                    if (_loc_4.position == 5)
                    {
                        _loc_5 = this.field2.getFieldSpell();
                        if (_loc_5 == null || _loc_5.show_back)
                        {
                            this.field_bg.setPicture("");
                        }
                        else
                        {
                            this.field_bg.copyPicture(_loc_5.front_mc.picture_mc);
                        }
                    }
                    if (this.attacking_id == param2)
                    {
                        this.removeSwordE();
                    }
                    if (this.xyz_card == _loc_4)
                    {
                        this.removeXyzTargetE();
                    }
                    break;
                }
                case "grave1":
                {
                    _loc_4 = this.grave1.remove(param2);
                    if (this.viewing == this.grave1)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.restoreGrave1();
                    }
                    this.updateGrave1Count();
                    break;
                }
                case "rfg1":
                {
                    _loc_4 = this.rfg1.remove(param2);
                    if (this.viewing == this.rfg1)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.restoreRfg1();
                    }
                    this.updateRfg1Count();
                    break;
                }
                case "deck2":
                {
                    _loc_4 = this.deck2.remove(param2);
                    if (this.viewing == this.deck2)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.restoreDeck2();
                    }
                    this.updateDeck2Count();
                    break;
                }
                case "hand2":
                {
                    _loc_4 = this.hand2.remove(param2);
                    if (this.viewing == this.hand2)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.updateHand2(param3);
                    }
                    if (this.duelist)
                    {
                        _loc_4.removeEventListener(MouseEvent.CLICK, this.clickCardE);
                        _loc_4.buttonMode = false;
                    }
                    break;
                }
                case "extra2":
                {
                    _loc_4 = this.extra2.remove(param2);
                    if (this.viewing == this.extra2)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.restoreExtra2();
                    }
                    this.updateExtra2Count();
                    break;
                }
                case "field2":
                {
                    _loc_4 = this.field2.remove(param2);
                    if (_loc_4.position >= 6)
                    {
                        this["atk_def2_" + _loc_4.position + "_txt"].text = "";
                    }
                    if (this.duelist)
                    {
                        _loc_4.removeEventListener(MouseEvent.CLICK, this.clickCardE);
                        _loc_4.buttonMode = false;
                    }
                    if (_loc_4.position == 5)
                    {
                        _loc_5 = this.field1.getFieldSpell();
                        if (_loc_5 == null || _loc_5.show_back)
                        {
                            this.field_bg.setPicture("");
                        }
                        else
                        {
                            this.field_bg.copyPicture(_loc_5.front_mc.picture_mc);
                        }
                    }
                    break;
                }
                case "grave2":
                {
                    _loc_4 = this.grave2.remove(param2);
                    if (this.viewing == this.grave2)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.restoreGrave2();
                    }
                    this.updateGrave2Count();
                    break;
                }
                case "rfg2":
                {
                    _loc_4 = this.rfg2.remove(param2);
                    if (this.viewing == this.rfg2)
                    {
                        this.removeFromView(_loc_4);
                        this.updateView();
                    }
                    else
                    {
                        this.restoreRfg2();
                    }
                    this.updateRfg2Count();
                    break;
                }
                case "underlay":
                {
                    _loc_4 = this.underlay.remove(param2);
                    _loc_6 = _loc_4.overlay_next;
                    while (_loc_6.loc == "underlay1" || _loc_6.loc == "underlay2")
                    {
                        
                        _loc_6 = _loc_6.overlay_next;
                    }
                    _loc_4.overlayUnlink();
                    if (_loc_6.loc == "field1" || _loc_6.loc == "field2")
                    {
                        this.adjustOverlay(_loc_6, _loc_6.isSideways(), _loc_6.show_back, false, param3, this.field_mc);
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            _loc_4.loc = null;
            return _loc_4;
        }// end function

        public function addCard(param1:DuelCard, param2:String, param3:Object = null, param4:Boolean = false, param5:Boolean = false, param6:Array = null, param7:Boolean = false)
        {
            var _loc_10:DuelCard = null;
            this.removeSelect();
            if (param2 != "field1" && param2 != "field2" || param4)
            {
                param1.counter = 0;
            }
            if (param2 == "deck1_bottom")
            {
                param1.loc = "deck1";
            }
            else if (param2 == "deck2_bottom")
            {
                param1.loc = "deck2";
            }
            else
            {
                param1.loc = param2;
            }
            var _loc_8:Number = 0;
            var _loc_9:Boolean = false;
            switch(param2)
            {
                case "deck1":
                {
                    if (this.viewing == this.deck1)
                    {
                        this.deck1.putInFront(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateDeck1Count();
                        return;
                    }
                    this.addDeck1(param1, param6);
                    this.updateDeck1Count();
                    param4 = true;
                    param5 = false;
                    break;
                }
                case "deck1_bottom":
                {
                    if (this.viewing == this.deck1)
                    {
                        this.deck1.put(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateDeck1Count();
                        return;
                    }
                    this.addDeck1Bottom(param1, param6);
                    this.updateDeck1Count();
                    param4 = true;
                    param5 = false;
                    break;
                }
                case "hand1":
                {
                    this.addHand1(param1, param6);
                    param4 = !this.duelist;
                    param5 = false;
                    break;
                }
                case "extra1":
                {
                    if (this.viewing == this.extra1)
                    {
                        this.extra1.put(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateExtra1Count();
                        return;
                    }
                    this.addExtra1(param1, param6);
                    this.updateExtra1Count();
                    param4 = true;
                    param5 = false;
                    break;
                }
                case "field1":
                {
                    param1.position = int(param3);
                    if (this.duelist && !param4)
                    {
                        this.enableCounter(param1.counter_mc);
                        if (param1.position >= 6 && param1.front_mc.card != "token")
                        {
                            param1.addEventListener(MouseEvent.CLICK, this.clickCardOverlayE);
                        }
                    }
                    _loc_10 = param1.overlay_next;
                    if (_loc_10.loc != "underlay1")
                    {
                        while (_loc_10 != param1)
                        {
                            
                            _loc_10.loc = "underlay1";
                            _loc_10 = _loc_10.overlay_next;
                        }
                    }
                    this.field1.put(param1);
                    this.adjustOverlay(param1, param5, param4, param7, param6);
                    _loc_9 = true;
                    break;
                }
                case "grave1":
                {
                    if (this.viewing == this.grave1)
                    {
                        this.grave1.putInFront(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateGrave1Count();
                        return;
                    }
                    this.addGrave1(param1, param6);
                    this.updateGrave1Count();
                    param4 = false;
                    param5 = false;
                    break;
                }
                case "rfg1":
                {
                    if (this.viewing == this.rfg1)
                    {
                        this.rfg1.putInFront(param1);
                        param1.cardRotationY = param4 ? (180) : (0);
                        this.updateView();
                        this.updateRfg1Count();
                        return;
                    }
                    this.addRfg1(param1, param6);
                    this.updateRfg1Count();
                    param5 = false;
                    break;
                }
                case "deck2":
                {
                    if (this.viewing == this.deck2)
                    {
                        this.deck2.putInFront(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateDeck2Count();
                        return;
                    }
                    this.addDeck2(param1, param6);
                    this.updateDeck2Count();
                    param4 = true;
                    param5 = false;
                    _loc_8 = 180;
                    break;
                }
                case "deck2_bottom":
                {
                    if (this.viewing == this.deck2)
                    {
                        this.deck2.put(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateDeck2Count();
                        return;
                    }
                    this.addDeck2Bottom(param1, param6);
                    this.updateDeck2Count();
                    param4 = true;
                    param5 = false;
                    _loc_8 = 180;
                    break;
                }
                case "hand2":
                {
                    if (this.duelist)
                    {
                        param1.addEventListener(MouseEvent.CLICK, this.clickCardE);
                        param1.buttonMode = true;
                        param1.tabEnabled = false;
                    }
                    if (this.viewing == this.hand2)
                    {
                        this.hand2.put(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        return;
                    }
                    this.addHand2(param1, param6);
                    param4 = true;
                    param5 = false;
                    _loc_8 = 180;
                    break;
                }
                case "extra2":
                {
                    if (this.viewing == this.extra2)
                    {
                        this.extra2.put(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateExtra2Count();
                        return;
                    }
                    this.addExtra2(param1, param6);
                    this.updateExtra2Count();
                    param4 = true;
                    param5 = false;
                    _loc_8 = 180;
                    break;
                }
                case "field2":
                {
                    if (this.duelist)
                    {
                        param1.addEventListener(MouseEvent.CLICK, this.clickCardE);
                        param1.buttonMode = true;
                        param1.tabEnabled = false;
                    }
                    param1.position = int(param3);
                    _loc_10 = param1.overlay_next;
                    if (_loc_10.loc != "underlay2")
                    {
                        while (_loc_10 != param1)
                        {
                            
                            _loc_10.loc = "underlay2";
                            _loc_10 = _loc_10.overlay_next;
                        }
                    }
                    this.field2.put(param1);
                    this.adjustOverlay(param1, param5, param4, param7, param6);
                    _loc_9 = true;
                    break;
                }
                case "grave2":
                {
                    if (this.viewing == this.grave2)
                    {
                        this.grave2.putInFront(param1);
                        param1.cardRotationY = 0;
                        this.updateView();
                        this.updateGrave2Count();
                        return;
                    }
                    this.addGrave2(param1, param6);
                    this.updateGrave2Count();
                    param4 = false;
                    param5 = false;
                    _loc_8 = 180;
                    break;
                }
                case "rfg2":
                {
                    if (this.viewing == this.rfg2)
                    {
                        this.rfg2.putInFront(param1);
                        param1.cardRotationY = param4 ? (180) : (0);
                        this.updateView();
                        this.updateRfg2Count();
                        return;
                    }
                    this.addRfg2(param1, param6);
                    this.updateRfg2Count();
                    param5 = false;
                    _loc_8 = 180;
                    break;
                }
                case "underlay1":
                case "underlay2":
                {
                    this.underlay.put(param1);
                    _loc_9 = true;
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (!_loc_9)
            {
                this.moveCard(param1, param6, "cardRotationY", param4 ? (180) : (0));
                this.moveCard(param1, param6, "cardRotationZ", param5 ? (_loc_8 - 90) : (_loc_8));
            }
            param1.addEventListener(MouseEvent.ROLL_OVER, this.cardOverE);
            param1.addEventListener(MouseEvent.ROLL_OUT, this.cardOutE);
            return;
        }// end function

        public function specialTweens(param1:DuelCard, param2:Array)
        {
            this.seal_mc.x = param1.x;
            this.seal_mc.y = param1.y;
            this.seal_mc.visible = true;
            param1.front_mc.mask = this.seal_mc.circle;
            var _loc_3:* = new Tween(this.seal_mc, "scale", None.easeNone, 0, 0.25, this.DUEL_TWEEN_TIME, true);
            _loc_3.addEventListener(TweenEvent.MOTION_FINISH, param1.decrementTweenCountE);
            param2.push(_loc_3);
            _loc_3 = new Tween(this.seal_mc, "rotation", None.easeNone, 0, 180, this.DUEL_TWEEN_TIME, true);
            _loc_3.addEventListener(TweenEvent.MOTION_FINISH, param1.decrementTweenCountE);
            param2.push(_loc_3);
            param1.tweenCount = param1.tweenCount + 2;
            param1.doneTweeningCallback = this.tryMenuCardMouseOver;
            this.seal_card = param1;
            return;
        }// end function

        public function tokenFinish(param1) : Array
        {
            this.seal_mc.visible = false;
            this.seal_card.front_mc.mask = null;
            this.field_mc.addChild(this.seal_card);
            this.seal_card = null;
            return [];
        }// end function

        public function finishFieldCard(param1:DuelCard, param2:Boolean, param3:Boolean = true)
        {
            var _loc_6:String = null;
            var _loc_7:String = null;
            var _loc_8:String = null;
            var _loc_9:String = null;
            var _loc_4:* = param1.overlay_prev;
            while (_loc_4 != param1)
            {
                
                this.field_mc.addChild(_loc_4);
                _loc_4 = _loc_4.overlay_prev;
            }
            this.field_mc.addChild(param1);
            var _loc_5:* = !param1.show_back || this.duelist && param2;
            if ((!param1.show_back || this.duelist && param2) && param1.position >= 6)
            {
                _loc_6 = param2 ? ("atk_def1_") : ("atk_def2_");
                _loc_7 = param1.front_mc.card;
                if (_loc_7 != "spell" && _loc_7 != "trap" && _loc_7 != "token")
                {
                    _loc_8 = param1.front_mc.atk;
                    _loc_9 = param1.front_mc.def;
                    this[_loc_6 + param1.position + "_txt"].text = _loc_8 + " / " + _loc_9;
                }
            }
            if (param3 && param1.position == 5 && !param1.show_back)
            {
                this.loadFieldBackground(param1);
            }
            return;
        }// end function

        public function loadFieldBackground(param1:DuelCard)
        {
            this.field_bg.copyPicture(param1.front_mc.picture_mc);
            return;
        }// end function

        public function afterMoveTweens(param1:Array) : Array
        {
            var _loc_4:DuelCard = null;
            var _loc_5:Boolean = false;
            if (this.seal_card != null)
            {
                this.seal_mc.visible = false;
                this.seal_card.front_mc.mask = null;
                this.seal_card = null;
            }
            var _loc_2:* = param1[1];
            var _loc_3:* = param1[2];
            if (_loc_3 == "field1")
            {
                _loc_4 = this.field1.get(_loc_2);
                _loc_5 = true;
            }
            else if (_loc_3 == "field2")
            {
                _loc_4 = this.field2.get(_loc_2);
                _loc_5 = false;
            }
            else
            {
                return [];
            }
            this.finishFieldCard(_loc_4, _loc_5);
            return [];
        }// end function

        public function revealCard(param1:DuelCard, param2:Array)
        {
            this.top_mc.addChild(param1);
            this.moveCard(param1, param2, "x", this.REVEAL_X);
            this.moveCard(param1, param2, "y", this.REVEAL_Y);
            this.moveCard(param1, param2, "scale", this.REVEAL_SCALE);
            this.moveCard(param1, param2, "cardRotationY", 0);
            this.moveCard(param1, param2, "cardRotationZ", 0);
            this.previewE(null, param1);
            return;
        }// end function

        public function moveCard(param1:DuelCard, param2:Array, param3:String, param4:Number, param5:Boolean = true)
        {
            var _loc_7:Tween = null;
            var _loc_6:* = param1[param3];
            if (param1[param3] == param4)
            {
                return;
            }
            if (param1 == this.menu_card)
            {
                this.removeCardMenu(param5);
            }
            if (param2 == null)
            {
                param1[param3] = param4;
                this.tryMenuCardMouseOver(param1);
            }
            else
            {
                _loc_7 = new Tween(param1, param3, None.easeNone, _loc_6, param4, this.DUEL_TWEEN_TIME, true);
                var _loc_8:* = param1;
                var _loc_9:* = param1.tweenCount + 1;
                _loc_8.tweenCount = _loc_9;
                _loc_7.addEventListener(TweenEvent.MOTION_FINISH, param1.decrementTweenCountE);
                param1.doneTweeningCallback = this.tryMenuCardMouseOver;
                param2.push(_loc_7);
            }
            return;
        }// end function

        public function addDeck1(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.deck1_mc) < getChildIndex(this.grave1_mc))
            {
                swapChildren(this.deck1_mc, this.grave1_mc);
            }
            if (getChildIndex(this.deck1_mc) < getChildIndex(this.rfg1_mc))
            {
                swapChildren(this.deck1_mc, this.rfg1_mc);
            }
            this.deck1_mc.addChild(param1);
            var _loc_3:* = this.deck1.size;
            this.moveCard(param1, param2, "x", this.DECK1_X + _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.DECK1_Y + _loc_3 * this.CARD_SPACING_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.deck1.putInFront(param1);
            return;
        }// end function

        public function addDeck1Bottom(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.deck1_mc) < getChildIndex(this.grave1_mc))
            {
                swapChildren(this.deck1_mc, this.grave1_mc);
            }
            if (getChildIndex(this.deck1_mc) < getChildIndex(this.rfg1_mc))
            {
                swapChildren(this.deck1_mc, this.rfg1_mc);
            }
            this.deck1_mc.addChild(param1);
            this.moveCard(param1, param2, "x", this.DECK1_X);
            this.moveCard(param1, param2, "y", this.DECK1_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            var _loc_3:int = 1;
            var _loc_4:* = this.deck1.prev();
            while (_loc_4 != null)
            {
                
                this.deck1_mc.addChild(_loc_4);
                _loc_4.x = this.DECK1_X + _loc_3 * this.CARD_SPACING_X;
                _loc_4.y = this.DECK1_Y + _loc_3 * this.CARD_SPACING_Y;
                _loc_3++;
                _loc_4 = this.deck1.prev();
            }
            this.deck1.put(param1);
            return;
        }// end function

        public function restoreDeck1()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.deck1.prev();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.DECK1_X + _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.DECK1_Y + _loc_1 * this.CARD_SPACING_Y;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = 180;
                _loc_2.cardRotationZ = 0;
                this.middle_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.deck1.prev();
            }
            return;
        }// end function

        public function addHand1(param1:DuelCard, param2:Array)
        {
            this.top_mc.addChild(param1);
            this.hand1.put(param1);
            this.moveCard(param1, param2, "y", this.HAND1_Y, false);
            this.moveCard(param1, param2, "scale", this.HAND_SCALE);
            this.updateHand1(param2);
            return;
        }// end function

        public function updateHand1(param1:Array)
        {
            var _loc_4:* = undefined;
            var _loc_5:DuelCard = null;
            var _loc_6:Number = NaN;
            var _loc_7:Number = NaN;
            var _loc_8:Number = NaN;
            var _loc_2:* = this.hand1.size;
            if (_loc_2 == 0)
            {
                return;
            }
            var _loc_3:* = _loc_2 - 1;
            if (_loc_3 >= 5)
            {
                _loc_4 = 0;
                while (_loc_4 < _loc_3)
                {
                    
                    _loc_5 = this.hand1.next();
                    _loc_6 = this.HAND_LEFT_X + _loc_4 * this.HAND_SPAN_X / _loc_3;
                    this.moveCard(_loc_5, param1, "x", _loc_6);
                    _loc_4 = _loc_4 + 1;
                }
                this.moveCard(this.hand1.next(), param1, "x", this.HAND_RIGHT_X);
            }
            else
            {
                _loc_7 = (this.HAND_SPAN_X - this.HAND_WIDTH * _loc_3) / 2;
                _loc_8 = this.HAND_LEFT_X + _loc_7;
                _loc_4 = 0;
                while (_loc_4 < _loc_3)
                {
                    
                    _loc_5 = this.hand1.next();
                    _loc_6 = _loc_8 + _loc_4 * this.HAND_WIDTH;
                    this.moveCard(_loc_5, param1, "x", _loc_6);
                    _loc_4 = _loc_4 + 1;
                }
                _loc_6 = this.HAND_RIGHT_X - _loc_7;
                this.moveCard(this.hand1.next(), param1, "x", _loc_6);
            }
            this.hand1.iterate_stop();
            return;
        }// end function

        public function addExtra1(param1:DuelCard, param2:Array)
        {
            this.middle_mc.addChild(param1);
            var _loc_3:* = this.extra1.size;
            this.moveCard(param1, param2, "x", this.EXTRA1_X - _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.EXTRA1_Y + _loc_3 * this.CARD_SPACING_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.extra1.put(param1);
            return;
        }// end function

        public function restoreExtra1()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.extra1.next();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.EXTRA1_X - _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.EXTRA1_Y + _loc_1 * this.CARD_SPACING_Y;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = 180;
                _loc_2.cardRotationZ = 0;
                this.middle_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.extra1.next();
            }
            return;
        }// end function

        public function addGrave1(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.grave1_mc) < getChildIndex(this.rfg1_mc))
            {
                swapChildren(this.grave1_mc, this.rfg1_mc);
            }
            if (getChildIndex(this.grave1_mc) < getChildIndex(this.deck1_mc))
            {
                swapChildren(this.grave1_mc, this.deck1_mc);
            }
            this.grave1_mc.addChild(param1);
            var _loc_3:* = this.grave1.size;
            this.moveCard(param1, param2, "x", this.GRAVE1_X + _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.GRAVE1_Y + _loc_3 * this.CARD_SPACING_Y / 2);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.grave1.putInFront(param1);
            return;
        }// end function

        public function restoreGrave1()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.grave1.prev();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.GRAVE1_X + _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.GRAVE1_Y + _loc_1 * this.CARD_SPACING_Y / 2;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = 0;
                _loc_2.cardRotationZ = 0;
                this.grave1_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.grave1.prev();
            }
            return;
        }// end function

        public function addRfg1(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.rfg1_mc) < getChildIndex(this.grave1_mc))
            {
                swapChildren(this.rfg1_mc, this.grave1_mc);
            }
            if (getChildIndex(this.rfg1_mc) < getChildIndex(this.deck1_mc))
            {
                swapChildren(this.rfg1_mc, this.deck1_mc);
            }
            this.rfg1_mc.addChild(param1);
            var _loc_3:* = this.rfg1.size;
            this.moveCard(param1, param2, "x", this.RFG1_X + _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.RFG1_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.rfg1.putInFront(param1);
            return;
        }// end function

        public function restoreRfg1()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.rfg1.prev();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.RFG1_X + _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.RFG1_Y;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = _loc_2.show_back ? (180) : (0);
                _loc_2.cardRotationZ = 0;
                this.rfg1_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.rfg1.prev();
            }
            return;
        }// end function

        public function addDeck2(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.deck2_mc) < getChildIndex(this.grave2_mc))
            {
                swapChildren(this.deck2_mc, this.grave2_mc);
            }
            if (getChildIndex(this.deck2_mc) < getChildIndex(this.rfg2_mc))
            {
                swapChildren(this.deck2_mc, this.rfg2_mc);
            }
            this.deck2_mc.addChild(param1);
            var _loc_3:* = this.deck2.size;
            this.moveCard(param1, param2, "x", this.DECK2_X - _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.DECK2_Y - _loc_3 * this.CARD_SPACING_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.deck2.putInFront(param1);
            return;
        }// end function

        public function addDeck2Bottom(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.deck2_mc) < getChildIndex(this.grave2_mc))
            {
                swapChildren(this.deck2_mc, this.grave2_mc);
            }
            if (getChildIndex(this.deck2_mc) < getChildIndex(this.rfg2_mc))
            {
                swapChildren(this.deck2_mc, this.rfg2_mc);
            }
            this.deck2_mc.addChild(param1);
            this.moveCard(param1, param2, "x", this.DECK2_X);
            this.moveCard(param1, param2, "y", this.DECK2_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            var _loc_3:int = 1;
            var _loc_4:* = this.deck2.prev();
            while (_loc_4 != null)
            {
                
                this.deck2_mc.addChild(_loc_4);
                _loc_4.x = this.DECK2_X - _loc_3 * this.CARD_SPACING_X;
                _loc_4.y = this.DECK2_Y - _loc_3 * this.CARD_SPACING_Y;
                _loc_3++;
                _loc_4 = this.deck2.prev();
            }
            this.deck2.put(param1);
            return;
        }// end function

        public function restoreDeck2()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.deck2.prev();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.DECK2_X - _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.DECK2_Y - _loc_1 * this.CARD_SPACING_Y;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = 180;
                _loc_2.cardRotationZ = 180;
                this.middle_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.deck2.prev();
            }
            return;
        }// end function

        public function addHand2(param1:DuelCard, param2:Array)
        {
            this.top_mc.addChild(param1);
            this.hand2.put(param1);
            this.updateHand2(param2);
            this.moveCard(param1, param2, "y", this.HAND2_Y);
            this.moveCard(param1, param2, "scale", this.HAND_SCALE);
            return;
        }// end function

        public function updateHand2(param1:Array)
        {
            var _loc_4:* = undefined;
            var _loc_5:DuelCard = null;
            var _loc_6:Number = NaN;
            var _loc_7:Number = NaN;
            var _loc_8:Number = NaN;
            var _loc_2:* = this.hand2.size;
            if (_loc_2 == 0)
            {
                return;
            }
            var _loc_3:* = _loc_2 - 1;
            if (_loc_3 >= 5)
            {
                _loc_4 = 0;
                while (_loc_4 < _loc_3)
                {
                    
                    _loc_5 = this.hand2.next();
                    _loc_6 = this.HAND_RIGHT_X - _loc_4 * this.HAND_SPAN_X / _loc_3;
                    this.moveCard(_loc_5, param1, "x", _loc_6);
                    _loc_4 = _loc_4 + 1;
                }
                this.moveCard(this.hand2.next(), param1, "x", this.HAND_LEFT_X);
            }
            else
            {
                _loc_7 = (this.HAND_SPAN_X - this.HAND_WIDTH * _loc_3) / 2;
                _loc_8 = this.HAND_RIGHT_X - _loc_7;
                _loc_4 = 0;
                while (_loc_4 < _loc_3)
                {
                    
                    _loc_5 = this.hand2.next();
                    _loc_6 = _loc_8 - _loc_4 * this.HAND_WIDTH;
                    this.moveCard(_loc_5, param1, "x", _loc_6);
                    _loc_4 = _loc_4 + 1;
                }
                _loc_6 = this.HAND_LEFT_X + _loc_7;
                this.moveCard(this.hand2.next(), param1, "x", _loc_6);
            }
            this.hand2.iterate_stop();
            return;
        }// end function

        public function restoreHand2()
        {
            var _loc_3:* = undefined;
            var _loc_4:DuelCard = null;
            var _loc_5:Number = NaN;
            var _loc_6:Number = NaN;
            var _loc_1:* = this.hand2.size;
            if (_loc_1 == 0)
            {
                return;
            }
            var _loc_2:* = _loc_1 - 1;
            if (_loc_2 >= 5)
            {
                _loc_3 = 0;
                while (_loc_3 < _loc_2)
                {
                    
                    _loc_4 = this.hand2.next();
                    _loc_4.x = this.HAND_RIGHT_X - _loc_3 * this.HAND_SPAN_X / _loc_2;
                    _loc_4.y = this.HAND2_Y;
                    _loc_4.scale = this.HAND_SCALE;
                    _loc_4.cardRotationY = 180;
                    _loc_4.cardRotationZ = 180;
                    this.top_mc.addChild(_loc_4);
                    _loc_3 = _loc_3 + 1;
                }
                _loc_4 = this.hand2.next();
                _loc_4.x = this.HAND_LEFT_X;
                _loc_4.y = this.HAND2_Y;
                _loc_4.scale = this.HAND_SCALE;
                _loc_4.cardRotationY = 180;
                _loc_4.cardRotationZ = 180;
                this.top_mc.addChild(_loc_4);
            }
            else
            {
                _loc_5 = (this.HAND_SPAN_X - this.HAND_WIDTH * _loc_2) / 2;
                _loc_6 = this.HAND_RIGHT_X - _loc_5;
                _loc_3 = 0;
                while (_loc_3 < _loc_2)
                {
                    
                    _loc_4 = this.hand2.next();
                    _loc_4.x = _loc_6 - _loc_3 * this.HAND_WIDTH;
                    _loc_4.y = this.HAND2_Y;
                    _loc_4.scale = this.HAND_SCALE;
                    _loc_4.cardRotationY = 180;
                    _loc_4.cardRotationZ = 180;
                    this.top_mc.addChild(_loc_4);
                    _loc_3 = _loc_3 + 1;
                }
                _loc_4 = this.hand2.next();
                _loc_4.x = this.HAND_LEFT_X + _loc_5;
                _loc_4.y = this.HAND2_Y;
                _loc_4.scale = this.HAND_SCALE;
                _loc_4.cardRotationY = 180;
                _loc_4.cardRotationZ = 180;
                this.top_mc.addChild(_loc_4);
            }
            this.hand2.iterate_stop();
            if (this.sel_card2 != null)
            {
                this.selectCard(this.sel_card2, false);
            }
            return;
        }// end function

        public function addExtra2(param1:DuelCard, param2:Array)
        {
            this.middle_mc.addChild(param1);
            var _loc_3:* = this.extra2.size;
            this.moveCard(param1, param2, "x", this.EXTRA2_X + _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.EXTRA2_Y - _loc_3 * this.CARD_SPACING_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.extra2.put(param1);
            return;
        }// end function

        public function restoreExtra2()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.extra2.next();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.EXTRA2_X + _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.EXTRA2_Y - _loc_1 * this.CARD_SPACING_Y;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = 180;
                _loc_2.cardRotationZ = 180;
                this.middle_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.extra2.next();
            }
            return;
        }// end function

        public function addGrave2(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.grave2_mc) < getChildIndex(this.rfg2_mc))
            {
                swapChildren(this.grave2_mc, this.rfg2_mc);
            }
            if (getChildIndex(this.grave2_mc) < getChildIndex(this.deck2_mc))
            {
                swapChildren(this.grave2_mc, this.deck2_mc);
            }
            this.grave2_mc.addChild(param1);
            var _loc_3:* = this.grave2.size;
            this.moveCard(param1, param2, "x", this.GRAVE2_X - _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.GRAVE2_Y - _loc_3 * this.CARD_SPACING_Y / 2);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.grave2.putInFront(param1);
            return;
        }// end function

        public function restoreGrave2()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.grave2.prev();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.GRAVE2_X - _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.GRAVE2_Y - _loc_1 * this.CARD_SPACING_Y / 2;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = 0;
                _loc_2.cardRotationZ = 180;
                this.grave2_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.grave2.prev();
            }
            return;
        }// end function

        public function addRfg2(param1:DuelCard, param2:Array)
        {
            if (getChildIndex(this.rfg2_mc) < getChildIndex(this.grave2_mc))
            {
                swapChildren(this.rfg2_mc, this.grave2_mc);
            }
            if (getChildIndex(this.rfg2_mc) < getChildIndex(this.deck2_mc))
            {
                swapChildren(this.rfg2_mc, this.deck2_mc);
            }
            this.rfg2_mc.addChild(param1);
            var _loc_3:* = this.rfg2.size;
            this.moveCard(param1, param2, "x", this.RFG2_X - _loc_3 * this.CARD_SPACING_X);
            this.moveCard(param1, param2, "y", this.RFG2_Y);
            this.moveCard(param1, param2, "scale", this.FIELD_SCALE);
            this.rfg2.putInFront(param1);
            return;
        }// end function

        public function restoreRfg2()
        {
            var _loc_1:int = 0;
            var _loc_2:* = this.rfg2.prev();
            while (_loc_2 != null)
            {
                
                _loc_2.x = this.RFG2_X - _loc_1 * this.CARD_SPACING_X;
                _loc_2.y = this.RFG2_Y;
                _loc_2.scale = this.FIELD_SCALE;
                _loc_2.cardRotationY = _loc_2.show_back ? (180) : (0);
                _loc_2.cardRotationZ = 180;
                this.rfg2_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.rfg2.prev();
            }
            return;
        }// end function

        public function clickCardE(event:MouseEvent)
        {
            var _loc_2:* = DuelCard(event.currentTarget);
            if (this.attacking_id == null || _loc_2.loc != "field2" || _loc_2.position < 6)
            {
                this.Send(["Duel", "Card Select", _loc_2.loc, _loc_2.id]);
            }
            else
            {
                this.Send(["Duel", "Attack", this.attacking_id, _loc_2.id]);
            }
            return;
        }// end function

        public function clickCardOverlayE(event:MouseEvent)
        {
            var _loc_2:* = DuelCard(event.currentTarget);
            if (this.xyz_card != null && this.xyz_card != _loc_2)
            {
                this.Send(["Duel", this.xyz_menu, this.xyz_card.id, _loc_2.id]);
            }
            return;
        }// end function

        public function grave1ClickE(event:MouseEvent)
        {
            if (this.duelist)
            {
                this.Send(["Duel", "View Grave1"]);
            }
            else
            {
                this.addTweens(this.startViewingTween, ["Viewing Host\'s Graveyard"]);
            }
            return;
        }// end function

        public function grave2ClickE(event:MouseEvent)
        {
            if (this.duelist)
            {
                this.Send(["Duel", "View Grave2"]);
            }
            else
            {
                this.addTweens(this.startViewingTween, ["Viewing Opponent\'s Graveyard"]);
            }
            return;
        }// end function

        public function rfg1ClickE(event:MouseEvent)
        {
            if (this.duelist)
            {
                this.Send(["Duel", "View RFG1"]);
            }
            else
            {
                this.addTweens(this.startViewingTween, ["Viewing Host\'s Banished"]);
            }
            return;
        }// end function

        public function rfg2ClickE(event:MouseEvent)
        {
            if (this.duelist)
            {
                this.Send(["Duel", "View RFG2"]);
            }
            else
            {
                this.addTweens(this.startViewingTween, ["Viewing Opponent\'s Banished"]);
            }
            return;
        }// end function

        public function selectCardTween(param1:Array) : Array
        {
            var _loc_4:DuelMap = null;
            var _loc_5:Boolean = false;
            var _loc_2:* = param1[0];
            var _loc_3:* = param1[1];
            switch(_loc_2)
            {
                case "field1":
                {
                    _loc_4 = this.field1;
                    _loc_5 = true;
                    break;
                }
                case "hand1":
                {
                    _loc_4 = this.hand1;
                    _loc_5 = true;
                    break;
                }
                case "field2":
                {
                    _loc_4 = this.field2;
                    _loc_5 = false;
                    break;
                }
                case "hand2":
                {
                    _loc_4 = this.hand2;
                    _loc_5 = false;
                    break;
                }
                default:
                {
                    break;
                }
            }
            var _loc_6:* = _loc_4.get(_loc_3);
            this.selectCard(_loc_6, _loc_5);
            return [];
        }// end function

        public function selectCard(param1:DuelCard, param2:Boolean)
        {
            var _loc_3:* = param2 ? (this.select1_mc) : (this.select2_mc);
            param1.parent.addChild(_loc_3);
            _loc_3.x = param1.x;
            _loc_3.y = param1.y;
            _loc_3.scaleX = param1.scale;
            _loc_3.scaleY = param1.scale;
            _loc_3.rotation = param1.isSideways() ? (90) : (0);
            if (param2)
            {
                this.sel_card1 = param1;
            }
            else
            {
                this.sel_card2 = param1;
            }
            return;
        }// end function

        public function removeSelect()
        {
            this.sel_card1 = null;
            this.sel_card2 = null;
            if (this.select1_mc.parent != null)
            {
                this.select1_mc.parent.removeChild(this.select1_mc);
            }
            if (this.select2_mc.parent != null)
            {
                this.select2_mc.parent.removeChild(this.select2_mc);
            }
            return;
        }// end function

        public function attackTween1(param1:Array) : Array
        {
            var _loc_5:DuelCard = null;
            var _loc_6:DuelCard = null;
            var _loc_7:Number = NaN;
            var _loc_8:Number = NaN;
            var _loc_13:Boolean = false;
            var _loc_14:MovieClip = null;
            var _loc_2:* = param1[0];
            var _loc_3:* = param1[1];
            var _loc_4:* = param1[2];
            if (_loc_2 == "field1")
            {
                _loc_13 = true;
                _loc_14 = this.red_stream_mc;
                _loc_5 = this.field1.get(_loc_3);
                _loc_6 = _loc_4 == "" ? (null) : (this.field2.get(_loc_4));
            }
            else if (_loc_2 == "field2")
            {
                _loc_13 = false;
                _loc_14 = this.blue_stream_mc;
                _loc_5 = this.field2.get(_loc_3);
                _loc_6 = _loc_4 == "" ? (null) : (this.field1.get(_loc_4));
            }
            else
            {
                return [];
            }
            _loc_14.x = _loc_5.x;
            _loc_14.y = _loc_5.y;
            if (_loc_6 == null)
            {
                _loc_7 = 519.5;
                _loc_8 = _loc_14 == this.red_stream_mc ? (-25) : (665);
            }
            else
            {
                _loc_7 = _loc_6.x;
                _loc_8 = _loc_6.y;
            }
            var _loc_9:* = _loc_7 - _loc_5.x;
            var _loc_10:* = _loc_8 - _loc_5.y;
            var _loc_11:* = Math.sqrt(_loc_9 * _loc_9 + _loc_10 * _loc_10);
            _loc_14.rotation = Math.atan2(_loc_10, _loc_9) * 180 / Math.PI;
            this.removeSelect();
            if (_loc_6 != null)
            {
                this.selectCard(_loc_6, !_loc_13);
            }
            var _loc_12:* = new AttackSound();
            new AttackSound().play();
            _loc_14.visible = true;
            _loc_14.play();
            return [new Tween(_loc_14, "attackWidth", None.easeNone, 0, _loc_11, this.DUEL_TWEEN_TIME, true)];
        }// end function

        public function attackTween2(param1:Array) : Array
        {
            var _loc_3:MovieClip = null;
            var _loc_2:* = param1[0];
            if (_loc_2 == "field1")
            {
                _loc_3 = this.red_stream_mc;
            }
            else if (_loc_2 == "field2")
            {
                _loc_3 = this.blue_stream_mc;
            }
            else
            {
                return [];
            }
            _loc_3.visible = false;
            _loc_3.gotoAndStop(0);
            return [];
        }// end function

        public function overlayTweens(param1:Array) : Array
        {
            var _loc_10:Sound = null;
            var _loc_2:Array = [];
            var _loc_3:* = param1[0];
            var _loc_4:* = this.removeCard(_loc_3, param1[1], _loc_2);
            var _loc_5:* = param1[2];
            var _loc_6:* = this.removeCard(_loc_5, param1[3], _loc_2);
            this.removeCard(_loc_5, param1[3], _loc_2).counter = 0;
            if (param1.length > 5)
            {
                this.initDuelCard(_loc_4, param1.slice(5));
            }
            this.underlay.put(_loc_6);
            _loc_6.loc = _loc_5 == "field1" ? ("underlay1") : ("underlay2");
            var _loc_7:* = _loc_6.overlay_prev;
            _loc_4.overlay_prev.overlayLink(_loc_6);
            _loc_7.overlayLink(_loc_4);
            var _loc_8:* = param1[4] == "true";
            var _loc_9:* = _loc_3 == "extra1" || _loc_3 == "extra2";
            this.addCard(_loc_4, _loc_5, _loc_6.position, false, _loc_8, _loc_2, _loc_9);
            if (_loc_9)
            {
                _loc_10 = new SummonSound();
                _loc_10.play();
            }
            return _loc_2;
        }// end function

        public function adjustOverlay(param1:DuelCard, param2:Boolean, param3:Boolean, param4:Boolean, param5:Array, param6:DisplayObjectContainer = null)
        {
            var _loc_13:Number = NaN;
            var _loc_14:Array = null;
            var _loc_15:Array = null;
            var _loc_16:Array = null;
            var _loc_17:Boolean = false;
            var _loc_18:int = 0;
            var _loc_19:Number = NaN;
            var _loc_20:Number = NaN;
            var _loc_7:* = param1.position;
            if (param6 == null)
            {
                param6 = this.middle_mc;
            }
            var _loc_8:int = 0;
            var _loc_9:* = param1.overlay_prev;
            while (_loc_9 != param1)
            {
                
                param6.addChild(_loc_9);
                _loc_8++;
                _loc_9 = _loc_9.overlay_prev;
            }
            param6.addChild(param1);
            var _loc_10:* = param1.loc == "field1";
            if (param1.loc == "field1")
            {
                _loc_13 = 0;
                _loc_14 = this.FIELD1_X;
                _loc_15 = this.FIELD1_Y;
            }
            else
            {
                _loc_13 = 180;
                _loc_14 = this.FIELD2_X;
                _loc_15 = this.FIELD2_Y;
            }
            if (param2)
            {
                _loc_16 = param4 ? (null) : (param5);
                this.moveCard(param1, _loc_16, "cardRotationY", param3 ? (180) : (0));
                this.moveCard(param1, _loc_16, "cardRotationZ", param2 ? (_loc_13 - 90) : (_loc_13));
                this.moveCard(param1, _loc_16, "x", _loc_14[_loc_7]);
                this.moveCard(param1, _loc_16, "y", _loc_15[_loc_7]);
                this.moveCard(param1, _loc_16, "scale", this.FIELD_SCALE);
                if (param4)
                {
                    this.specialTweens(param1, param5);
                }
            }
            else
            {
                _loc_8++;
            }
            var _loc_11:* = param2 ? (param1.overlay_next) : (param1);
            var _loc_12:* = _loc_15[_loc_7];
            if (_loc_8 == 0)
            {
            }
            else if (_loc_8 == 1)
            {
                _loc_17 = param4 && _loc_11 == param1;
                _loc_16 = _loc_17 ? (null) : (param5);
                this.moveCard(_loc_11, _loc_16, "cardRotationY", _loc_11 == param1 && param3 ? (180) : (0));
                this.moveCard(_loc_11, _loc_16, "cardRotationZ", _loc_13);
                this.moveCard(_loc_11, _loc_16, "x", _loc_14[_loc_7]);
                this.moveCard(_loc_11, _loc_16, "y", _loc_12);
                this.moveCard(_loc_11, _loc_16, "scale", this.FIELD_SCALE);
                if (_loc_17)
                {
                    this.specialTweens(param1, param5);
                }
            }
            else
            {
                if (_loc_10)
                {
                    _loc_19 = _loc_14[_loc_7] - this.OVERLAY_WIDTH / 2;
                    _loc_20 = this.OVERLAY_WIDTH / (_loc_8 - 1);
                }
                else
                {
                    _loc_19 = _loc_14[_loc_7] + this.OVERLAY_WIDTH / 2;
                    _loc_20 = (-this.OVERLAY_WIDTH) / (_loc_8 - 1);
                }
                _loc_18 = 0;
                while (_loc_18 < _loc_8)
                {
                    
                    _loc_17 = param4 && _loc_11 == param1;
                    _loc_16 = _loc_17 ? (null) : (param5);
                    this.moveCard(_loc_11, _loc_16, "cardRotationY", _loc_11 == param1 && param3 ? (180) : (0));
                    this.moveCard(_loc_11, _loc_16, "cardRotationZ", _loc_13);
                    this.moveCard(_loc_11, _loc_16, "x", _loc_19);
                    this.moveCard(_loc_11, _loc_16, "y", _loc_12);
                    this.moveCard(_loc_11, _loc_16, "scale", this.FIELD_SCALE);
                    if (_loc_17)
                    {
                        this.specialTweens(param1, param5);
                    }
                    _loc_11 = _loc_11.overlay_next;
                    _loc_19 = _loc_19 + _loc_20;
                    _loc_18++;
                }
            }
            return;
        }// end function

        public function setCounters(param1:String, param2:String, param3:String, param4:int, param5:String, param6:int) : String
        {
            var _loc_7:DuelMap = null;
            var _loc_8:DuelCard = null;
            var _loc_9:DuelCard = null;
            switch(param1)
            {
                case "field1":
                {
                    _loc_7 = this.field1;
                    break;
                }
                case "field2":
                {
                    _loc_7 = this.field2;
                    break;
                }
                default:
                {
                    return null;
                    break;
                }
            }
            if (param3 == "")
            {
                _loc_8 = null;
            }
            else
            {
                _loc_8 = _loc_7.get(param3);
                if (_loc_8 == null)
                {
                    return null;
                }
            }
            if (param5 == "")
            {
                _loc_9 = null;
            }
            else
            {
                _loc_9 = _loc_7.get(param5);
                if (_loc_9 == null)
                {
                    return null;
                }
            }
            if (_loc_8 == null && _loc_9 != null)
            {
                _loc_9.counter = param6;
                return param2 + " placed a counter on " + _loc_9.getFieldNameString() + " (now " + param6 + ")";
            }
            if (_loc_8 != null && _loc_9 == null)
            {
                _loc_8.counter = param4;
                return param2 + " removed a counter from " + _loc_8.getFieldNameString() + " (now " + param4 + ")";
            }
            if (_loc_8 != null && _loc_9 != null)
            {
                _loc_8.counter = param4;
                _loc_9.counter = param6;
                return param2 + " moved a counter from " + _loc_8.getFieldNameString() + " (now " + param4 + ") to " + _loc_9.getFieldNameString() + " (now " + param6 + ")";
            }
            return null;
        }// end function

        public function shuffle(param1:Array)
        {
            var _loc_4:MovieClip = null;
            var _loc_5:DuelMap = null;
            var _loc_2:* = param1[0];
            var _loc_3:* = param1[1];
            if (_loc_2 == "deck1")
            {
                _loc_4 = this.shuffle1_mc;
                _loc_5 = this.deck1;
            }
            else
            {
                _loc_4 = this.shuffle2_mc;
                _loc_5 = this.deck2;
            }
            this.addTweens(this.shuffleStartTween, _loc_5);
            _loc_4.addTweens(this.addTweens, _loc_5, _loc_3);
            this.addTweens(this.shuffleEndTween, _loc_5);
            return;
        }// end function

        public function shuffleStartTween(param1:DuelMap) : Array
        {
            this.removeSelect();
            if (param1.first() == this.menu_card)
            {
                this.removeCardMenu();
            }
            this.shuffling = param1;
            return [];
        }// end function

        public function shuffleEndTween(param1:DuelMap) : Array
        {
            this.shuffling = null;
            this.tryMenuCardMouseOver(param1.first());
            return [];
        }// end function

        public function handShuffle(param1:Array)
        {
            var _loc_2:* = param1[0];
            var _loc_3:* = _loc_2 == "hand1" ? (this.hand1) : (this.hand2);
            param1[0] = _loc_3;
            this.addTweens(this.handShuffleIn, _loc_3);
            this.addTweens(this.handShuffleOut, param1);
            return;
        }// end function

        public function handShuffleIn(param1:DuelMap) : Array
        {
            this.removeSelect();
            var _loc_2:Array = [];
            var _loc_3:* = this.DUEL_TWEEN_TIME;
            this.DUEL_TWEEN_TIME = this.HAND_SHUFFLE_TWEEN_TIME;
            var _loc_4:* = param1.next();
            while (_loc_4 != null)
            {
                
                this.moveCard(_loc_4, _loc_2, "x", this.HAND_MIDDLE_X);
                _loc_4 = param1.next();
            }
            this.DUEL_TWEEN_TIME = _loc_3;
            return _loc_2;
        }// end function

        public function handShuffleOut(param1:Array) : Array
        {
            var _loc_6:Array = null;
            var _loc_7:* = undefined;
            var _loc_8:DuelCard = null;
            var _loc_2:* = param1[0];
            var _loc_3:* = param1[1];
            if (param1.length > 2)
            {
                _loc_6 = new Array(_loc_2.size);
                _loc_7 = 0;
                while (_loc_7 < _loc_6.length)
                {
                    
                    _loc_8 = _loc_2.get(param1[_loc_7 + 2]);
                    _loc_6[_loc_7] = _loc_8;
                    this.top_mc.addChild(_loc_8);
                    _loc_7 = _loc_7 + 1;
                }
            }
            else
            {
                _loc_6 = _loc_2.toArray();
            }
            _loc_2.remap(_loc_6, _loc_3);
            var _loc_4:Array = [];
            var _loc_5:* = this.DUEL_TWEEN_TIME;
            this.DUEL_TWEEN_TIME = this.HAND_SHUFFLE_TWEEN_TIME;
            if (_loc_2 == this.hand1)
            {
                this.updateHand1(_loc_4);
            }
            else
            {
                this.updateHand2(_loc_4);
            }
            this.DUEL_TWEEN_TIME = _loc_5;
            return _loc_4;
        }// end function

        public function viewInit()
        {
            this.view_mc.visible = false;
            this.VIEW_SCALE = 0.15;
            this.view_cards_mc = new Sprite();
            this.view_mc.sp_sp.source = this.view_cards_mc;
            var _loc_1:* = new Shape();
            var _loc_2:* = _loc_1.graphics;
            _loc_2.beginFill(16777215, 0.8);
            _loc_2.drawRect(0, 0, 100, 100);
            _loc_2.endFill();
            this.view_mc.sp_sp.setStyle("upSkin", _loc_1);
            this.view_mc.exit_btn.addEventListener(MouseEvent.CLICK, this.stopViewingE);
            var _loc_3:* = new Shape();
            this.view_cards_mc.addChild(_loc_3);
            this.scroll_rect_graphics = _loc_3.graphics;
            return;
        }// end function

        public function startViewingTween(param1:Array) : Array
        {
            if (this.viewing != null)
            {
                return [];
            }
            var _loc_2:* = param1[0];
            switch(_loc_2)
            {
                case "Viewing Deck":
                {
                    this.viewing = this.deck1;
                    break;
                }
                case "Viewing Opponent\'s Deck":
                {
                    this.viewing = this.deck2;
                    break;
                }
                case "Viewing Extra Deck":
                {
                    this.viewing = this.extra1;
                    break;
                }
                case "Viewing Opponent\'s Extra Deck":
                {
                    this.viewing = this.extra2;
                    break;
                }
                case "Viewing Graveyard":
                case "Viewing Host\'s Graveyard":
                {
                    this.viewing = this.grave1;
                    break;
                }
                case "Viewing Opponent\'s Graveyard":
                {
                    this.viewing = this.grave2;
                    break;
                }
                case "Viewing Banished":
                case "Viewing Host\'s Banished":
                {
                    this.viewing = this.rfg1;
                    break;
                }
                case "Viewing Opponent\'s Banished":
                {
                    this.viewing = this.rfg2;
                    break;
                }
                case "Viewing Opponent\'s Hand":
                {
                    this.viewing = this.hand2;
                    break;
                }
                default:
                {
                    return [];
                    break;
                }
            }
            this.removeCardMenu();
            var _loc_3:* = 1;
            while (_loc_3 < param1.length)
            {
                
                this.initDuelCard(this.viewing.next(), param1.slice(_loc_3, _loc_3 + 16));
                _loc_3 = _loc_3 + 16;
            }
            this.viewing.iterate_stop();
            this.view_mc.title_txt.text = _loc_2;
            this.view_mc.visible = true;
            this.updateView();
            if (this.sel_card2 != null)
            {
                this.selectCard(this.sel_card2, false);
            }
            this.grave1_mc.removeEventListener(MouseEvent.CLICK, this.grave1ClickE);
            this.grave1_mc.buttonMode = false;
            this.grave1_mc.tabEnabled = false;
            return [];
        }// end function

        public function viewing2Tween(param1:String) : Array
        {
            switch(param1)
            {
                case "Viewing Deck":
                {
                    this.viewing2 = this.deck2;
                    break;
                }
                case "Viewing Opponent\'s Deck":
                {
                    this.viewing2 = this.deck1;
                    break;
                }
                case "Viewing Extra Deck":
                {
                    this.viewing2 = this.extra2;
                    break;
                }
                case "Viewing Opponent\'s Extra Deck":
                {
                    this.viewing2 = this.extra1;
                    break;
                }
                case "Viewing Graveyard":
                {
                    this.viewing2 = this.grave2;
                    break;
                }
                case "Viewing Opponent\'s Graveyard":
                {
                    this.viewing2 = this.grave1;
                    break;
                }
                case "Viewing Banished":
                {
                    this.viewing2 = this.rfg2;
                    break;
                }
                case "Viewing Opponent\'s Banished":
                {
                    this.viewing2 = this.rfg1;
                    break;
                }
                case "Viewing Opponent\'s Hand":
                {
                    this.viewing2 = this.hand1;
                    break;
                }
                case "":
                {
                    this.viewing2 = null;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return [];
        }// end function

        public function updateView()
        {
            var _loc_3:Number = NaN;
            var _loc_4:Number = NaN;
            var _loc_5:Number = NaN;
            var _loc_6:Number = NaN;
            var _loc_1:int = 0;
            var _loc_2:* = this.viewing.next();
            while (_loc_2 != null)
            {
                
                _loc_3 = this.viewPositionX(_loc_1);
                _loc_4 = this.viewPositionY(_loc_1);
                _loc_5 = _loc_2.x - _loc_3;
                _loc_6 = _loc_2.y - _loc_4;
                if ((_loc_5 > 10 || _loc_5 < -10 || _loc_6 > 10 || _loc_6 < -10) && _loc_2 == this.menu_card)
                {
                    this.removeCardMenu();
                }
                _loc_2.x = _loc_3;
                _loc_2.y = _loc_4;
                if (_loc_2.loc != "rfg1" && _loc_2.loc != "rfg2")
                {
                    _loc_2.cardRotationY = 0;
                }
                _loc_2.cardRotationZ = 0;
                _loc_2.scale = this.VIEW_SCALE;
                this.view_cards_mc.addChild(_loc_2);
                _loc_1++;
                _loc_2 = this.viewing.next();
            }
            this.scroll_rect_graphics.clear();
            this.scroll_rect_graphics.beginFill(0, 0);
            this.scroll_rect_graphics.drawRect(0, 0, 1, this.viewHeight(_loc_1));
            this.scroll_rect_graphics.endFill();
            this.view_mc.sp_sp.update();
            return;
        }// end function

        public function removeFromView(param1:DuelCard)
        {
            var _loc_2:* = param1.parent;
            var _loc_3:* = _loc_2.localToGlobal(new Point(param1.x, param1.y));
            _loc_2.removeChild(param1);
            param1.x = _loc_3.x;
            param1.y = _loc_3.y;
            if (param1.show_back)
            {
                param1.scaleX = this.VIEW_SCALE;
                param1.rotationY = 180;
            }
            return;
        }// end function

        public function viewPositionX(param1:int) : Number
        {
            var _loc_2:* = param1 % 8;
            return 35 + 70 * _loc_2;
        }// end function

        public function viewPositionY(param1:int) : Number
        {
            var _loc_2:* = param1 / 8;
            return 48.5 + 97 * _loc_2;
        }// end function

        public function viewHeight(param1:int) : Number
        {
            var _loc_2:* = Math.ceil(param1 / 8);
            return _loc_2 * 99 - 2;
        }// end function

        public function stopViewingE(event:MouseEvent)
        {
            switch(this.viewing)
            {
                case this.deck1:
                {
                    this.restoreDeck1();
                    break;
                }
                case this.deck2:
                {
                    this.restoreDeck2();
                    break;
                }
                case this.extra1:
                {
                    this.restoreExtra1();
                    break;
                }
                case this.extra2:
                {
                    this.restoreExtra2();
                    break;
                }
                case this.grave1:
                {
                    this.restoreGrave1();
                    break;
                }
                case this.grave2:
                {
                    this.restoreGrave2();
                    break;
                }
                case this.rfg1:
                {
                    this.restoreRfg1();
                    break;
                }
                case this.rfg2:
                {
                    this.restoreRfg2();
                    break;
                }
                case this.hand2:
                {
                    this.restoreHand2();
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.view_mc.visible = false;
            this.viewing = null;
            this.view_mc.sp_sp.verticalScrollPosition = 0;
            this.grave1_mc.addEventListener(MouseEvent.CLICK, this.grave1ClickE);
            this.grave1_mc.buttonMode = true;
            this.grave1_mc.tabEnabled = false;
            if (this.duelist)
            {
                this.Send(["Duel", "Close view"]);
            }
            return;
        }// end function

        public function isInView(param1:DuelCard) : Boolean
        {
            var _loc_2:* = param1.parent.localToGlobal(new Point(param1.x, param1.y));
            return _loc_2.y >= 90 + param1.height / 2;
        }// end function

        public function fixMenuE(event:ScrollEvent)
        {
            this.fix_menu_flag = false;
            addEventListener(Event.ENTER_FRAME, this.fixMenuE2);
            return;
        }// end function

        public function fixMenuE2(event:Event)
        {
            if (!this.fix_menu_flag)
            {
                this.fix_menu_flag = true;
                return;
            }
            removeEventListener(Event.ENTER_FRAME, this.fixMenuE2);
            if (this.menu == null)
            {
                if (this.card_over != null && this.isInView(this.card_over))
                {
                    this.showMenu(this.card_over);
                }
            }
            else if (this.isInView(this.menu_card))
            {
                this.menu.fixMenuPosition();
            }
            else
            {
                this.removeCardMenu(false);
            }
            return;
        }// end function

        public function updateDeck1Count()
        {
            var _loc_1:* = this.deck1.size;
            this.deck1_txt.text = "" + _loc_1;
            this.deck1_txt.x = this.DECK1_X + _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            this.deck1_txt.y = this.DECK1_Y + _loc_1 * this.CARD_SPACING_Y - this.COUNT_OFFSET_Y;
            return;
        }// end function

        public function updateDeck2Count()
        {
            var _loc_1:* = this.deck2.size;
            this.deck2_txt.text = "" + _loc_1;
            this.deck2_txt.x = this.DECK2_X - _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            this.deck2_txt.y = this.DECK2_Y - _loc_1 * this.CARD_SPACING_Y - this.COUNT_OFFSET_Y;
            return;
        }// end function

        public function updateExtra1Count()
        {
            var _loc_1:* = this.extra1.size;
            this.extra1_txt.text = "" + _loc_1;
            this.extra1_txt.x = this.EXTRA1_X - _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            this.extra1_txt.y = this.EXTRA1_Y + _loc_1 * this.CARD_SPACING_Y - this.COUNT_OFFSET_Y;
            return;
        }// end function

        public function updateExtra2Count()
        {
            var _loc_1:* = this.extra2.size;
            this.extra2_txt.text = "" + _loc_1;
            this.extra2_txt.x = this.EXTRA2_X + _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            this.extra2_txt.y = this.EXTRA2_Y - _loc_1 * this.CARD_SPACING_Y - this.COUNT_OFFSET_Y;
            return;
        }// end function

        public function updateGrave1Count()
        {
            var _loc_1:* = this.grave1.size;
            this.grave1_txt.text = "" + _loc_1;
            this.grave1_txt.x = this.GRAVE1_X + _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            this.grave1_txt.y = this.GRAVE1_Y + _loc_1 * this.CARD_SPACING_Y / 2 - this.COUNT_OFFSET_Y;
            return;
        }// end function

        public function updateGrave2Count()
        {
            var _loc_1:* = this.grave2.size;
            this.grave2_txt.text = "" + _loc_1;
            this.grave2_txt.x = this.GRAVE2_X - _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            this.grave2_txt.y = this.GRAVE2_Y - _loc_1 * this.CARD_SPACING_Y / 2 - this.COUNT_OFFSET_Y;
            return;
        }// end function

        public function updateRfg1Count()
        {
            var _loc_1:* = this.rfg1.size;
            this.rfg1_txt.text = "" + _loc_1;
            this.rfg1_txt.x = this.RFG1_X + _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            return;
        }// end function

        public function updateRfg2Count()
        {
            var _loc_1:* = this.rfg2.size;
            this.rfg2_txt.text = "" + _loc_1;
            this.rfg2_txt.x = this.RFG2_X - _loc_1 * this.CARD_SPACING_X - this.COUNT_OFFSET_X;
            return;
        }// end function

        function frame1()
        {
            this.atk_def1_6_txt.mouseEnabled = false;
            this.atk_def1_7_txt.mouseEnabled = false;
            this.atk_def1_8_txt.mouseEnabled = false;
            this.atk_def1_9_txt.mouseEnabled = false;
            this.atk_def1_10_txt.mouseEnabled = false;
            this.atk_def2_6_txt.mouseEnabled = false;
            this.atk_def2_7_txt.mouseEnabled = false;
            this.atk_def2_8_txt.mouseEnabled = false;
            this.atk_def2_9_txt.mouseEnabled = false;
            this.atk_def2_10_txt.mouseEnabled = false;
            this.view_mc.sp_sp.addEventListener(ScrollEvent.SCROLL, this.fixMenuE);
            this.deck1_txt.mouseEnabled = false;
            this.deck2_txt.mouseEnabled = false;
            this.extra1_txt.mouseEnabled = false;
            this.extra2_txt.mouseEnabled = false;
            this.grave1_txt.mouseEnabled = false;
            this.grave2_txt.mouseEnabled = false;
            this.rfg1_txt.mouseEnabled = false;
            this.rfg2_txt.mouseEnabled = false;
            return;
        }// end function

    }
}
