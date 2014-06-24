package dn_fla
{
    import com.adobe.images.*;
    import com.hurlant.crypto.*;
    import com.hurlant.crypto.symmetric.*;
    import com.hurlant.util.*;
    import fl.containers.*;
    import fl.controls.*;
    import fl.controls.listClasses.*;
    import fl.data.*;
    import fl.events.*;
    import fl.managers.*;
    import fl.transitions.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.events.*;
    import flash.external.*;
    import flash.geom.*;
    import flash.media.*;
    import flash.net.*;
    import flash.system.*;
    import flash.text.*;
    import flash.ui.*;
    import flash.utils.*;

    dynamic public class MainTimeline extends MovieClip
    {
        public var rematch_btn:Button;
        public var cancel_duel_btn:Button;
        public var content_sp:ScrollPane;
        public var admin_status_mc:MovieClip;
        public var comp_username_txt:TextInput;
        public var back_mc:MovieClip;
        public var avatar_browse_mc:MovieClip;
        public var ranking_txt:TextField;
        public var puzzle_area_mc:MovieClip;
        public var search13_mc:SearchCard;
        public var search1_mc:SearchCard;
        public var extra5_mc:DeckCard;
        public var deck2_mc:DeckCard;
        public var desc_txt:TextInput;
        public var page_txt:TextField;
        public var watch_chat_tooltip_mc:MovieClip;
        public var calls_mc:MovieClip;
        public var msg_mc:MovieClip;
        public var forgot_password_box_mc:MovieClip;
        public var fp_out_of_date_mc:MovieClip;
        public var rankings_exit_btn:Button;
        public var match_select_mc:MovieClip;
        public var by_wins_mc:MovieClip;
        public var kick_user_btn:Button;
        public var unban_user_btn:Button;
        public var back_browse_mc:MovieClip;
        public var ranking2_txt:TextField;
        public var draws_txt:TextField;
        public var key_mc:MovieClip;
        public var delete_friend_btn:SimpleButton;
        public var search12_mc:SearchCard;
        public var search6_mc:SearchCard;
        public var deck58_mc:DeckCard;
        public var deck32_mc:DeckCard;
        public var deck3_mc:DeckCard;
        public var spell_count_txt:TextField;
        public var prev_btn:SimpleButton;
        public var rating_lower_txt:TextInput;
        public var password_btn:SimpleButton;
        public var start_btn:SimpleButton;
        public var coin_btn:SimpleButton;
        public var gone2_mc:MovieClip;
        public var admin2_exit_btn:Button;
        public var check_comp_btn:Button;
        public var ban_note_txt:TextArea;
        public var back_left_btn:SimpleButton;
        public var color1_cp:ColorPicker;
        public var search7_mc:SearchCard;
        public var side14_mc:DeckCard;
        public var deck59_mc:DeckCard;
        public var deck48_mc:DeckCard;
        public var deck33_mc:DeckCard;
        public var deck22_mc:DeckCard;
        public var sort_btn:SimpleButton;
        public var card_cb:ComboBox;
        public var side_area_mc:MovieClip;
        public var online_users_tooltip_mc:MovieClip;
        public var public_chat_mc:MovieClip;
        public var rankings_btn:SimpleButton;
        public var leaderboard_mc:MovieClip;
        public var login_box_mc:MovieClip;
        public var donate_btn:SimpleButton;
        public var reset_btn:Button;
        public var die_mc:MovieClip;
        public var show_hand_btn:SimpleButton;
        public var auto_draw_cb:CheckBox;
        public var second_mc:MovieClip;
        public var rock2_mc:MovieClip;
        public var by_rating_mc:MovieClip;
        public var ip_username_txt:TextInput;
        public var decrement_strikes_cb:CheckBox;
        public var new_txt:TextInput;
        public var draws2_txt:TextField;
        public var search4_mc:SearchCard;
        public var side15_mc:DeckCard;
        public var side8_mc:DeckCard;
        public var deck49_mc:DeckCard;
        public var deck30_mc:DeckCard;
        public var deck23_mc:DeckCard;
        public var deck12_mc:DeckCard;
        public var deck1_mc:DeckCard;
        public var call_btn:MovieClip;
        public var watch_icon_mc:MovieClip;
        public var confirm_mc:MovieClip;
        public var days_rb:RadioButton;
        public var confirm_txt:TextInput;
        public var my_profile_exit_btn:Button;
        public var losses2_txt:TextField;
        public var rating_rep_txt:TextField;
        public var avatar_mc:MovieClip;
        public var search5_mc:SearchCard;
        public var extra8_mc:DeckCard;
        public var side9_mc:DeckCard;
        public var deck31_mc:DeckCard;
        public var deck20_mc:DeckCard;
        public var deck13_mc:DeckCard;
        public var deck6_mc:DeckCard;
        public var save_btn:Button;
        public var lvll_txt:TextInput;
        public var name_txt:TextInput;
        public var host_mc:MovieClip;
        public var watch_rb:RadioButton;
        public var unl_mc:MovieClip;
        public var au_sp:ScrollPane;
        public var online_users_mc:MovieClip;
        public var screenshot_btn:MovieClip;
        public var siding_hidden_mc:MovieClip;
        public var defeat_btn:Button;
        public var gone1_mc:MovieClip;
        public var status2_mc:MovieClip;
        public var admin_exit_btn:Button;
        public var add_friend_btn:SimpleButton;
        public var extra9_mc:DeckCard;
        public var deck36_mc:DeckCard;
        public var deck21_mc:DeckCard;
        public var deck10_mc:DeckCard;
        public var deck7_mc:DeckCard;
        public var trap_count_txt:TextField;
        public var save_as_btn:Button;
        public var rename_btn:Button;
        public var search_btn:Button;
        public var card2_cb:ComboBox;
        public var call_icon_mc:MovieClip;
        public var profile_btn:SimpleButton;
        public var camera_flash_mc:MovieClip;
        public var title_mc:MovieClip;
        public var forums_btn:SimpleButton;
        public var die_btn:SimpleButton;
        public var avatar2_mc:SquarePicture;
        public var avatar_back2_mc:MovieClip;
        public var rock1_mc:MovieClip;
        public var by_rating_heading_mc:MovieClip;
        public var comp_alts_txt:TextArea;
        public var alts_txt:TextArea;
        public var current_txt:TextInput;
        public var deck_hidden_mc:MovieClip;
        public var deck37_mc:DeckCard;
        public var deck26_mc:DeckCard;
        public var deck11_mc:DeckCard;
        public var deck4_mc:DeckCard;
        public var normal_count_txt:TextField;
        public var extra_area_mc:MovieClip;
        public var private_icon_mc:MovieClip;
        public var main_exit_btn:SimpleButton;
        public var admin_btn:SimpleButton;
        public var invalid_load_context_mc:MovieClip;
        public var fade_mc:MovieClip;
        public var field_mc:SquarePicture;
        public var watchers_mc:MovieClip;
        public var avatar_back1_mc:MovieClip;
        public var check_ip_btn:Button;
        public var add_warning_btn:Button;
        public var right_btn:SimpleButton;
        public var icon2_mc:MovieClip;
        public var watch_duel_btn:SimpleButton;
        public var search19_mc:SearchCard;
        public var extra15_mc:DeckCard;
        public var deck52_mc:DeckCard;
        public var deck34_mc:DeckCard;
        public var deck27_mc:DeckCard;
        public var deck16_mc:DeckCard;
        public var deck5_mc:DeckCard;
        public var rating_upper_txt:TextInput;
        public var show_uu_btn:SimpleButton;
        public var online_btn:MovieClip;
        public var call_tooltip_mc:MovieClip;
        public var room_btn:SimpleButton;
        public var combo_mc:MovieClip;
        public var logged_in_box_mc:MovieClip;
        public var call_admin_btn:Button;
        public var rating_rep1_mc:MovieClip;
        public var status1_mc:MovieClip;
        public var by_reputation_heading_mc:MovieClip;
        public var by_total_reputation_heading_mc:MovieClip;
        public var back_right_btn:SimpleButton;
        public var icon3_mc:MovieClip;
        public var registered_txt:TextField;
        public var search18_mc:SearchCard;
        public var search8_mc:SearchCard;
        public var extra14_mc:DeckCard;
        public var deck60_mc:DeckCard;
        public var deck53_mc:DeckCard;
        public var deck42_mc:DeckCard;
        public var deck35_mc:DeckCard;
        public var deck24_mc:DeckCard;
        public var deck17_mc:DeckCard;
        public var effect_count_txt:TextField;
        public var atkl_txt:TextInput;
        public var lvlh_txt:TextInput;
        public var rep_lower_txt:TextInput;
        public var show_tu_btn:SimpleButton;
        public var banner_mc:MovieClip;
        public var public_chat_tooltip_mc:MovieClip;
        public var input_mc:MovieClip;
        public var progress_mc:MovieClip;
        public var siding1_mc:MovieClip;
        public var phase_mc:MovieClip;
        public var rating_rep2_mc:MovieClip;
        public var avatar1_mc:SquarePicture;
        public var rps_hidden_mc:MovieClip;
        public var by_total_reputation_mc:MovieClip;
        public var ban_user_btn:Button;
        public var forever_rb:RadioButton;
        public var ban_username_txt:TextInput;
        public var status_txt:TextField;
        public var preview_mc:PreviewCard;
        public var search9_mc:SearchCard;
        public var side2_mc:DeckCard;
        public var deck50_mc:DeckCard;
        public var deck43_mc:DeckCard;
        public var deck25_mc:DeckCard;
        public var deck14_mc:DeckCard;
        public var defl_txt:TextInput;
        public var match_type_cb:ComboBox;
        public var default_btn:Button;
        public var decklist_cb:ComboBox;
        public var mute_btn:MovieClip;
        public var done_siding_btn:Button;
        public var lp_top_mc:MovieClip;
        public var username1_mc:MovieClip;
        public var by_wins_heading_mc:MovieClip;
        public var reason_txt:TextInput;
        public var icon1_mc:MovieClip;
        public var rating_rep2_txt:TextField;
        public var wins2_txt:TextField;
        public var puzzle_mc:MovieClip;
        public var extra2_mc:DeckCard;
        public var side3_mc:DeckCard;
        public var deck51_mc:DeckCard;
        public var deck40_mc:DeckCard;
        public var deck15_mc:DeckCard;
        public var new_btn:Button;
        public var deck_area_mc:MovieClip;
        public var watch_btn:MovieClip;
        public var public_icon_mc:MovieClip;
        public var chat_hidden_mc:MovieClip;
        public var skip_intro_btn:SimpleButton;
        public var black_mc:MovieClip;
        public var hand_shuffle_btn:SimpleButton;
        public var lp_bottom_mc:MovieClip;
        public var duel_hidden_mc:MovieClip;
        public var duel_quit_btn:Button;
        public var loss2_btn:Button;
        public var username2_mc:MovieClip;
        public var paper2_mc:MovieClip;
        public var increment_strikes_cb:CheckBox;
        public var get_ban_status_btn:Button;
        public var password_exit_btn:Button;
        public var icon6_mc:MovieClip;
        public var wins_txt:TextField;
        public var search15_mc:SearchCard;
        public var extra11_mc:DeckCard;
        public var extra3_mc:DeckCard;
        public var deck56_mc:DeckCard;
        public var deck41_mc:DeckCard;
        public var deck8_mc:DeckCard;
        public var type_cb:ComboBox;
        public var rep_upper_txt:TextInput;
        public var filter_username_txt:TextInput;
        public var duel_rb:RadioButton;
        public var host_bg_mc:MovieClip;
        public var siding2_mc:MovieClip;
        public var coin_mc:MovieClip;
        public var days_txt:TextInput;
        public var left_btn:SimpleButton;
        public var icon7_mc:MovieClip;
        public var ranking_calc2_btn:SimpleButton;
        public var username_txt:TextInput;
        public var bypass_card_limit_cb:CheckBox;
        public var search14_mc:SearchCard;
        public var extra10_mc:DeckCard;
        public var side1_mc:DeckCard;
        public var deck57_mc:DeckCard;
        public var deck46_mc:DeckCard;
        public var deck38_mc:DeckCard;
        public var deck9_mc:DeckCard;
        public var atkh_txt:TextInput;
        public var hosting_mc:MovieClip;
        public var online_icon_mc:MovieClip;
        public var deck_btn:SimpleButton;
        public var dim_mc:MovieClip;
        public var cin_txt:TextInput;
        public var duel_chat_mc:MovieClip;
        public var scissors2_mc:MovieClip;
        public var by_reputation_mc:MovieClip;
        public var increment_strikes2_cb:CheckBox;
        public var warning_txt:TextInput;
        public var warning_username_txt:TextInput;
        public var kick_username_txt:TextInput;
        public var unban_username_txt:TextInput;
        public var status_username_txt:TextInput;
        public var icon4_mc:MovieClip;
        public var ranking_calc_btn:SimpleButton;
        public var losses_txt:TextField;
        public var table_mc:MovieClip;
        public var search17_mc:SearchCard;
        public var extra13_mc:DeckCard;
        public var extra1_mc:DeckCard;
        public var side12_mc:DeckCard;
        public var side6_mc:DeckCard;
        public var deck54_mc:DeckCard;
        public var deck47_mc:DeckCard;
        public var deck39_mc:DeckCard;
        public var deck28_mc:DeckCard;
        public var defh_txt:TextInput;
        public var type2_cb:ComboBox;
        public var tot_pages_txt:TextField;
        public var rules_btn:SimpleButton;
        public var admin_duel_btn:SimpleButton;
        public var admin_admin_btn:SimpleButton;
        public var siding_in_progress_mc:MovieClip;
        public var cards_mc:MovieClip;
        public var counter_start_mc:Counter;
        public var loss1_btn:Button;
        public var scissors1_mc:MovieClip;
        public var paper1_mc:MovieClip;
        public var icon5_mc:MovieClip;
        public var donation_reward_txt:TextField;
        public var send_pm_btn:SimpleButton;
        public var search16_mc:SearchCard;
        public var search2_mc:SearchCard;
        public var extra12_mc:DeckCard;
        public var extra6_mc:DeckCard;
        public var side13_mc:DeckCard;
        public var side7_mc:DeckCard;
        public var deck55_mc:DeckCard;
        public var deck44_mc:DeckCard;
        public var deck29_mc:DeckCard;
        public var deck18_mc:DeckCard;
        public var ritual_count_txt:TextField;
        public var delete_btn:Button;
        public var clear_btn:Button;
        public var order_cb:ComboBox;
        public var attrib_cb:ComboBox;
        public var ar_sp:ScrollPane;
        public var private_chat_mc:MovieClip;
        public var my_profile_btn:SimpleButton;
        public var register_box_mc:MovieClip;
        public var life_points_mc:MovieClip;
        public var token_btn:SimpleButton;
        public var first_mc:MovieClip;
        public var over_mc:MovieClip;
        public var reset_stats_mc:MovieClip;
        public var change_btn:Button;
        public var save_profile_btn:Button;
        public var profile_exit_btn:Button;
        public var profile_txt:TextArea;
        public var last_seen_txt:TextField;
        public var search20_mc:SearchCard;
        public var search11_mc:SearchCard;
        public var search3_mc:SearchCard;
        public var extra7_mc:DeckCard;
        public var side10_mc:DeckCard;
        public var side4_mc:DeckCard;
        public var deck45_mc:DeckCard;
        public var deck19_mc:DeckCard;
        public var limit_cb:ComboBox;
        public var room_exit_btn:Button;
        public var public_btn:MovieClip;
        public var swap_btn:Button;
        public var draw_btn:Button;
        public var super_ban_mc:MovieClip;
        public var strikes_txt:TextField;
        public var color2_cp:ColorPicker;
        public var admin_reward_txt:TextField;
        public var redeem_donation_btn:Button;
        public var search10_mc:SearchCard;
        public var extra4_mc:DeckCard;
        public var side11_mc:DeckCard;
        public var side5_mc:DeckCard;
        public var total_count_txt:TextField;
        public var deck_exit_btn:Button;
        public var next_btn:SimpleButton;
        public var joining_mc:MovieClip;
        public var trad_mc:MovieClip;
        public var private_btn:MovieClip;
        public var private_chat_tooltip_mc:MovieClip;
        public var news_txt:TextArea;
        public var __setPropDict:Dictionary;
        public var __lastFrameProp:int = -1;
        public var dn_id:String;
        public var URL_START:String;
        public var HOSTNAME:String;
        public var CARD_START:Object;
        public var AVATAR_START:Object;
        public var BACK_START:Object;
        public var bgmusic:Sound;
        public var rc_menu:ContextMenu;
        public var display_box_callback:Function;
        public var input_callback:Function;
        public var combo_callback:Function;
        public var confirm_callback:Function;
        public var lock_has_saved_focus:Boolean;
        public var lock_saved_focus:InteractiveObject;
        public var username:String;
        public var password:String;
        public var show_admin_arrow:Boolean;
        public var bgchannel:SoundChannel;
        public var bgtrans:SoundTransform;
        public var override_enter_handler:Function;
        public var enter_handler:Function;
        public var disable_tabbing:Boolean;
        public var current_focus:InteractiveObject;
        public var bg_tween:Tween;
        public var playing_intro:Boolean;
        public var login_administrate:Boolean;
        public var logged_in_loader:URLLoader;
        public var login_loader:URLLoader;
        public var reconfirm_email:String;
        public var reconfirm_loader:URLLoader;
        public var register_loader:URLLoader;
        public var logout_loader:URLLoader;
        public var forgot_password_loader:URLLoader;
        public var news_loader:URLLoader;
        public var tat_leaderboard:AdLoader;
        public var tat_banner:AdLoader;
        public var heartbeat_timer:Timer;
        public var got_heartbeat:Boolean;
        public var socket:XMLSocket;
        public var session_id:String;
        public var connection_success:Boolean;
        public var incoming_handler:Function;
        public var admin:int;
        public var private_chat_prev_idx:int;
        public var num_new_msgs:int;
        public var chat_lock:Boolean;
        public var title_usernames:Object;
        public var tuser_start:String;
        public var tuser_end:String;
        public var tuser_current:String;
        public var title_timer:Timer;
        public var room_init:Boolean;
        public var enable_dueling:Boolean;
        public var entering_rated_duel:Boolean;
        public var duelroom_rbg:RadioButtonGroup;
        public var join_arr:Array;
        public var join_duel_ban:String;
        public var join_duel_ban_note:String;
        public var alternate_join_offer:String;
        public var deck_init:Boolean;
        public var deck:Array;
        public var deck_count:int;
        public var side:Array;
        public var side_count:int;
        public var extra:Array;
        public var extra_count:int;
        public var search:Array;
        public var restoreX:int;
        public var restoreY:int;
        public var saved_search:Array;
        public var card_search_page:int;
        public var default_deck_idx:int;
        public var current_deck_name:String;
        public var new_deck_name:String;
        public var save_deck_callback:Function;
        public var saved_deck:Array;
        public var saved_side:Array;
        public var saved_extra:Array;
        public var offer_deck_save_callback:Function;
        public var offer_deck_save_deck_name:String;
        public var profile_init:Boolean;
        public var profile_username:String;
        public var tf:TextFormat;
        public var avatar_gallery:Array;
        public var my_profile_init:Boolean;
        public var GALLERY_LEFT_JUSTIFY:Number;
        public var GALLERY_RIGHT_JUSTIFY:Number;
        public var GALLERY_CENTER_JUSTIFY:Number;
        public var GALLERY_GAP:Number;
        public var SCROLL_AMOUNT:Number;
        public var avatar_cursor:int;
        public var saved_avatar:String;
        public var saved_back:String;
        public var saved_back_color1:int;
        public var saved_back_color2:int;
        public var saved_profile:String;
        public var new_avatar:String;
        public var new_avatar2:String;
        public var new_back:String;
        public var new_back2:String;
        public var num_wins:int;
        public var num_rep:int;
        public var avatars:Array;
        public var backs:Array;
        public var outlined_avatar:MovieClip;
        public var my_profile_exiting:Boolean;
        public var card_back_idx:int;
        public var browse_fr:FileReference;
        public var browse_avatar:Boolean;
        public var browse_loader:Loader;
        public var browse_ba:ByteArray;
        public var ban_username:String;
        public var admin_username:String;
        public var rankings_init:Boolean;
        public var ranking_match:Boolean;
        public var manual_match_change:Boolean;
        public var duel_starting:Boolean;
        public var duelist:Boolean;
        public var rated_duel:Boolean;
        public var duel_args:Array;
        public var match_type:String;
        public var watch_chat_mc:WatchChat;
        public var back_loader1:BackLoader;
        public var back_loader2:BackLoader;
        public var rps_match:Boolean;
        public var duel_over:Boolean;
        public var no_duel_winner:Boolean;
        public var watchHtmlText:String;
        public var watchHtmlLines:int;
        public var duelHtmlText:String;
        public var pictures_socket:Socket;
        public var preload_array:ByteArray;
        public var decrypted_preload:Object;
        public var RPS_TWEEN_TIME:Number;
        public var RPS_TOUCH_TIME:Number;
        public var RPS_CENTER_TIME:Number;
        public var RPS_PUSH_TIME:Number;
        public var rps_stage:int;
        public var rps_bottom_target:MovieClip;
        public var tween_functions:Array;
        public var tween_args:Array;
        public var tween_blocks:Array;
        public var current_tweens:Array;
        public var current_tween_block:Boolean;
        public var tweens_finished:int;
        public var TP_TWEEN_TIME:Number;
        public var tp_going_first:Boolean;
        public var DUEL_TWEEN_TIME:Number;
        public var COIN_UP_TIME:Number;
        public var COIN_DOWN_TIME:Number;
        public var DIE_SPIN_TIME:Number;
        public var DIE_BOUNCE_TIME:Number;
        public var my_turn:Boolean;
        public var duel_screen_args:Array;
        public var confirm_send_arr:Array;
        public var die_timer:Timer;
        public var reveal_card:DuelCard;
        public var counter_drag_src_id:String;
        public var siding_deck_orig:Array;
        public var siding_side_orig:Array;
        public var siding_extra_orig:Array;
        public var deck_in:int;
        public var deck_out:int;
        public var extra_in:int;
        public var extra_out:int;

        public function MainTimeline()
        {
            this.__setPropDict = new Dictionary(true);
            addFrameScript(0, this.frame1, 1, this.frame2, 2, this.frame3, 141, this.frame142, 176, this.frame177, 177, this.frame178, 185, this.frame186, 186, this.frame187, 188, this.frame189, 189, this.frame190, 190, this.frame191, 191, this.frame192, 192, this.frame193, 193, this.frame194, 194, this.frame195, 195, this.frame196, 196, this.frame197, 197, this.frame198, 198, this.frame199, 199, this.frame200);
            addEventListener(Event.ADDED_TO_STAGE, this.__setPerspectiveProjection_);
            addEventListener(Event.FRAME_CONSTRUCTED, this.__setProp_handler, false, 0, true);
            return;
        }// end function

        public function getDnId() : String
        {
            var _loc_1:* = SharedObject.getLocal("dn_id");
            var _loc_2:* = _loc_1.data.id;
            if (_loc_2 == null)
            {
                _loc_2 = this.randomHex();
                _loc_1.data.id = _loc_2;
            }
            return _loc_2;
        }// end function

        public function bufferFailE(event:IOErrorEvent)
        {
            this.bgmusic = null;
            return;
        }// end function

        public function doneBufferingE(event:Event)
        {
            if (this.bgmusic == null || !this.bgmusic.isBuffering && framesLoaded >= 2)
            {
                gotoAndPlay("intro");
                removeEventListener(Event.ENTER_FRAME, this.doneBufferingE);
            }
            return;
        }// end function

        public function setStyleManager()
        {
            var _loc_1:* = new TextFormat();
            _loc_1.font = Constants.COMPONENT_FONT;
            _loc_1.size = Constants.COMPONENT_SIZE;
            _loc_1.color = 0;
            var _loc_2:* = new TextFormat();
            _loc_2.font = Constants.COMPONENT_FONT;
            _loc_2.size = Constants.COMPONENT_SIZE;
            _loc_2.color = 8684420;
            StyleManager.setStyle("textFormat", _loc_1);
            StyleManager.setStyle("disabledTextFormat", _loc_2);
            StyleManager.setStyle("embedFonts", true);
            return;
        }// end function

        public function hasUpdatedFlashPlayer() : Boolean
        {
            var _loc_1:* = Capabilities.version;
            var _loc_2:* = _loc_1.split(" ");
            if (_loc_2.length < 2)
            {
                return false;
            }
            var _loc_3:* = _loc_2[1].split(",");
            var _loc_4:* = _loc_3[0];
            if (_loc_3.length == 0 || _loc_4 < 10)
            {
                return false;
            }
            if (_loc_4 > 10)
            {
                return true;
            }
            _loc_4 = _loc_3[1];
            if (_loc_3.length < 2 || _loc_4 < 1)
            {
                return false;
            }
            if (_loc_4 > 1)
            {
                return true;
            }
            _loc_4 = _loc_3[2];
            if (_loc_3.length < 3 || _loc_4 < 52)
            {
                return false;
            }
            if (_loc_4 > 52)
            {
                return true;
            }
            _loc_4 = _loc_3[3];
            if (_loc_3.length < 4 || _loc_4 < 14)
            {
                return false;
            }
            return true;
        }// end function

        public function getUrlStart()
        {
            var _loc_1:* = loaderInfo.url;
            var _loc_2:* = _loc_1.lastIndexOf("/");
            if (_loc_2 < 0)
            {
                return null;
            }
            return _loc_1.substr(0, (_loc_2 + 1));
        }// end function

        public function getHostname()
        {
            var _loc_1:* = loaderInfo.url;
            var _loc_2:* = _loc_1.indexOf("//");
            if (_loc_2 < 0)
            {
                return null;
            }
            var _loc_3:* = _loc_1.substr(_loc_2 + 2);
            var _loc_4:* = _loc_3.search(/[:\/]""[:\/]/);
            if (_loc_3.search(/[:\/]""[:\/]/) < 0)
            {
                return _loc_3;
            }
            return _loc_3.substring(0, _loc_4);
        }// end function

        public function trackEvent(param1:String, param2:String, param3)
        {
            try
            {
                ExternalInterface.call("trackEvent", param1, param2, param3);
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        public function track(param1:String)
        {
            try
            {
                ExternalInterface.call("track", param1);
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        public function setAd(param1:Boolean)
        {
            try
            {
                ExternalInterface.call("setAd", param1);
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        public function msgOK(event:MouseEvent = null)
        {
            this.unlock(false);
            this.msg_mc.visible = false;
            if (this.display_box_callback != null)
            {
                this.display_box_callback();
            }
            return;
        }// end function

        public function displayMessage(param1:String, param2:Function = null)
        {
            this.displayBox("Message", param1, param2);
            return;
        }// end function

        public function displayMessageWithTitle(param1:String, param2:String, param3:Function = null)
        {
            this.displayBox(param1, param2, param3);
            return;
        }// end function

        public function displayError(param1:String, param2:Function = null)
        {
            this.displayBox("Error", param1, param2);
            return;
        }// end function

        public function displayBox(param1:String, param2:String, param3:Function)
        {
            this.input_mc.visible = false;
            this.combo_mc.visible = false;
            this.confirm_mc.visible = false;
            this.unlock(false);
            this.msg_mc.visible = true;
            this.msg_mc.title_txt.text = param1;
            this.msg_mc.setText(param2);
            stage.focus = null;
            this.display_box_callback = param3;
            if (param3 != null)
            {
                this.lock();
            }
            return;
        }// end function

        public function inputOK(event:MouseEvent = null)
        {
            this.unlock(false);
            this.input_mc.visible = false;
            if (this.input_callback != null)
            {
                this.input_callback(this.input_mc.input_txt.text);
            }
            return;
        }// end function

        public function inputCancel(event:MouseEvent)
        {
            this.unlock(false);
            this.input_mc.visible = false;
            if (this.input_callback != null)
            {
                this.input_callback(null);
            }
            return;
        }// end function

        public function getInput(param1:String, param2:String, param3:String, param4:int, param5:Function, param6:String = " -~")
        {
            this.msg_mc.visible = false;
            this.combo_mc.visible = false;
            this.confirm_mc.visible = false;
            this.unlock(false);
            this.input_mc.visible = true;
            this.input_mc.title_txt.text = param1;
            this.input_mc.text_txt.text = param2;
            this.input_mc.input_txt.text = param3;
            this.input_mc.input_txt.maxChars = param4;
            this.input_mc.input_txt.restrict = param6;
            this.input_mc.input_txt.setFocus();
            this.input_callback = param5;
            this.lock();
            return;
        }// end function

        public function comboOK(event:MouseEvent = null)
        {
            this.unlock(false);
            this.combo_mc.visible = false;
            if (this.combo_callback != null)
            {
                this.combo_callback(this.combo_mc.combo_cb.selectedItem.data);
            }
            return;
        }// end function

        public function comboCancel(event:MouseEvent)
        {
            this.unlock(false);
            this.combo_mc.visible = false;
            if (this.combo_callback != null)
            {
                this.combo_callback(null);
            }
            return;
        }// end function

        public function comboKeyDownListener(event:KeyboardEvent)
        {
            if (event.keyCode == 9)
            {
                this.keyDownListener(event);
            }
            return;
        }// end function

        public function getComboInput(param1:String, param2:String, param3:Array, param4:int, param5:Function)
        {
            this.msg_mc.visible = false;
            this.input_mc.visible = false;
            this.confirm_mc.visible = false;
            this.unlock(false);
            this.combo_mc.visible = true;
            this.combo_mc.title_txt.text = param1;
            this.combo_mc.text_txt.text = param2;
            this.combo_mc.combo_cb.dataProvider = new DataProvider(param3);
            this.combo_mc.combo_cb.selectedIndex = param4;
            this.combo_mc.combo_cb.setFocus();
            this.combo_callback = param5;
            this.combo_mc.fixTextField();
            this.lock();
            return;
        }// end function

        public function confirmYes(event:MouseEvent = null)
        {
            this.unlock(false);
            this.confirm_mc.visible = false;
            if (this.confirm_callback != null)
            {
                this.confirm_callback(true);
            }
            return;
        }// end function

        public function confirmNo(event:MouseEvent)
        {
            this.unlock(false);
            this.confirm_mc.visible = false;
            if (this.confirm_callback != null)
            {
                this.confirm_callback(false);
            }
            return;
        }// end function

        public function getConfirmation(param1:String, param2:String, param3:Function)
        {
            this.msg_mc.visible = false;
            this.input_mc.visible = false;
            this.combo_mc.visible = false;
            this.unlock(false);
            this.confirm_mc.visible = true;
            this.confirm_mc.title_txt.text = param1;
            this.confirm_mc.setText(param2);
            stage.focus = null;
            this.confirm_callback = param3;
            this.lock();
            return;
        }// end function

        public function lock(param1:Boolean = false)
        {
            this.dim_mc.alpha = param1 ? (0) : (1);
            this.dim_mc.visible = true;
            this.disable_tabbing = true;
            var _loc_2:Boolean = true;
            if (this.msg_mc.visible)
            {
                if (stage.focus == this.msg_mc.OK_btn)
                {
                    _loc_2 = false;
                }
            }
            else
            {
                switch(stage.focus)
                {
                    case this.input_mc.input_txt.textField:
                    case this.input_mc.OK_btn:
                    case this.input_mc.cancel_btn:
                    {
                    }
                    default:
                    {
                        break;
                    }
                }
                switch(stage.focus)
                {
                    case this.combo_mc.combo_cb:
                    case this.combo_mc.OK_btn:
                    case this.combo_mc.cancel_btn:
                    {
                    }
                    default:
                    {
                        break;
                    }
                }
                if (this.confirm_mc.visible)
                {
                    switch(stage.focus)
                    {
                        case this.confirm_mc.yes_btn:
                        case this.confirm_mc.no_btn:
                        {
                        }
                        default:
                        {
                            break;
                        }
                    }
                }
            }
            if (_loc_2)
            {
                this.lock_has_saved_focus = true;
                this.lock_saved_focus = stage.focus;
                stage.focus = null;
            }
            else
            {
                this.lock_has_saved_focus = false;
            }
            return;
        }// end function

        public function unlock(param1:Boolean = true)
        {
            this.dim_mc.visible = false;
            this.disable_tabbing = false;
            if (param1 && this.lock_has_saved_focus)
            {
                try
                {
                    stage.focus = this.lock_saved_focus;
                }
                catch (e:Error)
                {
                }
            }
            this.lock_has_saved_focus = false;
            return;
        }// end function

        public function skipIntroE(event:MouseEvent)
        {
            gotoAndStop("start");
            return;
        }// end function

        public function forumsE(event:MouseEvent)
        {
            var _loc_2:* = new URLRequest("http://forum.duelingnetwork.com/");
            _loc_2.method = URLRequestMethod.GET;
            navigateToURL(_loc_2, "_blank");
            return;
        }// end function

        public function rulesE(event:MouseEvent)
        {
            var _loc_2:* = new URLRequest("http://www.duelingnetwork.com/rules");
            _loc_2.method = URLRequestMethod.GET;
            navigateToURL(_loc_2, "_blank");
            return;
        }// end function

        public function loading(event:Event)
        {
            var _loc_2:* = loaderInfo.bytesLoaded;
            var _loc_3:* = loaderInfo.bytesTotal;
            this.progress_mc.setProgress(_loc_2, _loc_3);
            if (framesLoaded >= 177 && this.skip_intro_btn != null)
            {
                this.skip_intro_btn.visible = true;
            }
            if (_loc_2 == _loc_3)
            {
                this.progress_mc.visible = false;
                removeEventListener(Event.ENTER_FRAME, this.loading);
                if (this.password != null)
                {
                    if (this.show_admin_arrow)
                    {
                        this.admin_admin_btn.visible = true;
                        this.admin_duel_btn.visible = true;
                    }
                    else
                    {
                        this.start_btn.visible = true;
                    }
                }
            }
            return;
        }// end function

        public function keyDownListener(event:KeyboardEvent)
        {
            var _loc_3:Boolean = false;
            var _loc_4:Boolean = false;
            var _loc_5:InteractiveObject = null;
            var _loc_2:* = event.keyCode;
            switch(_loc_2)
            {
                case 13:
                {
                    _loc_3 = false;
                    if (stage.focus == null)
                    {
                        _loc_3 = true;
                        if (this.msg_mc.visible)
                        {
                            this.msgOK();
                        }
                        else if (this.input_mc.visible)
                        {
                            this.inputOK();
                        }
                        else if (this.combo_mc.visible)
                        {
                            this.comboOK();
                        }
                        else if (this.confirm_mc.visible)
                        {
                            this.confirmYes();
                        }
                        else
                        {
                            _loc_3 = false;
                        }
                    }
                    else if (stage.focus == this.input_mc.input_txt.textField)
                    {
                        this.inputOK();
                        _loc_3 = true;
                    }
                    else if (stage.focus == this.combo_mc.combo_cb)
                    {
                        this.comboOK();
                        _loc_3 = true;
                    }
                    if (!_loc_3)
                    {
                        if (this.override_enter_handler != null)
                        {
                            _loc_3 = this.override_enter_handler();
                        }
                        if (!_loc_3 && this.enter_handler != null)
                        {
                            this.enter_handler();
                        }
                    }
                    break;
                }
                case 9:
                {
                    if (this.disable_tabbing)
                    {
                        this.current_focus = stage.focus;
                        addEventListener(Event.ENTER_FRAME, this.resetFocusE);
                    }
                    break;
                }
                default:
                {
                    if (event.ctrlKey)
                    {
                        break;
                    }
                    if (this.msg_mc.visible || this.input_mc.visible || this.combo_mc.visible || this.confirm_mc.visible)
                    {
                        break;
                    }
                    if (_loc_2 == 32 || _loc_2 >= 65 && _loc_2 <= 90 || _loc_2 >= 186 && _loc_2 <= 192 || _loc_2 >= 219 && _loc_2 <= 222 || _loc_2 == 106 || _loc_2 == 107 || _loc_2 >= 109 && _loc_2 <= 111)
                    {
                        _loc_4 = false;
                        switch(currentFrameLabel)
                        {
                            case "rps_start":
                            case "tp_start":
                            case "duel_start":
                            {
                                _loc_4 = true;
                                break;
                            }
                            default:
                            {
                                break;
                            }
                        }
                        if (_loc_4 && this.cin_txt.visible)
                        {
                            _loc_5 = stage.focus;
                            switch(_loc_5)
                            {
                                case this.online_users_mc.search_txt.textField:
                                case this.watch_chat_mc.cin_txt.textField:
                                case this.public_chat_mc.cin_txt.textField:
                                case this.cin_txt.textField:
                                case this.calls_mc.tools_mc.username_txt.textField:
                                case this.calls_mc.tools_mc.reason_txt.textField:
                                {
                                    break;
                                }
                                default:
                                {
                                    if (this.private_chat_mc.cin_txt == null || _loc_5 != this.private_chat_mc.cin_txt.textField)
                                    {
                                        stage.focus = this.cin_txt;
                                    }
                                    break;
                                    break;
                                }
                            }
                        }
                    }
                    break;
                    break;
                }
            }
            return;
        }// end function

        public function resetFocusE(event:Event)
        {
            var _loc_2:InteractiveObject = null;
            if (this.msg_mc.visible)
            {
                _loc_2 = this.msg_mc.OK_btn;
            }
            else
            {
                switch(this.current_focus)
                {
                    case this.input_mc.input_txt.textField:
                    {
                        break;
                    }
                    case this.input_mc.OK_btn:
                    {
                        break;
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
                switch(this.current_focus)
                {
                    case this.combo_mc.combo_cb:
                    {
                        break;
                    }
                    case this.combo_mc.OK_btn:
                    {
                        break;
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
                switch(this.current_focus)
                {
                    case this.confirm_mc.yes_btn:
                    {
                        break;
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
            }
            stage.focus = _loc_2;
            removeEventListener(Event.ENTER_FRAME, this.resetFocusE);
            return;
        }// end function

        public function init_mouse_listeners()
        {
            this.login_box_mc.register_btn.addEventListener(MouseEvent.CLICK, this.showRegE);
            this.login_box_mc.forgot_password_btn.addEventListener(MouseEvent.CLICK, this.showForgotPasswordE);
            this.register_box_mc.back_btn.addEventListener(MouseEvent.CLICK, this.showLoginE);
            this.forgot_password_box_mc.back_btn.addEventListener(MouseEvent.CLICK, this.showLoginE);
            this.start_btn.addEventListener(MouseEvent.CLICK, this.performStart);
            this.admin_admin_btn.addEventListener(MouseEvent.CLICK, this.performStart);
            this.admin_duel_btn.addEventListener(MouseEvent.CLICK, this.performStart);
            this.login_box_mc.login_btn.addEventListener(MouseEvent.CLICK, this.performLogin);
            this.register_box_mc.register_btn.addEventListener(MouseEvent.CLICK, this.performRegister);
            this.logged_in_box_mc.logout_btn.addEventListener(MouseEvent.CLICK, this.performLogout);
            this.forgot_password_box_mc.reset_password_btn.addEventListener(MouseEvent.CLICK, this.performForgotPassword);
            this.donate_btn.addEventListener(MouseEvent.CLICK, this.donateClickE);
            this.forums_btn.addEventListener(MouseEvent.CLICK, this.forumsE);
            this.rules_btn.addEventListener(MouseEvent.CLICK, this.rulesE);
            return;
        }// end function

        public function showRegE(event:MouseEvent)
        {
            this.showRegister();
            return;
        }// end function

        public function showLoginE(event:MouseEvent)
        {
            this.showLogin();
            return;
        }// end function

        public function showForgotPasswordE(event:MouseEvent)
        {
            this.showForgotPassword();
            return;
        }// end function

        public function performStart(event:MouseEvent = null)
        {
            var e:* = event;
            this.playing_intro = false;
            if (e == null)
            {
                this.login_administrate = this.show_admin_arrow;
            }
            else
            {
                this.login_administrate = e.currentTarget == this.admin_admin_btn;
            }
            this.setAd(false);
            gotoAndStop("connect_start");
            if (this.bg_tween == null && this.bgchannel != null)
            {
                var tweenChangeE:* = function (event:Event)
            {
                bgchannel.soundTransform = bgtrans;
                return;
            }// end function
            ;
                var tweenFinishE:* = function (event:Event)
            {
                bg_tween = null;
                bgchannel.stop();
                return;
            }// end function
            ;
                this.bg_tween = new Tween(this.bgtrans, "volume", Strong.easeOut, 1, 0, 4, true);
                this.bg_tween.addEventListener(TweenEvent.MOTION_CHANGE, tweenChangeE);
                this.bg_tween.addEventListener(TweenEvent.MOTION_FINISH, tweenFinishE);
            }
            return;
        }// end function

        public function io_errorE(event:IOErrorEvent)
        {
            this.unlock();
            this.showLogin();
            this.displayError("Unable to contact server");
            return;
        }// end function

        public function logged_in()
        {
            this.logged_in_loader = new URLLoader();
            var _loc_1:* = new URLRequest(this.URL_START + "logged_in.do");
            _loc_1.method = URLRequestMethod.POST;
            var _loc_2:* = new URLVariables();
            _loc_2.dn_id = this.dn_id;
            _loc_2.date = new Date();
            _loc_1.data = _loc_2;
            this.logged_in_loader.addEventListener(Event.COMPLETE, this.logged_in_complete);
            this.logged_in_loader.addEventListener(IOErrorEvent.IO_ERROR, this.io_errorE);
            this.logged_in_loader.load(_loc_1);
            return;
        }// end function

        public function logged_in_complete(event:Event)
        {
            var _loc_2:* = StringUtils.stringToArray(this.logged_in_loader.data);
            if ((_loc_2.length == 1 || _loc_2.length == 2) && _loc_2[0] == "Not logged in")
            {
                this.showLogin();
                if (_loc_2.length == 2)
                {
                    this.displayMessage(_loc_2[1]);
                }
            }
            else if ((_loc_2.length == 4 || _loc_2.length == 5) && _loc_2[0] == "Logged in")
            {
                this.login_box_mc.username_txt.text = "";
                this.login_box_mc.password_txt.text = "";
                this.username = _loc_2[1];
                this.password = _loc_2[2];
                this.show_admin_arrow = _loc_2[3] == "true";
                this.showLoggedIn();
                if (_loc_2.length == 5)
                {
                    this.displayMessage(_loc_2[4]);
                }
            }
            else if (_loc_2.length == 2 && _loc_2[0] == "Error")
            {
                this.showLogin();
                this.displayError(_loc_2[1]);
            }
            else
            {
                this.showLogin();
                this.displayError("Malformed server response");
            }
            return;
        }// end function

        public function performLogin(event:MouseEvent = null)
        {
            this.login_loader = new URLLoader();
            var _loc_2:* = new URLRequest(this.URL_START + "login.do");
            _loc_2.method = URLRequestMethod.POST;
            var _loc_3:* = new URLVariables();
            _loc_3.username = this.login_box_mc.username_txt.text;
            _loc_3.password = this.login_box_mc.password_txt.text;
            _loc_3.remember_me = this.login_box_mc.remember_me_cb.selected;
            _loc_3.dn_id = this.dn_id;
            _loc_3.date = new Date();
            _loc_2.data = _loc_3;
            this.login_loader.addEventListener(Event.COMPLETE, this.login_complete);
            this.login_loader.addEventListener(IOErrorEvent.IO_ERROR, this.io_errorE);
            this.login_loader.load(_loc_2);
            this.lock(true);
            return;
        }// end function

        public function login_complete(event:Event)
        {
            this.unlock();
            var _loc_2:* = StringUtils.stringToArray(this.login_loader.data);
            if ((_loc_2.length == 4 || _loc_2.length == 5) && _loc_2[0] == "Logged in")
            {
                this.login_box_mc.username_txt.text = "";
                this.login_box_mc.password_txt.text = "";
                this.username = _loc_2[1];
                this.password = _loc_2[2];
                this.show_admin_arrow = _loc_2[3] == "true";
                this.showLoggedIn();
                if (_loc_2.length == 5)
                {
                    this.displayMessage(_loc_2[4]);
                }
            }
            else if (_loc_2.length == 3 && _loc_2[0] == "Not confirmed")
            {
                this.reconfirm_email = _loc_2[1];
                this.getConfirmation("E-mail Confirmation", _loc_2[2], this.performReconfirm);
            }
            else if ((_loc_2.length == 1 || _loc_2.length == 2) && _loc_2[0] == "Error")
            {
                if (_loc_2.length == 2)
                {
                    this.displayError(_loc_2[1]);
                }
                else
                {
                    this.displayError("An unknown error has occurred");
                }
            }
            else
            {
                this.displayError("Malformed server response");
            }
            return;
        }// end function

        public function performReconfirm(param1:Boolean)
        {
            if (!param1)
            {
                return;
            }
            this.reconfirm_loader = new URLLoader();
            var _loc_2:* = new URLRequest(this.URL_START + "reconfirm.do");
            _loc_2.method = URLRequestMethod.POST;
            var _loc_3:* = new URLVariables();
            _loc_3.email = this.reconfirm_email;
            this.reconfirm_email = null;
            _loc_3.date = new Date();
            _loc_2.data = _loc_3;
            this.reconfirm_loader.addEventListener(Event.COMPLETE, this.reconfirm_complete);
            this.reconfirm_loader.addEventListener(IOErrorEvent.IO_ERROR, this.io_errorE);
            this.reconfirm_loader.load(_loc_2);
            this.lock(true);
            return;
        }// end function

        public function reconfirm_complete(event:Event)
        {
            this.unlock();
            var _loc_2:* = StringUtils.stringToArray(this.reconfirm_loader.data);
            if (_loc_2.length == 2 && _loc_2[0] == "Reconfirm sent")
            {
                this.displayMessage(_loc_2[1]);
            }
            else if ((_loc_2.length == 1 || _loc_2.length == 2) && _loc_2[0] == "Error")
            {
                if (_loc_2.length == 2)
                {
                    this.displayError(_loc_2[1]);
                }
                else
                {
                    this.displayError("An unknown error has occurred");
                }
            }
            else
            {
                this.displayError("Malformed server response");
            }
            return;
        }// end function

        public function performRegister(event:MouseEvent = null)
        {
            this.register_loader = new URLLoader();
            var _loc_2:* = new URLRequest(this.URL_START + "register.do");
            _loc_2.method = URLRequestMethod.POST;
            var _loc_3:* = new URLVariables();
            _loc_3.username = this.register_box_mc.username_txt.text;
            _loc_3.password = this.register_box_mc.password_txt.text;
            _loc_3.email = this.register_box_mc.email_txt.text;
            _loc_3.dn_id = this.dn_id;
            _loc_3.date = new Date();
            _loc_2.data = _loc_3;
            this.register_loader.addEventListener(Event.COMPLETE, this.register_complete);
            this.register_loader.addEventListener(IOErrorEvent.IO_ERROR, this.io_errorE);
            this.register_loader.load(_loc_2);
            this.lock(true);
            return;
        }// end function

        public function register_complete(event:Event)
        {
            this.unlock();
            var _loc_2:* = StringUtils.stringToArray(this.register_loader.data);
            if ((_loc_2.length == 1 || _loc_2.length == 2) && _loc_2[0] == "Registered")
            {
                this.register_box_mc.username_txt.text = "";
                this.register_box_mc.password_txt.text = "";
                this.register_box_mc.email_txt.text = "";
                this.showLogin();
                if (_loc_2.length == 2)
                {
                    this.displayMessage(_loc_2[1]);
                }
            }
            else if (_loc_2[0] == "Error")
            {
                if (_loc_2.length == 2)
                {
                    this.displayError(_loc_2[1]);
                }
                else
                {
                    this.displayError("An unknown error has occurred");
                }
            }
            else
            {
                this.displayError("Malformed server response");
            }
            return;
        }// end function

        public function performLogout(event:MouseEvent = null)
        {
            this.logout_loader = new URLLoader();
            var _loc_2:* = new URLRequest(this.URL_START + "logout.do");
            _loc_2.method = URLRequestMethod.POST;
            var _loc_3:* = new URLVariables();
            _loc_3.date = new Date();
            _loc_2.data = _loc_3;
            this.logout_loader.addEventListener(Event.COMPLETE, this.logout_complete);
            this.logout_loader.addEventListener(IOErrorEvent.IO_ERROR, this.io_errorE);
            this.logout_loader.load(_loc_2);
            this.lock(true);
            return;
        }// end function

        public function logout_complete(event:Event)
        {
            this.unlock();
            var _loc_2:* = StringUtils.stringToArray(this.logout_loader.data);
            if ((_loc_2.length == 1 || _loc_2.length == 2) && _loc_2[0] == "Logged out")
            {
                this.username = null;
                this.password = null;
                this.showLogin();
                if (_loc_2.length == 2)
                {
                    this.displayMessage(_loc_2[1]);
                }
            }
            else if (_loc_2[0] == "Error")
            {
                this.showLogin();
                if (_loc_2.length == 2)
                {
                    this.displayError(_loc_2[1]);
                }
                else
                {
                    this.displayError("An unknown error has occurred");
                }
            }
            else
            {
                this.showLogin();
                this.displayError("Malformed server response");
            }
            return;
        }// end function

        public function performForgotPassword(event:MouseEvent = null)
        {
            this.forgot_password_loader = new URLLoader();
            var _loc_2:* = new URLRequest(this.URL_START + "forgot_password.do");
            _loc_2.method = URLRequestMethod.POST;
            var _loc_3:* = new URLVariables();
            _loc_3.email = this.forgot_password_box_mc.email_txt.text;
            _loc_3.date = new Date();
            _loc_2.data = _loc_3;
            this.forgot_password_loader.addEventListener(Event.COMPLETE, this.forgot_password_complete);
            this.forgot_password_loader.addEventListener(IOErrorEvent.IO_ERROR, this.io_errorE);
            this.forgot_password_loader.load(_loc_2);
            this.lock(true);
            return;
        }// end function

        public function forgot_password_complete(event:Event)
        {
            this.unlock();
            var _loc_2:* = StringUtils.stringToArray(this.forgot_password_loader.data);
            if ((_loc_2.length == 1 || _loc_2.length == 2) && _loc_2[0] == "Forgot password sent")
            {
                this.forgot_password_box_mc.email_txt.text = "";
                this.showLogin();
                if (_loc_2.length == 2)
                {
                    this.displayMessage(_loc_2[1]);
                }
            }
            else if ((_loc_2.length == 1 || _loc_2.length == 2) && _loc_2[0] == "Error")
            {
                if (_loc_2.length == 2)
                {
                    this.displayError(_loc_2[1]);
                }
                else
                {
                    this.displayError("An unknown error has occurred");
                }
            }
            else
            {
                this.displayError("Malformed server response");
            }
            return;
        }// end function

        public function loadNews()
        {
            this.news_loader = new URLLoader();
            var _loc_1:* = new URLRequest("http://www.duelingnetwork.com/news.txt");
            _loc_1.method = URLRequestMethod.GET;
            var _loc_2:* = new URLVariables();
            _loc_2.date = new Date();
            _loc_1.data = _loc_2;
            this.news_loader.addEventListener(Event.COMPLETE, this.loadNewsComplete);
            this.news_loader.addEventListener(IOErrorEvent.IO_ERROR, this.loadNewsError);
            this.news_loader.load(_loc_1);
            return;
        }// end function

        public function loadNewsComplete(event:Event)
        {
            if (this.news_txt != null)
            {
                this.news_txt.htmlText = this.news_loader.data;
            }
            return;
        }// end function

        public function loadNewsError(event:IOErrorEvent)
        {
            if (this.news_txt != null)
            {
                this.news_txt.htmlText = "<b>Failed to load news</b>";
            }
            return;
        }// end function

        public function loadAds()
        {
            this.tat_leaderboard.load();
            this.tat_banner.load();
            return;
        }// end function

        public function donateClickE(event:MouseEvent)
        {
            var _loc_2:* = new URLRequest("http://www.duelingnetwork.com/donate.html");
            _loc_2.method = URLRequestMethod.GET;
            navigateToURL(_loc_2, "_blank");
            return;
        }// end function

        public function hideBoxes()
        {
            this.login_box_mc.visible = false;
            this.logged_in_box_mc.visible = false;
            this.register_box_mc.visible = false;
            this.forgot_password_box_mc.visible = false;
            this.start_btn.visible = false;
            this.admin_admin_btn.visible = false;
            this.admin_duel_btn.visible = false;
            this.enter_handler = null;
            return;
        }// end function

        public function showLogin()
        {
            this.hideBoxes();
            this.login_box_mc.visible = true;
            this.login_box_mc.username_txt.setFocus();
            this.enter_handler = this.tryLogin;
            return;
        }// end function

        public function tryLogin()
        {
            switch(stage.focus)
            {
                case this.login_box_mc.username_txt.textField:
                case this.login_box_mc.password_txt.textField:
                case this.login_box_mc.remember_me_cb:
                case this.login_box_mc.login_btn:
                {
                    this.performLogin();
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function showLoggedIn()
        {
            this.hideBoxes();
            this.logged_in_box_mc.visible = true;
            this.logged_in_box_mc.setUsername(this.username);
            if (!this.progress_mc.visible)
            {
                if (this.show_admin_arrow)
                {
                    this.admin_admin_btn.visible = true;
                    this.admin_duel_btn.visible = true;
                }
                else
                {
                    this.start_btn.visible = true;
                }
            }
            this.enter_handler = this.tryStart;
            return;
        }// end function

        public function tryStart()
        {
            if (stage.focus == null && (this.start_btn.visible || this.admin_admin_btn.visible))
            {
                this.performStart();
            }
            return;
        }// end function

        public function showRegister()
        {
            this.hideBoxes();
            this.register_box_mc.visible = true;
            this.register_box_mc.username_txt.setFocus();
            this.enter_handler = this.tryRegister;
            return;
        }// end function

        public function tryRegister()
        {
            switch(stage.focus)
            {
                case this.register_box_mc.username_txt.textField:
                case this.register_box_mc.password_txt.textField:
                case this.register_box_mc.email_txt.textField:
                case this.register_box_mc.register_btn:
                {
                    this.performRegister();
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function showForgotPassword()
        {
            this.hideBoxes();
            this.forgot_password_box_mc.visible = true;
            this.forgot_password_box_mc.email_txt.setFocus();
            this.enter_handler = this.tryForgotPassword;
            return;
        }// end function

        public function tryForgotPassword()
        {
            switch(stage.focus)
            {
                case this.forgot_password_box_mc.email_txt.textField:
                case this.forgot_password_box_mc.reset_password_btn:
                {
                    this.performForgotPassword();
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function sendHeartbeat(event:TimerEvent)
        {
            if (this.got_heartbeat)
            {
                this.got_heartbeat = false;
                this.Send(["Heartbeat"]);
            }
            else
            {
                this.reconnectE();
            }
            return;
        }// end function

        public function random(param1:int) : int
        {
            return Math.floor(Math.random() * param1);
        }// end function

        public function randomHex() : String
        {
            var _loc_3:int = 0;
            var _loc_1:String = "";
            var _loc_2:* = 0;
            while (_loc_2 < 32)
            {
                
                _loc_3 = this.random(16);
                _loc_1 = _loc_1 + (_loc_3 < 10 ? (_loc_3.toString()) : (String.fromCharCode(_loc_3 + 87)));
                _loc_2 = _loc_2 + 1;
            }
            return _loc_1;
        }// end function

        public function Connect()
        {
            this.socket.connect(this.HOSTNAME, 1234);
            return;
        }// end function

        public function connectHandler(event:Event)
        {
            var _loc_2:Array = ["Connect15", this.username, this.password, this.session_id];
            if (this.login_administrate)
            {
                _loc_2.push("Administrate");
            }
            this.Send(_loc_2);
            this.got_heartbeat = true;
            this.heartbeat_timer.start();
            return;
        }// end function

        public function Close()
        {
            if (this.socket.connected)
            {
                this.socket.close();
            }
            this.heartbeat_timer.stop();
            this.enter_handler = null;
            this.incoming_handler = null;
            this.msg_mc.visible = false;
            this.input_mc.visible = false;
            this.combo_mc.visible = false;
            this.confirm_mc.visible = false;
            this.unlock(false);
            return;
        }// end function

        public function Send(param1:Array)
        {
            this.SendString(StringUtils.arrayToString(param1));
            return;
        }// end function

        public function SendString(param1:String)
        {
            this.socket.send(param1);
            return;
        }// end function

        public function reconnectE(event:Event = null)
        {
            this.Close();
            if (this.connection_success)
            {
                gotoAndStop("lost_conn");
            }
            this.Connect();
            return;
        }// end function

        public function dataHandler(event:DataEvent) : void
        {
            var _loc_2:Array = null;
            var _loc_3:String = null;
            var _loc_4:Boolean = false;
            var _loc_5:int = 0;
            var _loc_6:Array = null;
            _loc_2 = StringUtils.stringToArray(event.data);
            if (_loc_2.lentgth == 0)
            {
                this.displayError("Malformed server response");
                return;
            }
            switch(_loc_2[0])
            {
                case "Heartbeat":
                {
                    this.got_heartbeat = true;
                    break;
                }
                case "Connected":
                {
                    this.connection_success = true;
                    this.admin = _loc_2[1];
                    gotoAndStop("main_start");
                    break;
                }
                case "Rejected":
                {
                    gotoAndStop("rejected");
                    this.Close();
                    break;
                }
                case "Already logged in":
                {
                    gotoAndStop("logged_in");
                    this.Close();
                    break;
                }
                case "Banned":
                {
                    gotoAndStop("banned");
                    this.Close();
                    break;
                }
                case "Over limit":
                {
                    gotoAndStop("over_limit");
                    this.Close();
                    break;
                }
                case "Timed out":
                {
                    gotoAndStop("timed_out");
                    this.Close();
                    break;
                }
                case "Kicked":
                {
                    gotoAndStop("kicked");
                    this.Close();
                    break;
                }
                case "Global message":
                {
                    if (_loc_2.length >= 4)
                    {
                        this.public_chat_mc.publicChatPrint(_loc_2[1], _loc_2[2], this.username, _loc_2[3]);
                    }
                    else
                    {
                        this.displayError("Malformed server response");
                    }
                    break;
                }
                case "Private message":
                {
                    if (_loc_2.length >= 5)
                    {
                        this.privateChatPrint(_loc_2[1], _loc_2[2], _loc_2[3], _loc_2[4]);
                    }
                    else
                    {
                        this.displayError("Malformed server response");
                    }
                    break;
                }
                case "Online users":
                {
                    this.online_users_mc.usersAdd(_loc_2.slice(1), this.private_chat_mc);
                    break;
                }
                case "Offline users":
                {
                    this.online_users_mc.usersRemove(_loc_2.slice(1), this.private_chat_mc);
                    break;
                }
                case "Friends":
                {
                    _loc_5 = 1;
                    while (_loc_5 < _loc_2.length)
                    {
                        
                        this.online_users_mc.updateFriend(_loc_2[_loc_5], true);
                        _loc_5++;
                    }
                    break;
                }
                case "Add friend":
                {
                    if (_loc_2.length < 2)
                    {
                        this.displayError("Malformed server response");
                        break;
                    }
                    _loc_3 = _loc_2[1];
                    this.online_users_mc.updateFriend(_loc_3, true);
                    this.displayMessage(_loc_3 + " is now your friend");
                    if (this.add_friend_btn != null && this.profile_username == _loc_3)
                    {
                        this.add_friend_btn.visible = false;
                        this.delete_friend_btn.visible = true;
                    }
                    break;
                }
                case "Delete friend":
                {
                    if (_loc_2.length < 2)
                    {
                        this.displayError("Malformed server response");
                        break;
                    }
                    _loc_3 = _loc_2[1];
                    this.online_users_mc.updateFriend(_loc_3, false);
                    this.displayMessage(_loc_3 + " is no longer your friend");
                    if (this.add_friend_btn != null && this.profile_username == _loc_3)
                    {
                        this.add_friend_btn.visible = true;
                        this.delete_friend_btn.visible = false;
                    }
                    break;
                }
                case "Answer call":
                {
                    this.trackEvent("Admin", "Answer call", this.username);
                }
                case "Watch duel":
                {
                    _loc_2.reverse();
                    _loc_2.pop();
                    _loc_2.reverse();
                    this.watchDuelResponse(_loc_2);
                    break;
                }
                case "Add admin calls":
                {
                    _loc_5 = 1;
                    while (_loc_5 < _loc_2.length)
                    {
                        
                        _loc_6 = [_loc_2[_loc_5], _loc_2[(_loc_5 + 1)], _loc_2[_loc_5 + 2]];
                        this.calls_mc.addCall(StringUtils.arrayToString(_loc_6), _loc_6);
                        _loc_5 = _loc_5 + 3;
                    }
                    break;
                }
                case "Remove admin calls":
                {
                    _loc_5 = 1;
                    while (_loc_5 < _loc_2.length)
                    {
                        
                        _loc_6 = [_loc_2[_loc_5], _loc_2[(_loc_5 + 1)], _loc_2[_loc_5 + 2]];
                        this.calls_mc.removeCall(StringUtils.arrayToString(_loc_6));
                        _loc_5 = _loc_5 + 3;
                    }
                    break;
                }
                case "Message":
                {
                    if (_loc_2.length == 2)
                    {
                        this.displayMessage(_loc_2[1]);
                    }
                    else
                    {
                        this.displayError("Malformed server response");
                    }
                    break;
                }
                case "Async error":
                {
                    if (_loc_2.length == 2)
                    {
                        this.displayError(_loc_2[1]);
                    }
                    else
                    {
                        this.displayError("An unknown error has occurred");
                    }
                    break;
                }
                case "Chat error":
                {
                    _loc_4 = true;
                    if (_loc_2.length == 2)
                    {
                        if (_loc_2[1] == "Quick chat")
                        {
                            _loc_4 = false;
                        }
                        else
                        {
                            this.displayError(_loc_2[1]);
                        }
                    }
                    else
                    {
                        this.displayError("An unknown chat error has occurred");
                    }
                    if (_loc_4)
                    {
                        this.chatUnlock();
                    }
                    break;
                }
                case "Chat unlock":
                {
                    this.chatUnlock();
                    break;
                }
                case "Ban status":
                case "Ban user":
                case "Unban user":
                case "Kick user":
                case "Add warning":
                case "IP check":
                case "Computer check":
                case "Get admin":
                {
                    if (this.calls_mc.tools_mc.awaiting_response)
                    {
                        this.calls_mc.tools_mc.showResults(_loc_2);
                        break;
                    }
                }
                default:
                {
                    if (_loc_2[0] == "Error")
                    {
                        this.calls_mc.tools_mc.awaiting_response = false;
                        this.unlock();
                        if (_loc_2.length == 2)
                        {
                            this.displayError(_loc_2[1]);
                        }
                        else
                        {
                            this.displayError("An unknown error has occurred");
                        }
                        _loc_2 = null;
                    }
                    if (this.incoming_handler != null)
                    {
                        this.incoming_handler(_loc_2);
                    }
                    break;
                    break;
                }
            }
            return;
        }// end function

        public function watchDuelResponse(param1:Array)
        {
            this.unlock();
            if (currentFrameLabel == "room_start")
            {
                this.Send(["Unsubscribe"]);
            }
            var _loc_2:* = param1[0];
            var _loc_3:* = param1;
            _loc_3.reverse();
            _loc_3.pop();
            _loc_3.reverse();
            this.gotoDuel(_loc_2, false, false, _loc_3);
            return;
        }// end function

        public function getX() : Number
        {
            var _loc_1:Array = [this.online_users_mc, this.calls_mc, this.public_chat_mc, this.private_chat_mc];
            if (this.watch_chat_mc != null)
            {
                _loc_1.push(this.watch_chat_mc);
            }
            var _loc_2:Array = [3, 206, 409, 612, 815];
            var _loc_3:Array = [true, true, true, true, true];
            var _loc_4:* = 0;
            while (_loc_4 < _loc_1.length)
            {
                
                if (!_loc_1[_loc_4].visible)
                {
                }
                else
                {
                    switch(_loc_1[_loc_4].x)
                    {
                        case _loc_2[0]:
                        {
                            _loc_3[0] = false;
                            break;
                        }
                        case _loc_2[1]:
                        {
                            _loc_3[1] = false;
                            break;
                        }
                        case _loc_2[2]:
                        {
                            _loc_3[2] = false;
                            break;
                        }
                        case _loc_2[3]:
                        {
                            _loc_3[3] = false;
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                }
                _loc_4 = _loc_4 + 1;
            }
            _loc_4 = 0;
            while (_loc_4 < _loc_2.length)
            {
                
                if (_loc_3[_loc_4])
                {
                    return _loc_2[_loc_4];
                }
                _loc_4 = _loc_4 + 1;
            }
            return -1;
        }// end function

        public function chatEnterHandler()
        {
            var _loc_1:* = stage.focus;
            if (_loc_1 == this.public_chat_mc.cin_txt.textField)
            {
                this.publicSendMessage();
            }
            else if (this.private_chat_mc.cin_txt != null && _loc_1 == this.private_chat_mc.cin_txt.textField)
            {
                this.privateSendMessage();
            }
            else
            {
                return false;
            }
            return true;
        }// end function

        public function togglePublicE(event:MouseEvent)
        {
            if (this.public_chat_mc.visible)
            {
                this.public_chat_mc.visible = false;
                if (!this.private_chat_mc.visible)
                {
                    this.override_enter_handler = null;
                }
            }
            else
            {
                if (!this.public_chat_mc.remember_position)
                {
                    this.public_chat_mc.x = this.getX();
                }
                this.public_chat_mc.visible = true;
                this.chat_hidden_mc.addChild(this.public_chat_mc);
                this.override_enter_handler = this.chatEnterHandler;
                this.public_chat_mc.cin_txt.setFocus();
            }
            return;
        }// end function

        public function publicSendMessage()
        {
            if (this.chat_lock || this.public_chat_mc.cin_txt.text == "")
            {
                return;
            }
            this.Send(["Global message", this.public_chat_mc.cin_txt.text]);
            this.public_chat_mc.cin_txt.text = "";
            this.chatLock();
            return;
        }// end function

        public function toggleOnlineE(event:MouseEvent)
        {
            if (this.online_users_mc.visible)
            {
                this.online_users_mc.visible = false;
            }
            else
            {
                if (!this.online_users_mc.remember_position)
                {
                    this.online_users_mc.x = this.getX();
                }
                this.online_users_mc.visible = true;
                this.chat_hidden_mc.addChild(this.online_users_mc);
                this.online_users_mc.search_txt.setFocus();
            }
            return;
        }// end function

        public function startPrivateE(event:MouseEvent = null)
        {
            if (this.online_users_mc.users_mc.selectedIndex < 0)
            {
                return;
            }
            if (this.online_users_mc.users_mc.selectedItem.data == this.username)
            {
                this.displayError("You cannot open a private chat with yourself");
                return;
            }
            this.openPrivateChat(this.online_users_mc.users_mc.selectedItem.data);
            return;
        }// end function

        public function openPrivateChat(param1:String)
        {
            var _loc_2:* = this.private_chat_mc.startPrivateChat(param1, this.admin);
            this.restoreChat(_loc_2);
            if (!this.private_chat_mc.visible)
            {
                this.togglePrivateE();
            }
            return;
        }// end function

        public function userListKeyboardHandlerE(event:KeyboardEvent)
        {
            if (event.keyCode == 13)
            {
                this.startPrivateE();
            }
            return;
        }// end function

        public function toggleCallsE(event:MouseEvent)
        {
            if (this.calls_mc.visible)
            {
                this.calls_mc.visible = false;
            }
            else
            {
                if (!this.calls_mc.remember_position)
                {
                    this.calls_mc.x = this.getX();
                }
                this.calls_mc.visible = true;
                this.chat_hidden_mc.addChild(this.calls_mc);
                if (this.calls_mc.calls_mc.visible)
                {
                    this.calls_mc.calls_mc.setFocus();
                    this.calls_mc.calls_mc.drawFocus(false);
                }
                else if (this.calls_mc.tools_mc.visible)
                {
                    this.calls_mc.tools_mc.username_txt.setFocus();
                }
                else if (this.calls_mc.log_mc.visible)
                {
                    this.calls_mc.log_mc.log_txt.setFocus();
                    this.calls_mc.log_mc.log_txt.drawFocus(false);
                }
            }
            return;
        }// end function

        public function answerCallE(event:MouseEvent = null)
        {
            if (this.calls_mc.calls_mc.selectedIndex < 0)
            {
                return;
            }
            this.Send(["Answer call", this.calls_mc.calls_mc.selectedItem.data]);
            this.lock();
            return;
        }// end function

        public function callListKeyboardHandlerE(event:KeyboardEvent)
        {
            if (event.keyCode == 13)
            {
                this.answerCallE();
            }
            return;
        }// end function

        public function togglePrivateE(event:MouseEvent = null)
        {
            var _loc_2:Object = null;
            if (this.private_chat_mc.visible)
            {
                this.private_chat_mc.visible = false;
                if (!this.public_chat_mc.visible)
                {
                    this.override_enter_handler = null;
                }
            }
            else if (this.private_chat_mc.user_mc.length == 0)
            {
                this.displayMessageWithTitle("Private Chat", "Use the online user list to initiate a private chat");
            }
            else
            {
                _loc_2 = this.private_chat_mc.user_mc.selectedItem;
                if (_loc_2.new_msg)
                {
                    _loc_2.new_msg = false;
                    this.private_chat_mc.updateListColors();
                    var _loc_3:String = this;
                    var _loc_4:* = this.num_new_msgs - 1;
                    _loc_3.num_new_msgs = _loc_4;
                    if (this.num_new_msgs == 0)
                    {
                        this.private_btn.stopAnimation();
                    }
                    this.removeTitle(_loc_2.data);
                }
                if (!this.private_chat_mc.remember_position)
                {
                    this.private_chat_mc.x = this.getX();
                }
                this.private_chat_mc.visible = true;
                this.chat_hidden_mc.addChild(this.private_chat_mc);
                this.override_enter_handler = this.chatEnterHandler;
                this.private_chat_mc.cin_txt.setFocus();
            }
            return;
        }// end function

        public function restoreChat(param1:int, param2:Boolean = true)
        {
            var _loc_3:Object = null;
            if (param1 >= 0)
            {
                _loc_3 = this.private_chat_mc.user_mc.getItemAt(param1);
                if (_loc_3.new_msg)
                {
                    _loc_3.new_msg = false;
                    this.private_chat_mc.updateListColors();
                    var _loc_4:String = this;
                    var _loc_5:* = this.num_new_msgs - 1;
                    _loc_4.num_new_msgs = _loc_5;
                    if (this.num_new_msgs == 0)
                    {
                        this.private_btn.stopAnimation();
                    }
                    this.removeTitle(_loc_3.data);
                }
                this.private_chat_mc.setChat(_loc_3.cout_txt, _loc_3.cin_txt);
                this.updatePrivateChatLock();
                if (param2 && this.private_chat_mc.visible)
                {
                    _loc_3.cin_txt.setFocus();
                }
                this.private_chat_mc.fixChat();
            }
            this.private_chat_mc.user_mc.selectedIndex = param1;
            this.private_chat_prev_idx = param1;
            return;
        }// end function

        public function removeCurrentPrivateE(event:MouseEvent)
        {
            var _loc_3:int = 0;
            var _loc_2:* = this.private_chat_mc.user_mc.selectedIndex;
            if (_loc_2 >= 0)
            {
                this.private_chat_mc.user_mc.dataProvider.removeItemAt(_loc_2);
                if (_loc_2 > 0)
                {
                    _loc_3 = _loc_2 - 1;
                }
                else if (this.private_chat_mc.user_mc.length == 0)
                {
                    _loc_3 = -1;
                }
                else
                {
                    _loc_3 = 0;
                }
                this.restoreChat(_loc_3);
            }
            if (this.private_chat_mc.user_mc.length == 0)
            {
                this.togglePrivateE(event);
            }
            return;
        }// end function

        public function changePrivateE(event:Event)
        {
            this.restoreChat(this.private_chat_mc.user_mc.selectedIndex);
            return;
        }// end function

        public function changePrivateKeypressE(event:KeyboardEvent)
        {
            var _loc_2:* = this.private_chat_mc.user_mc.selectedIndex;
            if (_loc_2 != this.private_chat_prev_idx)
            {
                this.restoreChat(_loc_2, false);
            }
            return;
        }// end function

        public function privateChatPrint(param1:String, param2:String, param3:String, param4:int)
        {
            var _loc_10:String = null;
            var _loc_5:* = param1 == this.username ? (param2) : (param1);
            var _loc_6:* = this.private_chat_mc.user_mc.length;
            var _loc_7:* = this.private_chat_mc.startPrivateChat(_loc_5, this.admin);
            if (_loc_6 == 0)
            {
                this.restoreChat(_loc_7);
            }
            else
            {
                this.private_chat_mc.fixChat();
            }
            switch(param4)
            {
                case 0:
                {
                    _loc_10 = param1 == this.username ? ("#FF0000") : ("#0000FF");
                    break;
                }
                case 1:
                {
                    _loc_10 = "#009900";
                    break;
                }
                case 2:
                {
                    _loc_10 = "#707070";
                    break;
                }
                case 3:
                {
                    _loc_10 = "#CC9900";
                    break;
                }
                case 4:
                {
                    _loc_10 = "#CC9900";
                    break;
                }
                default:
                {
                    break;
                }
            }
            var _loc_8:* = StringUtils.escapeAndColorSender(param1, _loc_10) + StringUtils.escapeHtmlWithLinks(param3);
            var _loc_9:* = this.private_chat_mc.privateChatWriteLine(_loc_7, _loc_8);
            if (_loc_7 != this.private_chat_mc.user_mc.selectedIndex || !this.private_chat_mc.visible)
            {
                if (!_loc_9.new_msg)
                {
                    _loc_9.new_msg = true;
                    this.private_chat_mc.updateListColors();
                    var _loc_11:String = this;
                    var _loc_12:* = this.num_new_msgs + 1;
                    _loc_11.num_new_msgs = _loc_12;
                    if (this.num_new_msgs == 1)
                    {
                        this.private_btn.startAnimation();
                    }
                }
                this.addTitle(_loc_9.data);
            }
            if (param1 == this.username)
            {
                new ChatOutbound().play();
            }
            else
            {
                new ChatInbound().play();
            }
            return;
        }// end function

        public function privateSendMessage()
        {
            if (this.chat_lock || this.private_chat_mc.cin_txt.text == "")
            {
                return;
            }
            this.Send(["Private message", this.private_chat_mc.user_mc.selectedItem.data, this.private_chat_mc.cin_txt.text]);
            this.private_chat_mc.cin_txt.text = "";
            this.chatLock();
            return;
        }// end function

        public function toggleWatchE(event:MouseEvent)
        {
            if (this.watch_chat_mc.visible)
            {
                this.watch_chat_mc.visible = false;
            }
            else
            {
                if (!this.watch_chat_mc.remember_position)
                {
                    this.watch_chat_mc.x = this.getX();
                }
                this.watch_chat_mc.visible = true;
                this.chat_hidden_mc.addChild(this.watch_chat_mc);
                this.watch_chat_mc.cin_txt.setFocus();
            }
            return;
        }// end function

        public function watchSendMessage()
        {
            if (this.chat_lock || this.watch_chat_mc.cin_txt.text == "")
            {
                return;
            }
            this.Send(["Watch message", this.watch_chat_mc.cin_txt.text]);
            this.watch_chat_mc.cin_txt.text = "";
            this.chatLock();
            return;
        }// end function

        public function chatLock()
        {
            if (this.admin)
            {
                return;
            }
            this.chat_lock = true;
            var _loc_1:* = new TextFormat();
            _loc_1.font = Constants.COMPONENT_FONT;
            _loc_1.size = Constants.COMPONENT_SIZE;
            _loc_1.color = 10066329;
            this.public_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            if (this.private_chat_mc.cin_txt != null)
            {
                this.private_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            }
            if (this.watch_chat_mc != null)
            {
                this.watch_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            }
            return;
        }// end function

        public function updatePrivateChatLock()
        {
            this.private_chat_mc.cin_txt.drawNow();
            var _loc_1:* = new TextFormat();
            _loc_1.font = Constants.COMPONENT_FONT;
            _loc_1.size = Constants.COMPONENT_SIZE;
            _loc_1.color = this.chat_lock ? (10066329) : (0);
            this.private_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            return;
        }// end function

        public function updateWatchChatLock()
        {
            var _loc_1:TextFormat = null;
            if (this.chat_lock)
            {
                this.watch_chat_mc.cin_txt.drawNow();
                _loc_1 = new TextFormat();
                _loc_1.font = Constants.COMPONENT_FONT;
                _loc_1.size = Constants.COMPONENT_SIZE;
                _loc_1.color = 10066329;
                this.watch_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            }
            return;
        }// end function

        public function chatUnlock()
        {
            this.chat_lock = false;
            var _loc_1:* = new TextFormat();
            _loc_1.font = Constants.COMPONENT_FONT;
            _loc_1.size = Constants.COMPONENT_SIZE;
            _loc_1.color = 0;
            this.public_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            if (this.private_chat_mc.cin_txt != null)
            {
                this.private_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            }
            if (this.watch_chat_mc != null)
            {
                this.watch_chat_mc.cin_txt.setStyle("textFormat", _loc_1);
            }
            return;
        }// end function

        public function setNextTitle(event:TimerEvent = null)
        {
            this.setTitle(this.nextTitle());
            return;
        }// end function

        public function addTitle(param1:String)
        {
            if (this.title_usernames[param1] != null)
            {
                return;
            }
            var _loc_2:Array = [this.tuser_end, null];
            this.title_usernames[param1] = _loc_2;
            var _loc_3:* = this.tuser_start == null;
            if (_loc_3)
            {
                this.tuser_start = param1;
            }
            else
            {
                this.title_usernames[this.tuser_end][1] = param1;
            }
            this.tuser_end = param1;
            if (_loc_3)
            {
                this.tuser_current = null;
                this.setNextTitle();
                this.title_timer.reset();
                this.title_timer.start();
            }
            return;
        }// end function

        public function removeTitle(param1:String)
        {
            var _loc_2:* = this.title_usernames[param1];
            if (_loc_2 == null)
            {
                return;
            }
            delete this.title_usernames[param1];
            var _loc_3:* = _loc_2[0];
            var _loc_4:* = _loc_2[1];
            if (_loc_3 == null)
            {
                this.tuser_start = _loc_4;
            }
            else
            {
                this.title_usernames[_loc_3][1] = _loc_4;
            }
            if (_loc_4 == null)
            {
                this.tuser_end = _loc_3;
            }
            else
            {
                this.title_usernames[_loc_4][0] = _loc_3;
            }
            var _loc_5:* = _loc_3 == null && _loc_4 == null;
            if (this.tuser_current == param1)
            {
                this.tuser_current = _loc_3;
                this.setNextTitle();
                if (!_loc_5)
                {
                    this.title_timer.reset();
                    this.title_timer.start();
                }
            }
            if (_loc_5)
            {
                this.title_timer.stop();
            }
            return;
        }// end function

        public function nextTitle() : String
        {
            if (this.tuser_current == null)
            {
                this.tuser_current = this.tuser_start;
            }
            else
            {
                this.tuser_current = this.title_usernames[this.tuser_current][1];
            }
            if (this.tuser_current == null)
            {
                return "Dueling Network";
            }
            return this.tuser_current + " says...";
        }// end function

        public function setTitle(param1:String)
        {
            try
            {
                ExternalInterface.call("setTitle", param1);
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        public function clearChatE(event:Event)
        {
            this.setTitle("Dueling Network");
            this.title_timer.reset();
            this.override_enter_handler = null;
            return;
        }// end function

        public function showOnlineTooltipE(event:MouseEvent)
        {
            if (this.online_users_tooltip_mc != null)
            {
                this.online_users_tooltip_mc.visible = true;
            }
            return;
        }// end function

        public function hideOnlineTooltipE(event:MouseEvent)
        {
            if (this.online_users_tooltip_mc != null)
            {
                this.online_users_tooltip_mc.visible = false;
            }
            return;
        }// end function

        public function showCallTooltipE(event:MouseEvent)
        {
            if (this.call_tooltip_mc != null)
            {
                this.call_tooltip_mc.visible = true;
            }
            return;
        }// end function

        public function hideCallTooltipE(event:MouseEvent)
        {
            if (this.call_tooltip_mc != null)
            {
                this.call_tooltip_mc.visible = false;
            }
            return;
        }// end function

        public function showWatchTooltipE(event:MouseEvent)
        {
            if (this.watch_chat_tooltip_mc != null)
            {
                this.watch_chat_tooltip_mc.visible = true;
            }
            return;
        }// end function

        public function hideWatchTooltipE(event:MouseEvent)
        {
            if (this.watch_chat_tooltip_mc != null)
            {
                this.watch_chat_tooltip_mc.visible = false;
            }
            return;
        }// end function

        public function showPublicTooltipE(event:MouseEvent)
        {
            if (this.public_chat_tooltip_mc != null)
            {
                this.public_chat_tooltip_mc.visible = true;
            }
            return;
        }// end function

        public function hidePublicTooltipE(event:MouseEvent)
        {
            if (this.public_chat_tooltip_mc != null)
            {
                this.public_chat_tooltip_mc.visible = false;
            }
            return;
        }// end function

        public function showPrivateTooltipE(event:MouseEvent)
        {
            if (this.private_chat_tooltip_mc != null)
            {
                this.private_chat_tooltip_mc.visible = true;
            }
            return;
        }// end function

        public function hidePrivateTooltipE(event:MouseEvent)
        {
            if (this.private_chat_tooltip_mc != null)
            {
                this.private_chat_tooltip_mc.visible = false;
            }
            return;
        }// end function

        public function moveChatWindowToFrontE(event:MouseEvent)
        {
            var _loc_2:* = DisplayObject(event.currentTarget);
            this.chat_hidden_mc.addChild(_loc_2);
            return;
        }// end function

        public function initMain()
        {
            var leaderboardClickE:Function;
            leaderboardClickE = function (event:MouseEvent)
            {
                var _loc_2:Array = null;
                var _loc_3:String = null;
                var _loc_4:String = null;
                if (event.currentTarget.tat)
                {
                    _loc_2 = tat_leaderboard.getLink(event.target.name);
                    _loc_3 = _loc_2[0];
                    _loc_4 = _loc_2[1];
                }
                else
                {
                    _loc_3 = "CoretcgLeaderboard";
                    _loc_4 = "http://www.coretcg.com/";
                }
                navigateToURL(new URLRequest(_loc_4), "_blank");
                trackEvent("Ad", "Click", _loc_3);
                return;
            }// end function
            ;
            stage.focus = null;
            this.track("main_menu");
            this.leaderboard_mc.tat = this.tat_leaderboard.hasAd() && Math.random() <= 0.25;
            this.leaderboard_mc.showAd(this.leaderboard_mc.tat ? (this.tat_leaderboard.getAd()) : (new CoretcgLeaderboard()));
            this.leaderboard_mc.addEventListener(MouseEvent.CLICK, leaderboardClickE);
            this.enter_handler = null;
            this.incoming_handler = null;
            this.room_btn.addEventListener(MouseEvent.CLICK, this.roomE);
            this.deck_btn.addEventListener(MouseEvent.CLICK, this.deckE);
            this.rankings_btn.addEventListener(MouseEvent.CLICK, this.rankingsE);
            this.profile_btn.addEventListener(MouseEvent.CLICK, this.profileE);
            this.my_profile_btn.addEventListener(MouseEvent.CLICK, this.myProfileE);
            this.password_btn.addEventListener(MouseEvent.CLICK, this.passwordE);
            if (this.admin)
            {
                this.admin_btn.addEventListener(MouseEvent.CLICK, this.adminE);
            }
            else
            {
                this.main_exit_btn.x = 354.5;
                this.admin_btn.visible = false;
            }
            this.main_exit_btn.addEventListener(MouseEvent.CLICK, this.mainExitE);
            return;
        }// end function

        public function roomE(event:MouseEvent = null)
        {
            gotoAndStop("room_start");
            return;
        }// end function

        public function deckE(event:MouseEvent)
        {
            gotoAndStop("deck_start");
            return;
        }// end function

        public function rankingsE(event:MouseEvent)
        {
            gotoAndStop("rankings_start");
            return;
        }// end function

        public function profileE(event:MouseEvent)
        {
            gotoAndStop("profile_start");
            return;
        }// end function

        public function myProfileE(event:MouseEvent)
        {
            gotoAndStop("my_profile_start");
            return;
        }// end function

        public function passwordE(event:MouseEvent)
        {
            gotoAndStop("password_start");
            return;
        }// end function

        public function adminE(event:MouseEvent)
        {
            gotoAndStop("admin_start");
            return;
        }// end function

        public function mainExitE(event:MouseEvent)
        {
            this.Close();
            gotoAndPlay("start");
            return;
        }// end function

        public function returnToMainE(event:Event = null)
        {
            this.unlock(false);
            gotoAndStop("main_return");
            return;
        }// end function

        public function bannerClickE(event:MouseEvent)
        {
            var _loc_2:Array = null;
            var _loc_3:String = null;
            var _loc_4:String = null;
            if (event.currentTarget.tat)
            {
                _loc_2 = this.tat_banner.getLink(event.target.name);
                _loc_3 = _loc_2[0];
                _loc_4 = _loc_2[1];
            }
            else
            {
                _loc_3 = "CoretcgBanner";
                _loc_4 = "http://www.coretcg.com/";
            }
            navigateToURL(new URLRequest(_loc_4), "_blank");
            this.trackEvent("Ad", "Click", _loc_3);
            return;
        }// end function

        public function roomEnterHandler()
        {
            switch(stage.focus)
            {
                case this.host_mc.ar_rb:
                case this.host_mc.au_rb:
                case this.host_mc.tu_rb:
                case this.host_mc.host_btn:
                case this.host_mc.duel_note_txt.textField:
                case this.host_mc.duel_password_txt.textField:
                case this.host_mc.watching_cb:
                case this.host_mc.watch_note_txt.textField:
                case this.host_mc.watch_password_txt.textField:
                {
                    this.hostDuelE();
                    break;
                }
                case this.joining_mc.leave_btn:
                {
                    this.leaveDuelE();
                    break;
                }
                case this.hosting_mc.accept_btn:
                {
                    this.acceptJoinerE();
                    break;
                }
                case this.hosting_mc.reject_btn:
                {
                    this.rejectJoinerE();
                    break;
                }
                case this.hosting_mc.cancel_btn:
                {
                    this.cancelDuelE();
                    break;
                }
                case this.default_btn:
                {
                    this.setDefaultDeckE();
                    break;
                }
                case this.room_exit_btn:
                {
                    this.returnToMainE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function roomIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 == null)
            {
                if (!this.room_init)
                {
                    this.returnToMainE();
                }
            }
            else
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                if (!this.room_init)
                {
                    if (_loc_2 == "Load duel room")
                    {
                        this.duelRoomResponse(_loc_3);
                        this.room_init = true;
                    }
                }
                else
                {
                    switch(_loc_2)
                    {
                        case "Add duels":
                        {
                            if (this.duel_rb.selected)
                            {
                                this.addJoins(_loc_3);
                            }
                            break;
                        }
                        case "Remove duels":
                        {
                            if (this.duel_rb.selected)
                            {
                                this.removeJoins(_loc_3);
                            }
                            break;
                        }
                        case "Add watches":
                        {
                            if (this.watch_rb.selected)
                            {
                                this.addJoins(_loc_3);
                            }
                            break;
                        }
                        case "Remove watches":
                        {
                            if (this.watch_rb.selected)
                            {
                                this.removeJoins(_loc_3);
                            }
                            break;
                        }
                        case "Host duel":
                        {
                            this.hostDuelResponse(_loc_3);
                            break;
                        }
                        case "Add joiner":
                        {
                            this.hosting_mc.addJoiner(_loc_3[0], _loc_3[1]);
                            break;
                        }
                        case "Remove joiner":
                        {
                            this.hosting_mc.removeJoiner(_loc_3[0]);
                            break;
                        }
                        case "Join duel":
                        {
                            this.joinDuelResponse(_loc_3);
                            break;
                        }
                        case "Leave duel":
                        {
                            this.leaveDuel();
                            if (_loc_3.length == 1)
                            {
                                this.displayError(_loc_3[0]);
                            }
                            else if (_loc_3.length >= 2)
                            {
                                this.alternateOffer(_loc_3[0], _loc_3[1]);
                            }
                            break;
                        }
                        case "Accept joiner":
                        {
                            if (this.hosting_mc.visible)
                            {
                                this.acceptJoinerResponse(_loc_3);
                            }
                            break;
                        }
                        case "Rock-paper-scissors":
                        {
                            if (!this.hosting_mc.visible && !this.joining_mc.visible)
                            {
                                break;
                            }
                            this.Send(["Unsubscribe"]);
                            this.gotoDuel("Rock-paper-scissors", true, this.entering_rated_duel, _loc_3);
                            break;
                        }
                        case "Set default deck":
                        {
                            this.setDefaultDeckResponse(_loc_3);
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
                }
            }
            return;
        }// end function

        public function strToScrollPane(param1:String) : ScrollPane
        {
            switch(param1)
            {
                case "ar":
                {
                    return this.ar_sp;
                }
                case "au":
                {
                    return this.au_sp;
                }
                case "tu":
                {
                    return this.trad_mc.tu_sp;
                }
                case "uu":
                {
                    return this.unl_mc.uu_sp;
                }
                default:
                {
                    return null;
                    break;
                }
            }
        }// end function

        public function addJoins(param1:Array)
        {
            var _loc_4:ScrollPane = null;
            var _loc_5:JoinList = null;
            var _loc_2:* = new Object();
            var _loc_3:* = 0;
            while (_loc_3 < param1.length)
            {
                
                _loc_4 = this.strToScrollPane(param1[_loc_3]);
                _loc_2[param1[_loc_3]] = true;
                if (_loc_4 != null)
                {
                    _loc_5 = JoinList(_loc_4.source);
                    _loc_5.addJoin(param1[(_loc_3 + 1)], param1[_loc_3 + 2], param1[_loc_3 + 3], param1[_loc_3 + 4], param1[_loc_3 + 5], param1[_loc_3 + 6], param1[_loc_3 + 7]);
                }
                _loc_3 = _loc_3 + 8;
            }
            if (param1.length > 8)
            {
                this.setFilterE();
            }
            if (_loc_2["ar"] != undefined)
            {
                this.ar_sp.update();
            }
            if (_loc_2["au"] != undefined)
            {
                this.au_sp.update();
            }
            if (_loc_2["tu"] != undefined)
            {
                this.trad_mc.tu_sp.update();
            }
            if (_loc_2["uu"] != undefined)
            {
                this.unl_mc.uu_sp.update();
            }
            if (this.enable_dueling)
            {
                this.duel_rb.enabled = true;
            }
            this.watch_rb.enabled = true;
            return;
        }// end function

        public function removeJoins(param1:Array)
        {
            var _loc_4:ScrollPane = null;
            var _loc_5:JoinList = null;
            var _loc_2:* = new Object();
            var _loc_3:* = 0;
            while (_loc_3 < param1.length)
            {
                
                _loc_4 = this.strToScrollPane(param1[_loc_3]);
                _loc_2[param1[_loc_3]] = true;
                if (_loc_4 != null)
                {
                    _loc_5 = JoinList(_loc_4.source);
                    _loc_5.removeJoin(param1[(_loc_3 + 1)], param1[_loc_3 + 2]);
                }
                _loc_3 = _loc_3 + 3;
            }
            if (_loc_2["ar"] != undefined)
            {
                this.ar_sp.update();
            }
            if (_loc_2["au"] != undefined)
            {
                this.au_sp.update();
            }
            if (_loc_2["tu"] != undefined)
            {
                this.trad_mc.tu_sp.update();
            }
            if (_loc_2["uu"] != undefined)
            {
                this.unl_mc.uu_sp.update();
            }
            return;
        }// end function

        public function roomExitE(event:MouseEvent)
        {
            this.Send(["Exit duel room"]);
            this.returnToMainE(event);
            return;
        }// end function

        public function duelRoom()
        {
            this.Send(["Load duel room"]);
            this.lock();
            return;
        }// end function

        public function duelRoomResponse(param1:Array)
        {
            var _loc_2:int = 0;
            var _loc_3:* = undefined;
            var _loc_4:String = null;
            var _loc_5:String = null;
            var _loc_6:Object = null;
            this.unlock();
            this.filter_username_txt.setFocus();
            if (param1.length > 1)
            {
                this.duel_rb.selected = true;
                this.enable_dueling = true;
                _loc_2 = param1[0];
                _loc_3 = 1;
                while (_loc_3 < param1.length)
                {
                    
                    _loc_4 = param1[_loc_3];
                    _loc_5 = param1[(_loc_3 + 1)];
                    _loc_6 = {label:_loc_4, data:_loc_4, advanced:_loc_5};
                    this.decklist_cb.addItem(_loc_6);
                    _loc_3 = _loc_3 + 2;
                }
                this.decklist_cb.selectedIndex = _loc_2;
                this.updateDropdownFont();
                this.updateAdvancedE();
            }
            else
            {
                this.decklist_cb.enabled = false;
                this.watch_rb.selected = true;
                this.host_mc.host_btn.enabled = false;
                this.host_mc.ar_rb.enabled = false;
                this.host_mc.au_rb.enabled = false;
                this.host_mc.tu_rb.enabled = false;
                this.host_mc.uu_rb.enabled = false;
                this.host_mc.duel_note_txt.enabled = false;
                this.host_mc.duel_password_txt.enabled = false;
                this.host_mc.watching_cb.enabled = false;
                this.host_mc.watch_note_txt.enabled = false;
                this.host_mc.watch_password_txt.enabled = false;
                this.host_mc.match_type_cb.enabled = false;
                this.default_btn.enabled = false;
            }
            return;
        }// end function

        public function updateDropdownFont(event:Event = null)
        {
            var _loc_5:Object = null;
            var _loc_6:CellRenderer = null;
            var _loc_7:TextFormat = null;
            this.decklist_cb.drawNow();
            var _loc_2:* = this.decklist_cb.dropdown;
            _loc_2.drawNow();
            var _loc_3:* = _loc_2.verticalScrollPosition / 20;
            var _loc_4:* = _loc_3 + _loc_2.rowCount + 1;
            if (_loc_3 + _loc_2.rowCount + 1 > _loc_2.length)
            {
                _loc_4 = _loc_2.length;
            }
            while (_loc_3 < _loc_4)
            {
                
                _loc_5 = _loc_2.getItemAt(_loc_3);
                _loc_6 = _loc_2.itemToCellRenderer(_loc_5) as CellRenderer;
                _loc_7 = new TextFormat();
                _loc_7.font = Constants.COMPONENT_FONT;
                _loc_7.size = Constants.COMPONENT_SIZE;
                switch(_loc_5.advanced)
                {
                    case "adv":
                    {
                        _loc_7.color = 32665;
                        break;
                    }
                    case "trad":
                    {
                        _loc_7.color = 16724838;
                        break;
                    }
                    case "unl":
                    {
                        _loc_7.color = 6710886;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_6.setStyle("textFormat", _loc_7);
                _loc_3++;
            }
            return;
        }// end function

        public function toggleModeE(event:Event)
        {
            if (!this.room_init)
            {
                return;
            }
            switch(this.decklist_cb.selectedItem.advanced)
            {
                case "unl":
                {
                }
                case "trad":
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (this.watch_rb.selected)
            {
                if (!(this.hosting_mc.visible || this.joining_mc.visible))
                {
                }
            }
            else
            {
            }
            this.ar_sp.source.clear();
            this.ar_sp.update();
            this.au_sp.source.clear();
            this.au_sp.update();
            this.trad_mc.tu_sp.source.clear();
            this.trad_mc.tu_sp.update();
            this.unl_mc.uu_sp.source.clear();
            this.unl_mc.uu_sp.update();
            this.duel_rb.enabled = false;
            this.watch_rb.enabled = false;
            return;
        }// end function

        public function removeModeListenerE(event:Event)
        {
            this.duelroom_rbg.removeEventListener(Event.CHANGE, this.toggleModeE);
            return;
        }// end function

        public function hostDuelE(event:MouseEvent = null)
        {
            if (this.host_mc.duel_note_txt.text == "")
            {
                this.hostDuel(true);
                return;
            }
            var _loc_2:* = "Do you confirm that your duel note contains none of the following?" + "\n- Lurking for girlfriends/boyfriends or other sexual purposes" + "\n- Spam or advertising (YouTube, selling/trading, academies, tournaments, \"hosting to stay on,\" \"PM me for...,\" etc.)";
            if (this.host_mc.ar_rb.selected)
            {
                _loc_2 = _loc_2 + "\n- Deck restrictions for opponent, other than format (TCG/OCG)";
            }
            this.getConfirmation("Duel Note Rules", _loc_2, this.hostDuel);
            return;
        }// end function

        public function hostDuel(param1:Boolean)
        {
            var _loc_2:Array = null;
            if (!param1)
            {
                return;
            }
            if (this.host_mc.watching_cb.selected)
            {
                _loc_2 = new Array(8);
                _loc_2[6] = this.host_mc.watch_note_txt.text;
                _loc_2[7] = this.host_mc.watch_password_txt.text;
            }
            else
            {
                _loc_2 = new Array(6);
            }
            _loc_2[0] = "Host duel";
            if (this.host_mc.ar_rb.selected)
            {
                _loc_2[1] = "ar";
            }
            else if (this.host_mc.au_rb.selected)
            {
                _loc_2[1] = "au";
            }
            else if (this.host_mc.tu_rb.selected)
            {
                _loc_2[1] = "tu";
            }
            else if (this.host_mc.uu_rb.selected)
            {
                _loc_2[1] = "uu";
            }
            else
            {
                this.displayError("Duel type not selected");
                return;
            }
            _loc_2[2] = this.host_mc.match_type_cb.selectedItem.data;
            _loc_2[3] = this.decklist_cb.selectedItem.data;
            _loc_2[4] = this.host_mc.duel_note_txt.text;
            _loc_2[5] = this.host_mc.duel_password_txt.text;
            this.Send(_loc_2);
            this.lock();
            return;
        }// end function

        public function hostDuelResponse(param1:Array)
        {
            this.unlock();
            this.entering_rated_duel = this.host_mc.ar_rb.selected;
            this.host_mc.visible = false;
            this.hosting_mc.visible = true;
            this.hosting_mc.initialize();
            this.decklist_cb.enabled = false;
            this.ar_sp.source.setEnabled(false);
            this.au_sp.source.setEnabled(false);
            this.trad_mc.tu_sp.source.setEnabled(false);
            this.unl_mc.uu_sp.source.setEnabled(false);
            return;
        }// end function

        public function cancelDuelE(event:MouseEvent = null)
        {
            this.Send(["Exit duel"]);
            this.host_mc.visible = true;
            this.hosting_mc.visible = false;
            this.hosting_mc.free();
            this.decklist_cb.enabled = true;
            if (this.watch_rb.selected)
            {
                this.ar_sp.source.setEnabled(true);
                this.au_sp.source.setEnabled(true);
                this.trad_mc.tu_sp.source.setEnabled(true);
            }
            else
            {
                switch(this.decklist_cb.selectedItem.advanced)
                {
                    case "adv":
                    {
                        this.ar_sp.source.setEnabled(true);
                        this.au_sp.source.setEnabled(true);
                    }
                    case "trad":
                    {
                        this.trad_mc.tu_sp.source.setEnabled(true);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            this.unl_mc.uu_sp.source.setEnabled(true);
            return;
        }// end function

        public function joinDuel(param1:String, param2:JoinButton)
        {
            var _loc_7:String = null;
            var _loc_3:* = param2.title;
            var _loc_4:* = param2.rand;
            var _loc_5:* = param2.password;
            var _loc_6:* = param2.note_txt.text;
            this.entering_rated_duel = false;
            switch(param1)
            {
                case "ar":
                {
                    _loc_7 = "Advanced Rated";
                    this.entering_rated_duel = true;
                    break;
                }
                case "au":
                {
                    _loc_7 = "Advanced Unrated";
                    break;
                }
                case "tu":
                {
                    _loc_7 = "Traditional Unrated";
                    break;
                }
                case "uu":
                {
                    _loc_7 = "Unlimited Unrated";
                    break;
                }
                default:
                {
                    _loc_7 = "Unknown";
                    break;
                    break;
                }
            }
            if (this.duel_rb.selected)
            {
                if (this.admin)
                {
                    this.getConfirmation("Ban User", "Are you sure you want to ban " + _loc_3 + " for 1 day?", this.performJoinDuelBan);
                    this.join_duel_ban = _loc_3;
                    this.join_duel_ban_note = "Duel Note (" + _loc_7 + "): " + _loc_6;
                }
                else
                {
                    this.join_arr = ["Join duel", param1, this.decklist_cb.selectedItem.data, _loc_3, _loc_4];
                    if (_loc_5)
                    {
                        this.getInput("Duel Password", "Enter duel password to join duel:", "", 0, this.performJoinDuel);
                    }
                    else
                    {
                        this.performJoinDuel(null, true);
                    }
                }
            }
            else if (this.watch_rb.selected)
            {
                this.join_arr = ["Watch duel", param1, _loc_3, _loc_4];
                if (!this.admin && _loc_5)
                {
                    this.getInput("Watch Password", "Enter watch password to watch duel:", "", 0, this.performJoinDuel);
                }
                else
                {
                    this.performJoinDuel(null, true);
                }
            }
            else
            {
                this.displayError("Duel mode not selected");
                return;
            }
            return;
        }// end function

        public function performJoinDuelBan(param1:Boolean)
        {
            if (param1)
            {
                this.Send(["Ban user", this.join_duel_ban, 1, true, this.join_duel_ban_note, true]);
            }
            this.join_duel_ban = null;
            this.join_duel_ban_note = null;
            return;
        }// end function

        public function performJoinDuel(param1:String, param2:Boolean = false)
        {
            if (param1 == null && !param2)
            {
                return;
            }
            if (param1 == "" && !param2)
            {
                this.displayError("Password not entered");
                return;
            }
            if (param2)
            {
                param1 = "";
            }
            this.join_arr.push(param1);
            this.Send(this.join_arr);
            this.join_arr = null;
            this.lock();
            return;
        }// end function

        public function joinDuelResponse(param1:Array)
        {
            this.unlock();
            this.host_bg_mc.visible = false;
            this.host_mc.visible = false;
            this.joining_mc.visible = true;
            this.decklist_cb.enabled = false;
            this.ar_sp.source.setEnabled(false);
            this.au_sp.source.setEnabled(false);
            this.trad_mc.tu_sp.source.setEnabled(false);
            this.unl_mc.uu_sp.source.setEnabled(false);
            return;
        }// end function

        public function leaveDuelE(event:MouseEvent = null)
        {
            this.Send(["Exit duel"]);
            this.leaveDuel();
            return;
        }// end function

        public function leaveDuel()
        {
            this.host_bg_mc.visible = true;
            this.host_mc.visible = true;
            this.joining_mc.visible = false;
            this.decklist_cb.enabled = true;
            if (this.watch_rb.selected)
            {
                this.ar_sp.source.setEnabled(true);
                this.au_sp.source.setEnabled(true);
                this.trad_mc.tu_sp.source.setEnabled(true);
            }
            else
            {
                switch(this.decklist_cb.selectedItem.advanced)
                {
                    case "adv":
                    {
                        this.ar_sp.source.setEnabled(true);
                        this.au_sp.source.setEnabled(true);
                    }
                    case "trad":
                    {
                        this.trad_mc.tu_sp.source.setEnabled(true);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            this.unl_mc.uu_sp.source.setEnabled(true);
            return;
        }// end function

        public function joinAdvancedRatedE(event:MouseEvent)
        {
            var _loc_2:* = JoinButton(event.target);
            this.joinDuel("ar", _loc_2);
            return;
        }// end function

        public function joinAdvancedUnratedE(event:MouseEvent)
        {
            var _loc_2:* = JoinButton(event.target);
            this.joinDuel("au", _loc_2);
            return;
        }// end function

        public function joinTraditionalUnratedE(event:MouseEvent)
        {
            var _loc_2:* = JoinButton(event.target);
            this.joinDuel("tu", _loc_2);
            return;
        }// end function

        public function joinUnlimitedUnratedE(event:MouseEvent)
        {
            var _loc_2:* = JoinButton(event.target);
            this.joinDuel("uu", _loc_2);
            return;
        }// end function

        public function updateAdvancedE(event:Event = null)
        {
            var _loc_2:* = this.duel_rb.selected;
            switch(this.decklist_cb.selectedItem.advanced)
            {
                case "adv":
                {
                    this.host_mc.ar_rb.enabled = true;
                    this.host_mc.au_rb.enabled = true;
                    this.host_mc.tu_rb.enabled = true;
                    this.ar_sp.source.setEnabled(true);
                    this.au_sp.source.setEnabled(true);
                    this.trad_mc.tu_sp.source.setEnabled(true);
                    break;
                }
                case "trad":
                {
                    if (!this.host_mc.uu_rb.selected)
                    {
                        this.host_mc.tu_rb.selected = true;
                    }
                    if (_loc_2)
                    {
                        this.host_mc.ar_rb.enabled = false;
                        this.host_mc.au_rb.enabled = false;
                        this.ar_sp.source.setEnabled(false);
                        this.au_sp.source.setEnabled(false);
                    }
                    this.host_mc.tu_rb.enabled = true;
                    this.trad_mc.tu_sp.source.setEnabled(true);
                    break;
                }
                case "unl":
                {
                    this.host_mc.uu_rb.selected = true;
                    if (_loc_2)
                    {
                        this.host_mc.ar_rb.enabled = false;
                        this.host_mc.au_rb.enabled = false;
                        this.host_mc.tu_rb.enabled = false;
                        this.ar_sp.source.setEnabled(false);
                        this.au_sp.source.setEnabled(false);
                        this.trad_mc.tu_sp.source.setEnabled(false);
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function joinListDoubleClickE(event:MouseEvent)
        {
            this.acceptJoinerE();
            return;
        }// end function

        public function joinListKeyboardHandlerE(event:KeyboardEvent)
        {
            if (event.keyCode == 13)
            {
                this.acceptJoinerE();
            }
            return;
        }// end function

        public function acceptJoinerE(event:MouseEvent = null)
        {
            if (this.hosting_mc.joinlist_mc.selectedIndex < 0)
            {
                return;
            }
            var _loc_2:* = this.hosting_mc.joinlist_mc.selectedItem;
            this.Send(["Accept joiner", _loc_2.data]);
            this.hosting_mc.lock();
            return;
        }// end function

        public function acceptJoinerResponse(param1:Array)
        {
            this.hosting_mc.unlock();
            this.displayError(param1[0]);
            return;
        }// end function

        public function rejectJoinerE(event:MouseEvent = null)
        {
            if (this.hosting_mc.joinlist_mc.selectedIndex < 0)
            {
                return;
            }
            var _loc_2:* = this.hosting_mc.joinlist_mc.selectedItem;
            this.Send(["Reject joiner", _loc_2.data]);
            return;
        }// end function

        public function alternateOffer(param1:String, param2:String)
        {
            this.alternate_join_offer = param2;
            this.getConfirmation("Join Duel", param1, this.performAlternateOffer);
            return;
        }// end function

        public function performAlternateOffer(param1:Boolean)
        {
            if (!param1)
            {
                return;
            }
            this.SendString(this.alternate_join_offer);
            this.alternate_join_offer = null;
            this.lock();
            return;
        }// end function

        public function setFilterE(event:Event = null)
        {
            var _loc_2:* = this.filter_username_txt.text;
            var _loc_3:* = this.rating_lower_txt.text;
            var _loc_4:* = _loc_3.length == 0 || _loc_3 == "-" || _loc_3.lastIndexOf("-") > 0 ? (int.MIN_VALUE) : (int(_loc_3));
            var _loc_5:* = this.rating_upper_txt.text;
            var _loc_6:* = this.rating_upper_txt.text.length == 0 || _loc_5 == "-" || _loc_5.lastIndexOf("-") > 0 ? (int.MAX_VALUE) : (int(_loc_5));
            var _loc_7:* = this.rep_lower_txt.text;
            var _loc_8:* = this.rep_lower_txt.text.length == 0 || _loc_7 == "-" || _loc_7.lastIndexOf("-") > 0 ? (int.MIN_VALUE) : (int(_loc_7));
            var _loc_9:* = this.rep_upper_txt.text;
            var _loc_10:* = this.rep_upper_txt.text.length == 0 || _loc_9 == "-" || _loc_9.lastIndexOf("-") > 0 ? (int.MAX_VALUE) : (int(_loc_9));
            var _loc_11:* = this.match_type_cb.selectedItem.data;
            JoinList(this.ar_sp.source).setFilter(_loc_2, _loc_4, _loc_6, _loc_8, _loc_10, _loc_11);
            this.ar_sp.update();
            JoinList(this.au_sp.source).setFilter(_loc_2, _loc_4, _loc_6, _loc_8, _loc_10, _loc_11);
            this.au_sp.update();
            JoinList(this.trad_mc.tu_sp.source).setFilter(_loc_2, _loc_4, _loc_6, _loc_8, _loc_10, _loc_11);
            this.trad_mc.tu_sp.update();
            JoinList(this.unl_mc.uu_sp.source).setFilter(_loc_2, _loc_4, _loc_6, _loc_8, _loc_10, _loc_11);
            this.unl_mc.uu_sp.update();
            return;
        }// end function

        public function showTradE(event:MouseEvent)
        {
            this.show_tu_btn.visible = false;
            this.show_uu_btn.visible = true;
            this.trad_mc.visible = true;
            this.unl_mc.visible = false;
            return;
        }// end function

        public function showUnlE(event:MouseEvent)
        {
            this.show_tu_btn.visible = true;
            this.show_uu_btn.visible = false;
            this.trad_mc.visible = false;
            this.unl_mc.visible = true;
            return;
        }// end function

        public function deckEnterHandler()
        {
            switch(stage.focus)
            {
                case this.name_txt.textField:
                case this.desc_txt.textField:
                case this.lvll_txt.textField:
                case this.lvlh_txt.textField:
                case this.atkl_txt.textField:
                case this.atkh_txt.textField:
                case this.defl_txt.textField:
                case this.defh_txt.textField:
                case this.search_btn:
                {
                    this.doSearch();
                    break;
                }
                case this.clear_btn:
                {
                    this.deckClearE();
                    break;
                }
                case this.new_btn:
                {
                    this.newDeckE();
                    break;
                }
                case this.rename_btn:
                {
                    this.renameDeckE();
                    break;
                }
                case this.delete_btn:
                {
                    this.deleteDeckE();
                    break;
                }
                case this.save_btn:
                {
                    this.saveDeck();
                    break;
                }
                case this.save_as_btn:
                {
                    this.saveDeckAs();
                    break;
                }
                case this.default_btn:
                {
                    this.setDefaultDeckE();
                    break;
                }
                case this.deck_exit_btn:
                {
                    this.deckExitE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function deckIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 == null)
            {
                if (!this.deck_init)
                {
                    this.returnToMainE();
                }
            }
            else
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                switch(_loc_2)
                {
                    case "Card search":
                    {
                        this.cardSearchResponse(_loc_3);
                        break;
                    }
                    case "Get deck data":
                    {
                        this.getDeckDataResponse(_loc_3);
                        this.deck_init = true;
                        break;
                    }
                    case "Get deck":
                    {
                        this.getDeckResponse(_loc_3);
                        break;
                    }
                    case "New deck":
                    {
                        this.newDeckResponse(_loc_3);
                        break;
                    }
                    case "Rename deck":
                    {
                        this.renameDeckResponse(_loc_3);
                        break;
                    }
                    case "Delete deck":
                    {
                        this.deleteDeckResponse(_loc_3);
                        break;
                    }
                    case "Save deck":
                    {
                        this.saveDeckResponse(_loc_3);
                        break;
                    }
                    case "Set default deck":
                    {
                        this.setDefaultDeckResponse(_loc_3);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return;
        }// end function

        public function noDecksDisable()
        {
            this.clear_btn.enabled = false;
            this.sort_btn.visible = false;
            this.decklist_cb.enabled = false;
            this.rename_btn.enabled = false;
            this.delete_btn.enabled = false;
            this.save_btn.enabled = false;
            this.save_as_btn.enabled = false;
            this.default_btn.enabled = false;
            return;
        }// end function

        public function noDecksEnable()
        {
            this.clear_btn.enabled = true;
            this.sort_btn.visible = true;
            this.decklist_cb.enabled = true;
            this.rename_btn.enabled = true;
            this.delete_btn.enabled = true;
            this.save_btn.enabled = true;
            this.save_as_btn.enabled = true;
            this.default_btn.enabled = true;
            return;
        }// end function

        public function initCards()
        {
            this.deck = new Array(60);
            this.deck[0] = this.deck1_mc;
            this.deck[1] = this.deck2_mc;
            this.deck[2] = this.deck3_mc;
            this.deck[3] = this.deck4_mc;
            this.deck[4] = this.deck5_mc;
            this.deck[5] = this.deck6_mc;
            this.deck[6] = this.deck7_mc;
            this.deck[7] = this.deck8_mc;
            this.deck[8] = this.deck9_mc;
            this.deck[9] = this.deck10_mc;
            this.deck[10] = this.deck11_mc;
            this.deck[11] = this.deck12_mc;
            this.deck[12] = this.deck13_mc;
            this.deck[13] = this.deck14_mc;
            this.deck[14] = this.deck15_mc;
            this.deck[15] = this.deck16_mc;
            this.deck[16] = this.deck17_mc;
            this.deck[17] = this.deck18_mc;
            this.deck[18] = this.deck19_mc;
            this.deck[19] = this.deck20_mc;
            this.deck[20] = this.deck21_mc;
            this.deck[21] = this.deck22_mc;
            this.deck[22] = this.deck23_mc;
            this.deck[23] = this.deck24_mc;
            this.deck[24] = this.deck25_mc;
            this.deck[25] = this.deck26_mc;
            this.deck[26] = this.deck27_mc;
            this.deck[27] = this.deck28_mc;
            this.deck[28] = this.deck29_mc;
            this.deck[29] = this.deck30_mc;
            this.deck[30] = this.deck31_mc;
            this.deck[31] = this.deck32_mc;
            this.deck[32] = this.deck33_mc;
            this.deck[33] = this.deck34_mc;
            this.deck[34] = this.deck35_mc;
            this.deck[35] = this.deck36_mc;
            this.deck[36] = this.deck37_mc;
            this.deck[37] = this.deck38_mc;
            this.deck[38] = this.deck39_mc;
            this.deck[39] = this.deck40_mc;
            this.deck[40] = this.deck41_mc;
            this.deck[41] = this.deck42_mc;
            this.deck[42] = this.deck43_mc;
            this.deck[43] = this.deck44_mc;
            this.deck[44] = this.deck45_mc;
            this.deck[45] = this.deck46_mc;
            this.deck[46] = this.deck47_mc;
            this.deck[47] = this.deck48_mc;
            this.deck[48] = this.deck49_mc;
            this.deck[49] = this.deck50_mc;
            this.deck[50] = this.deck51_mc;
            this.deck[51] = this.deck52_mc;
            this.deck[52] = this.deck53_mc;
            this.deck[53] = this.deck54_mc;
            this.deck[54] = this.deck55_mc;
            this.deck[55] = this.deck56_mc;
            this.deck[56] = this.deck57_mc;
            this.deck[57] = this.deck58_mc;
            this.deck[58] = this.deck59_mc;
            this.deck[59] = this.deck60_mc;
            var _loc_1:* = 0;
            while (_loc_1 < this.deck.length)
            {
                
                this.deck[_loc_1].visible = false;
                this.deck[_loc_1].tabEnabled = false;
                this.deck[_loc_1].buttonMode = true;
                DragManager.enableDragging(this.deck[_loc_1], this.pickUp, this.dropIt);
                this.deck[_loc_1].addEventListener(MouseEvent.MOUSE_OVER, this.preview_mc.previewE);
                this.deck[_loc_1].addEventListener(MouseEvent.MOUSE_OUT, this.preview_mc.previewStopE);
                _loc_1 = _loc_1 + 1;
            }
            this.deck_count = 0;
            this.side = new Array(15);
            this.side[0] = this.side1_mc;
            this.side[1] = this.side2_mc;
            this.side[2] = this.side3_mc;
            this.side[3] = this.side4_mc;
            this.side[4] = this.side5_mc;
            this.side[5] = this.side6_mc;
            this.side[6] = this.side7_mc;
            this.side[7] = this.side8_mc;
            this.side[8] = this.side9_mc;
            this.side[9] = this.side10_mc;
            this.side[10] = this.side11_mc;
            this.side[11] = this.side12_mc;
            this.side[12] = this.side13_mc;
            this.side[13] = this.side14_mc;
            this.side[14] = this.side15_mc;
            _loc_1 = 0;
            while (_loc_1 < this.side.length)
            {
                
                this.side[_loc_1].visible = false;
                this.side[_loc_1].buttonMode = true;
                DragManager.enableDragging(this.side[_loc_1], this.pickUp, this.dropIt);
                this.side[_loc_1].addEventListener(MouseEvent.MOUSE_OVER, this.preview_mc.previewE);
                this.side[_loc_1].addEventListener(MouseEvent.MOUSE_OUT, this.preview_mc.previewStopE);
                _loc_1 = _loc_1 + 1;
            }
            this.side_count = 0;
            this.extra = new Array(15);
            this.extra[0] = this.extra1_mc;
            this.extra[1] = this.extra2_mc;
            this.extra[2] = this.extra3_mc;
            this.extra[3] = this.extra4_mc;
            this.extra[4] = this.extra5_mc;
            this.extra[5] = this.extra6_mc;
            this.extra[6] = this.extra7_mc;
            this.extra[7] = this.extra8_mc;
            this.extra[8] = this.extra9_mc;
            this.extra[9] = this.extra10_mc;
            this.extra[10] = this.extra11_mc;
            this.extra[11] = this.extra12_mc;
            this.extra[12] = this.extra13_mc;
            this.extra[13] = this.extra14_mc;
            this.extra[14] = this.extra15_mc;
            _loc_1 = 0;
            while (_loc_1 < this.extra.length)
            {
                
                this.extra[_loc_1].visible = false;
                this.extra[_loc_1].buttonMode = true;
                DragManager.enableDragging(this.extra[_loc_1], this.pickUp, this.dropIt);
                this.extra[_loc_1].addEventListener(MouseEvent.MOUSE_OVER, this.preview_mc.previewE);
                this.extra[_loc_1].addEventListener(MouseEvent.MOUSE_OUT, this.preview_mc.previewStopE);
                _loc_1 = _loc_1 + 1;
            }
            this.extra_count = 0;
            this.search = new Array(20);
            this.search[0] = this.search1_mc;
            this.search[1] = this.search2_mc;
            this.search[2] = this.search3_mc;
            this.search[3] = this.search4_mc;
            this.search[4] = this.search5_mc;
            this.search[5] = this.search6_mc;
            this.search[6] = this.search7_mc;
            this.search[7] = this.search8_mc;
            this.search[8] = this.search9_mc;
            this.search[9] = this.search10_mc;
            this.search[10] = this.search11_mc;
            this.search[11] = this.search12_mc;
            this.search[12] = this.search13_mc;
            this.search[13] = this.search14_mc;
            this.search[14] = this.search15_mc;
            this.search[15] = this.search16_mc;
            this.search[16] = this.search17_mc;
            this.search[17] = this.search18_mc;
            this.search[18] = this.search19_mc;
            this.search[19] = this.search20_mc;
            _loc_1 = 0;
            while (_loc_1 < this.search.length)
            {
                
                this.search[_loc_1].visible = false;
                this.search[_loc_1].buttonMode = true;
                DragManager.enableDragging(this.search[_loc_1], this.pickUp, this.dropIt);
                this.search[_loc_1].addEventListener(MouseEvent.MOUSE_OVER, this.preview_mc.previewE);
                this.search[_loc_1].addEventListener(MouseEvent.MOUSE_OUT, this.preview_mc.previewStopE);
                _loc_1 = _loc_1 + 1;
            }
            this.deckInitSearchListeners();
            this.deckInitButtons();
            this.getDeckData();
            if (this.admin)
            {
                this.preview_mc.skip_hml = true;
            }
            return;
        }// end function

        public function removeCard(param1:Object)
        {
            var _loc_2:Array = null;
            var _loc_3:String = null;
            var _loc_4:* = undefined;
            var _loc_5:* = undefined;
            var _loc_6:DeckCard = null;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            if (param1 is DeckCard)
            {
                _loc_3 = param1.name;
                if (_loc_3.match(/deck""deck/))
                {
                    _loc_2 = this.deck;
                    var _loc_11:String = this;
                    var _loc_12:* = this.deck_count - 1;
                    _loc_11.deck_count = _loc_12;
                    this.decrementCardCounter(DeckCard(param1));
                }
                else if (_loc_3.match(/side""side/))
                {
                    _loc_2 = this.side;
                    var _loc_11:String = this;
                    var _loc_12:* = this.side_count - 1;
                    _loc_11.side_count = _loc_12;
                }
                else if (_loc_3.match(/extra""extra/))
                {
                    _loc_2 = this.extra;
                    var _loc_11:String = this;
                    var _loc_12:* = this.extra_count - 1;
                    _loc_11.extra_count = _loc_12;
                }
            }
            else
            {
                _loc_2 = null;
            }
            if (_loc_2 != null)
            {
                _loc_5 = 0;
                while (_loc_5 < _loc_2.length)
                {
                    
                    if (_loc_2[_loc_5] == param1)
                    {
                        _loc_4 = _loc_5;
                        break;
                    }
                    _loc_5 = _loc_5 + 1;
                }
                this.restoreX = _loc_2[(_loc_2.length - 1)].x;
                this.restoreY = _loc_2[(_loc_2.length - 1)].y;
                _loc_6 = _loc_2[_loc_4];
                _loc_7 = _loc_2[_loc_4].x;
                _loc_8 = _loc_2[_loc_4].y;
                _loc_5 = _loc_4 + 1;
                while (_loc_5 < _loc_2.length)
                {
                    
                    _loc_9 = _loc_7;
                    _loc_10 = _loc_8;
                    _loc_7 = _loc_2[_loc_5].x;
                    _loc_8 = _loc_2[_loc_5].y;
                    _loc_2[_loc_5].x = _loc_9;
                    _loc_2[_loc_5].y = _loc_10;
                    _loc_2[(_loc_5 - 1)] = _loc_2[_loc_5];
                    _loc_5 = _loc_5 + 1;
                }
                _loc_2[(_loc_2.length - 1)] = _loc_6;
            }
            else
            {
                this.restoreX = param1.x;
                this.restoreY = param1.y;
            }
            return;
        }// end function

        public function insertCard(param1:Array, param2:Front, param3:int, param4:int) : Front
        {
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_14:Number = NaN;
            var _loc_15:Number = NaN;
            var _loc_16:Number = NaN;
            var _loc_17:int = 0;
            var _loc_18:int = 0;
            switch(param1)
            {
                case this.deck:
                {
                    _loc_5 = this.deck_count;
                    break;
                }
                case this.side:
                {
                    _loc_5 = this.side_count;
                    break;
                }
                case this.extra:
                {
                    _loc_5 = this.extra_count;
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (_loc_5 == param1.length)
            {
                return null;
            }
            var _loc_7:* = Number.MAX_VALUE;
            var _loc_8:* = 0;
            while (_loc_8 < param1.length)
            {
                
                _loc_14 = param3 - param1[_loc_8].x;
                _loc_15 = param4 - param1[_loc_8].y;
                _loc_16 = _loc_14 * _loc_14 + _loc_15 * _loc_15;
                if (_loc_16 < _loc_7)
                {
                    _loc_6 = _loc_8;
                    _loc_7 = _loc_16;
                }
                _loc_8 = _loc_8 + 1;
            }
            if (_loc_6 > _loc_5)
            {
                _loc_6 = _loc_5;
            }
            var _loc_9:* = param1[(param1.length - 1)];
            var _loc_10:* = param1[(param1.length - 1)].x;
            var _loc_11:* = param1[(param1.length - 1)].y;
            _loc_8 = param1.length - 2;
            while (_loc_8 >= _loc_6)
            {
                
                _loc_17 = _loc_10;
                _loc_18 = _loc_11;
                _loc_10 = param1[_loc_8].x;
                _loc_11 = param1[_loc_8].y;
                param1[_loc_8].x = _loc_17;
                param1[_loc_8].y = _loc_18;
                param1[(_loc_8 + 1)] = param1[_loc_8];
                _loc_8 = _loc_8 - 1;
            }
            _loc_9.x = _loc_10;
            _loc_9.y = _loc_11;
            param1[_loc_6] = _loc_9;
            var _loc_12:* = _loc_9;
            var _loc_13:* = _loc_9.swapFront(param2);
            _loc_12.visible = true;
            switch(param1)
            {
                case this.deck:
                {
                    var _loc_19:String = this;
                    var _loc_20:* = this.deck_count + 1;
                    _loc_19.deck_count = _loc_20;
                    this.incrementCardCounter(_loc_12);
                    break;
                }
                case this.side:
                {
                    var _loc_19:String = this;
                    var _loc_20:* = this.side_count + 1;
                    _loc_19.side_count = _loc_20;
                    break;
                }
                case this.extra:
                {
                    var _loc_19:String = this;
                    var _loc_20:* = this.extra_count + 1;
                    _loc_19.extra_count = _loc_20;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return _loc_13;
        }// end function

        public function deckInitSearchListeners()
        {
            this.card_cb.addEventListener(Event.CHANGE, this.cardChangeE);
            this.search_btn.addEventListener(MouseEvent.CLICK, this.doSearchE);
            this.search_btn.useHandCursor = true;
            this.prev_btn.enabled = false;
            this.next_btn.enabled = false;
            this.prev_btn.addEventListener(MouseEvent.CLICK, this.prevE);
            this.next_btn.addEventListener(MouseEvent.CLICK, this.nextE);
            return;
        }// end function

        public function cardChangeE(event:Event)
        {
            var _loc_2:DataProvider = null;
            switch(this.card_cb.selectedItem.label)
            {
                case "":
                {
                    this.card2_cb.selectedIndex = 0;
                    this.card2_cb.enabled = false;
                    this.type_cb.selectedIndex = 0;
                    this.type_cb.enabled = false;
                    this.type2_cb.selectedIndex = 0;
                    this.type2_cb.enabled = false;
                    this.attrib_cb.selectedIndex = 0;
                    this.attrib_cb.enabled = false;
                    this.lvll_txt.text = "";
                    this.lvll_txt.enabled = false;
                    this.lvlh_txt.text = "";
                    this.lvlh_txt.enabled = false;
                    this.atkl_txt.text = "";
                    this.atkl_txt.enabled = false;
                    this.atkh_txt.text = "";
                    this.atkh_txt.enabled = false;
                    this.defl_txt.text = "";
                    this.defl_txt.enabled = false;
                    this.defh_txt.text = "";
                    this.defh_txt.enabled = false;
                    break;
                }
                case "Monster":
                {
                    this.card2_cb.selectedIndex = 0;
                    this.card2_cb.enabled = true;
                    _loc_2 = new DataProvider();
                    this.type_cb.dataProvider = new DataProvider([{label:"", data:""}, {label:"Aqua", data:"Aqua"}, {label:"Beast", data:"Beast"}, {label:"Beast-Warrior", data:"Beast-Warrior"}, {label:"Dinosaur", data:"Dinosaur"}, {label:"Divine-Beast", data:"Divine-Beast"}, {label:"Dragon", data:"Dragon"}, {label:"Fairy", data:"Fairy"}, {label:"Fiend", data:"Fiend"}, {label:"Fish", data:"Fish"}, {label:"Insect", data:"Insect"}, {label:"Machine", data:"Machine"}, {label:"Plant", data:"Plant"}, {label:"Psychic", data:"Psychic"}, {label:"Pyro", data:"Pyro"}, {label:"Reptile", data:"Reptile"}, {label:"Rock", data:"Rock"}, {label:"Sea Serpent", data:"Sea Serpent"}, {label:"Spellcaster", data:"Spellcaster"}, {label:"Thunder", data:"Thunder"}, {label:"Warrior", data:"Warrior"}, {label:"Winged Beast", data:"Winged Beast"}, {label:"Zombie", data:"Zombie"}]);
                    this.type_cb.selectedIndex = 0;
                    this.type_cb.enabled = true;
                    this.type2_cb.selectedIndex = 0;
                    this.type2_cb.enabled = true;
                    this.attrib_cb.selectedIndex = 0;
                    this.attrib_cb.enabled = true;
                    this.lvll_txt.enabled = true;
                    this.lvlh_txt.enabled = true;
                    this.atkl_txt.enabled = true;
                    this.atkh_txt.enabled = true;
                    this.defl_txt.enabled = true;
                    this.defh_txt.enabled = true;
                    break;
                }
                case "Spell":
                {
                    this.type_cb.dataProvider = new DataProvider([{label:"", data:""}, {label:"Normal", data:"normal"}, {label:"Continuous", data:"continuous"}, {label:"Equip", data:"equip"}, {label:"Quick-Play", data:"quickplay"}, {label:"Field", data:"field"}, {label:"Ritual", data:"ritual"}]);
                    this.stEnable();
                    break;
                }
                case "Trap":
                {
                    this.type_cb.dataProvider = new DataProvider([{label:"", data:""}, {label:"Normal", data:"normal"}, {label:"Continuous", data:"continuous"}, {label:"Counter", data:"counter"}]);
                    this.stEnable();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function stEnable()
        {
            this.card2_cb.selectedIndex = 0;
            this.card2_cb.enabled = false;
            this.type_cb.selectedIndex = 0;
            this.type_cb.enabled = true;
            this.type2_cb.selectedIndex = 0;
            this.type2_cb.enabled = false;
            this.attrib_cb.selectedIndex = 0;
            this.attrib_cb.enabled = false;
            this.lvll_txt.text = "";
            this.lvll_txt.enabled = false;
            this.lvlh_txt.text = "";
            this.lvlh_txt.enabled = false;
            this.atkl_txt.text = "";
            this.atkl_txt.enabled = false;
            this.atkh_txt.text = "";
            this.atkh_txt.enabled = false;
            this.defl_txt.text = "";
            this.defl_txt.enabled = false;
            this.defh_txt.text = "";
            this.defh_txt.enabled = false;
            return;
        }// end function

        public function prevE(event:Event)
        {
            var _loc_2:int = 0;
            if (this.prev_btn.enabled)
            {
                _loc_2 = int(this.page_txt.text) - 1;
                this.doSearch(_loc_2, true);
            }
            return;
        }// end function

        public function nextE(event:Event)
        {
            var _loc_2:int = 0;
            if (this.next_btn.enabled)
            {
                _loc_2 = int(this.page_txt.text) + 1;
                this.doSearch(_loc_2, true);
            }
            return;
        }// end function

        public function doSearchE(event:Event)
        {
            this.doSearch();
            return;
        }// end function

        public function doSearch(param1:int = 1, param2:Boolean = false)
        {
            if (!this.search_btn.enabled)
            {
                return;
            }
            if (DragManager.draggedObject() is SearchCard)
            {
                return;
            }
            this.card_search_page = param1;
            var _loc_3:* = (param1 - 1) * 20;
            var _loc_4:int = 20;
            if (param2)
            {
                this.saved_search[this.saved_search.length - 2] = "" + _loc_3;
                this.saved_search[(this.saved_search.length - 1)] = "" + _loc_4;
            }
            else
            {
                this.saved_search = ["Card search", this.name_txt.text, this.desc_txt.text, this.card2_cb.selectedItem.data == "" ? (this.card_cb.selectedItem.data) : (this.card2_cb.selectedItem.data), this.type_cb.selectedItem.data, this.type2_cb.selectedItem.data, this.attrib_cb.selectedItem.data, this.lvll_txt.text, this.lvlh_txt.text, this.atkl_txt.text, this.atkh_txt.text, this.defl_txt.text, this.defh_txt.text, this.limit_cb.selectedItem.data, this.order_cb.selectedItem.data, "" + _loc_3, "" + _loc_4];
            }
            this.Send(this.saved_search);
            this.lock();
            return;
        }// end function

        public function cardSearchResponse(param1:Array)
        {
            this.unlock();
            var _loc_2:int = 1;
            var _loc_3:* = 0;
            while (_loc_3 < 20)
            {
                
                if (param1.length >= _loc_2 + 13)
                {
                    if (param1[_loc_2 + 3] != "")
                    {
                        param1[_loc_2 + 3] = this.CARD_START + param1[_loc_2 + 3];
                    }
                    this.search[_loc_3].initialize(param1.slice(_loc_2, _loc_2 + 13));
                    this.search[_loc_3].visible = true;
                    _loc_2 = _loc_2 + 13;
                }
                else
                {
                    this.search[_loc_3].visible = false;
                }
                _loc_3 = _loc_3 + 1;
            }
            this.page_txt.text = "" + this.card_search_page;
            var _loc_4:* = Math.ceil(int(param1[0]) / 20);
            this.tot_pages_txt.text = "" + _loc_4;
            this.prev_btn.enabled = this.card_search_page > 1;
            this.next_btn.enabled = this.card_search_page < _loc_4;
            return;
        }// end function

        public function getDeckData()
        {
            this.Send(["Get deck data"]);
            this.lock();
            return;
        }// end function

        public function getDeckDataResponse(param1:Array)
        {
            var _loc_3:String = null;
            var _loc_4:int = 0;
            var _loc_5:Object = null;
            this.unlock();
            var _loc_2:* = param1[0];
            this.decklist_cb.dataProvider = new DataProvider(param1.slice(1, 1 + _loc_2));
            if (_loc_2 > 0)
            {
                _loc_3 = param1[1 + _loc_2];
                _loc_4 = int(_loc_3);
                if (_loc_3 != "")
                {
                    this.default_deck_idx = _loc_4;
                    _loc_5 = this.decklist_cb.dataProvider.getItemAt(_loc_4);
                    this.current_deck_name = _loc_5.data;
                    _loc_5.label = _loc_5.label + " (default)";
                }
                else
                {
                    this.current_deck_name = param1[1];
                }
                this.decklist_cb.selectedIndex = _loc_4;
                this.getDeckResponse(param1.slice(2 + _loc_2));
            }
            else
            {
                this.current_deck_name = null;
                this.noDecksDisable();
            }
            this.name_txt.setFocus();
            return;
        }// end function

        public function deckInitButtons()
        {
            this.clear_btn.addEventListener(MouseEvent.CLICK, this.deckClearE);
            this.clear_btn.useHandCursor = true;
            this.sort_btn.addEventListener(MouseEvent.CLICK, this.deckSortE);
            this.decklist_cb.addEventListener(Event.CHANGE, this.getDeckE);
            this.new_btn.addEventListener(MouseEvent.CLICK, this.newDeckE);
            this.new_btn.useHandCursor = true;
            this.rename_btn.addEventListener(MouseEvent.CLICK, this.renameDeckE);
            this.rename_btn.useHandCursor = true;
            this.delete_btn.addEventListener(MouseEvent.CLICK, this.deleteDeckE);
            this.delete_btn.useHandCursor = true;
            this.save_btn.addEventListener(MouseEvent.CLICK, this.saveDeckE);
            this.save_btn.useHandCursor = true;
            this.save_as_btn.addEventListener(MouseEvent.CLICK, this.saveDeckAsE);
            this.save_as_btn.useHandCursor = true;
            this.default_btn.addEventListener(MouseEvent.CLICK, this.setDefaultDeckE);
            this.default_btn.useHandCursor = true;
            this.deck_exit_btn.addEventListener(MouseEvent.CLICK, this.deckExitE);
            this.deck_exit_btn.useHandCursor = true;
            return;
        }// end function

        public function deckClearE(event:MouseEvent = null)
        {
            var _loc_2:* = 0;
            while (_loc_2 < this.deck_count)
            {
                
                this.deck[_loc_2].visible = false;
                _loc_2 = _loc_2 + 1;
            }
            this.deck_count = 0;
            this.resetCardCounter();
            _loc_2 = 0;
            while (_loc_2 < this.side_count)
            {
                
                this.side[_loc_2].visible = false;
                _loc_2 = _loc_2 + 1;
            }
            this.side_count = 0;
            _loc_2 = 0;
            while (_loc_2 < this.extra_count)
            {
                
                this.extra[_loc_2].visible = false;
                _loc_2 = _loc_2 + 1;
            }
            this.extra_count = 0;
            return;
        }// end function

        public function deckSortE(event:MouseEvent)
        {
            this.sortDeck(this.deck);
            this.sortDeck(this.side);
            this.sortDeck(this.extra);
            return;
        }// end function

        public function sortDeck(param1:Array)
        {
            var comp:Function;
            var arr:* = param1;
            comp = function (param1:DeckCard, param2:DeckCard)
            {
                if (param1.visible && !param2.visible)
                {
                    return -1;
                }
                if (!param1.visible && param2.visible)
                {
                    return 1;
                }
                if (!param1.visible && !param2.visible)
                {
                    return 0;
                }
                var _loc_3:* = card_rank(param1.front_mc.card);
                var _loc_4:* = card_rank(param2.front_mc.card);
                if (_loc_3 < _loc_4)
                {
                    return -1;
                }
                if (_loc_3 > _loc_4)
                {
                    return 1;
                }
                var _loc_5:* = param1.front_mc.card_name.toUpperCase();
                var _loc_6:* = param2.front_mc.card_name.toUpperCase();
                if (_loc_5 < _loc_6)
                {
                    return -1;
                }
                if (_loc_5 > _loc_6)
                {
                    return 1;
                }
                if (param1.front_mc.id < param2.front_mc.id)
                {
                    return -1;
                }
                if (param1.front_mc.id > param2.front_mc.id)
                {
                    return 1;
                }
                return 0;
            }// end function
            ;
            var card_rank:* = function (param1:String) : int
            {
                switch(param1)
                {
                    case "normal":
                    {
                        return 0;
                    }
                    case "effect":
                    {
                        return 1;
                    }
                    case "ritual":
                    {
                        return 2;
                    }
                    case "spell":
                    {
                        return 3;
                    }
                    case "trap":
                    {
                        return 4;
                    }
                    case "fusion":
                    {
                        return 5;
                    }
                    case "synchro":
                    {
                        return 6;
                    }
                    case "xyz":
                    {
                        return 7;
                    }
                    default:
                    {
                        return int.MAX_VALUE;
                        ;
                    }
                }
            }// end function
            ;
            var x_arr:* = new Array(arr.length);
            var y_arr:* = new Array(arr.length);
            var i:*;
            while (i < arr.length)
            {
                
                x_arr[i] = arr[i].x;
                y_arr[i] = arr[i].y;
                i = (i + 1);
            }
            arr.sort(comp);
            i;
            while (i < arr.length)
            {
                
                arr[i].x = x_arr[i];
                arr[i].y = y_arr[i];
                i = (i + 1);
            }
            return;
        }// end function

        public function getDeckE(event:Event)
        {
            this.getDeck(true);
            return;
        }// end function

        public function getDeck(param1:Boolean = false)
        {
            if (param1 && this.offerDeckSave(this.getDeck, this.current_deck_name))
            {
                return;
            }
            this.current_deck_name = this.decklist_cb.selectedItem.data;
            this.Send(["Get deck", this.decklist_cb.selectedItem.data]);
            this.lock();
            return;
        }// end function

        public function getDeckResponse(param1:Array)
        {
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            this.unlock();
            var _loc_2:Array = [this.deck, this.side, this.extra];
            var _loc_3:int = 0;
            this.resetCardCounter();
            var _loc_4:* = 0;
            while (_loc_4 < _loc_2.length)
            {
                
                _loc_5 = param1[_loc_3];
                switch(_loc_4)
                {
                    case 0:
                    {
                        this.deck_count = _loc_5;
                        break;
                    }
                    case 1:
                    {
                        this.side_count = _loc_5;
                        break;
                    }
                    case 2:
                    {
                        this.extra_count = _loc_5;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_3++;
                _loc_6 = 0;
                while (_loc_6 < _loc_2[_loc_4].length)
                {
                    
                    if (_loc_6 < _loc_5 && param1.length >= _loc_3 + 13)
                    {
                        if (param1[_loc_3 + 3] != "")
                        {
                            param1[_loc_3 + 3] = this.CARD_START + param1[_loc_3 + 3];
                        }
                        _loc_2[_loc_4][_loc_6].initialize(param1.slice(_loc_3, _loc_3 + 13));
                        if (_loc_4 == 0)
                        {
                            this.incrementCardCounter(_loc_2[_loc_4][_loc_6]);
                        }
                        _loc_2[_loc_4][_loc_6].visible = true;
                        _loc_3 = _loc_3 + 13;
                    }
                    else
                    {
                        _loc_2[_loc_4][_loc_6].visible = false;
                    }
                    _loc_6 = _loc_6 + 1;
                }
                _loc_4 = _loc_4 + 1;
            }
            this.storeSavedDeck();
            return;
        }// end function

        public function newDeckE(event:MouseEvent = null)
        {
            this.getInput("New Deck", "Enter a name for your new deck:", "", 15, this.newDeckOfferSave);
            return;
        }// end function

        public function newDeckOfferSave(param1:String)
        {
            if (param1 == null)
            {
                return;
            }
            if (param1 == "")
            {
                this.displayError("Deck name cannot be blank");
                return;
            }
            this.new_deck_name = param1;
            this.newDeck(true);
            return;
        }// end function

        public function newDeck(param1:Boolean = false)
        {
            if (param1 && this.offerDeckSave(this.newDeck))
            {
                return;
            }
            this.Send(["New deck", this.new_deck_name]);
            this.lock();
            return;
        }// end function

        public function newDeckResponse(param1:Array)
        {
            var _loc_3:Object = null;
            this.unlock();
            var _loc_2:* = this.deckPlacementFind(this.new_deck_name);
            if (this.default_deck_idx < 0)
            {
                _loc_3 = {label:this.new_deck_name + " (default)", data:this.new_deck_name};
                this.default_deck_idx = _loc_2;
            }
            else
            {
                _loc_3 = {label:this.new_deck_name, data:this.new_deck_name};
                if (this.default_deck_idx >= _loc_2)
                {
                    var _loc_4:String = this;
                    var _loc_5:* = this.default_deck_idx + 1;
                    _loc_4.default_deck_idx = _loc_5;
                }
            }
            this.decklist_cb.dataProvider.addItemAt(_loc_3, _loc_2);
            this.decklist_cb.selectedIndex = _loc_2;
            this.current_deck_name = this.new_deck_name;
            this.noDecksEnable();
            this.deckClearE(null);
            this.storeSavedDeck();
            return;
        }// end function

        public function deckPlacementFind(param1:String) : int
        {
            var _loc_5:int = 0;
            var _loc_2:* = param1.toUpperCase();
            var _loc_3:int = 0;
            var _loc_4:* = this.decklist_cb.dataProvider.length - 1;
            while (_loc_3 <= _loc_4)
            {
                
                _loc_5 = (_loc_3 + _loc_4) / 2;
                if (_loc_2 < this.decklist_cb.dataProvider.getItemAt(_loc_5).data.toUpperCase())
                {
                    _loc_4 = _loc_5 - 1;
                    continue;
                }
                _loc_3 = _loc_5 + 1;
            }
            return _loc_3;
        }// end function

        public function renameDeckE(event:MouseEvent = null)
        {
            this.getInput("Rename Deck", "Enter a new name for your deck:", this.decklist_cb.selectedItem.data, 15, this.renameDeck);
            return;
        }// end function

        public function renameDeck(param1:String)
        {
            if (param1 == null)
            {
                return;
            }
            if (param1 == "")
            {
                this.displayError("Deck name cannot be blank");
                return;
            }
            this.new_deck_name = param1;
            this.Send(["Rename deck", this.decklist_cb.selectedItem.data, this.new_deck_name]);
            this.lock();
            return;
        }// end function

        public function renameDeckResponse(param1:Array)
        {
            var _loc_4:Object = null;
            this.unlock();
            var _loc_2:* = this.decklist_cb.selectedIndex;
            this.decklist_cb.dataProvider.removeItemAt(_loc_2);
            var _loc_3:* = this.deckPlacementFind(this.new_deck_name);
            if (_loc_2 == this.default_deck_idx)
            {
                _loc_4 = {label:this.new_deck_name + " (default)", data:this.new_deck_name};
                this.default_deck_idx = _loc_3;
            }
            else
            {
                _loc_4 = {label:this.new_deck_name, data:this.new_deck_name};
                if (this.default_deck_idx >= 0)
                {
                    if (_loc_2 < this.default_deck_idx && _loc_3 >= this.default_deck_idx)
                    {
                        var _loc_5:String = this;
                        var _loc_6:* = this.default_deck_idx - 1;
                        _loc_5.default_deck_idx = _loc_6;
                    }
                    else if (_loc_2 > this.default_deck_idx && _loc_3 <= this.default_deck_idx)
                    {
                        var _loc_5:String = this;
                        var _loc_6:* = this.default_deck_idx + 1;
                        _loc_5.default_deck_idx = _loc_6;
                    }
                }
            }
            this.decklist_cb.dataProvider.addItemAt(_loc_4, _loc_3);
            this.decklist_cb.selectedIndex = _loc_3;
            this.current_deck_name = this.new_deck_name;
            return;
        }// end function

        public function deleteDeckE(event:MouseEvent = null)
        {
            this.getConfirmation("Delete Deck", "Are you sure you want to delete the selected deck?", this.deleteDeck);
            return;
        }// end function

        public function deleteDeck(param1:Boolean)
        {
            var _loc_3:int = 0;
            if (!param1)
            {
                return;
            }
            var _loc_2:Array = ["Delete deck", this.decklist_cb.selectedItem.data];
            if (this.decklist_cb.length > 1)
            {
                if (this.decklist_cb.selectedIndex == 0)
                {
                    _loc_3 = 1;
                }
                else
                {
                    _loc_3 = this.decklist_cb.selectedIndex - 1;
                }
                _loc_2.push(this.decklist_cb.dataProvider.getItemAt(_loc_3).data);
            }
            this.Send(_loc_2);
            this.lock();
            return;
        }// end function

        public function deleteDeckResponse(param1:Array)
        {
            this.unlock();
            var _loc_2:* = this.decklist_cb.selectedIndex;
            if (_loc_2 == this.default_deck_idx)
            {
                this.default_deck_idx = -1;
            }
            else if (_loc_2 < this.default_deck_idx)
            {
                var _loc_3:String = this;
                var _loc_4:* = this.default_deck_idx - 1;
                _loc_3.default_deck_idx = _loc_4;
            }
            this.decklist_cb.dataProvider.removeItemAt(_loc_2);
            if (this.decklist_cb.length > 0)
            {
                if (_loc_2 == 0)
                {
                    this.decklist_cb.selectedIndex = 0;
                }
                else
                {
                    this.decklist_cb.selectedIndex = _loc_2 - 1;
                }
                this.getDeckResponse(param1);
                this.current_deck_name = this.decklist_cb.selectedItem.data;
            }
            else
            {
                this.decklist_cb.selectedIndex = -1;
                this.deckClearE(null);
                this.current_deck_name = null;
                this.noDecksDisable();
            }
            return;
        }// end function

        public function saveDeckE(event:MouseEvent)
        {
            this.saveDeck();
            return;
        }// end function

        public function saveDeckAsE(event:MouseEvent)
        {
            this.saveDeckAs();
            return;
        }// end function

        public function saveDeckAs()
        {
            this.getInput("Save Deck As", "Enter a name for your new deck:", "", 15, this.saveDeckAsCallback);
            return;
        }// end function

        public function saveDeckAsCallback(param1:String)
        {
            if (param1 == null)
            {
                return;
            }
            if (param1 == "")
            {
                this.displayError("Deck name cannot be blank");
                return;
            }
            this.saveDeck(null, param1, true);
            return;
        }// end function

        public function saveDeck(param1:Function = null, param2:String = null, param3:Boolean = false)
        {
            var _loc_7:int = 0;
            var _loc_8:* = undefined;
            var _loc_4:Array = ["Save deck", param2 == null ? (this.decklist_cb.selectedItem.data) : (param2), param3];
            var _loc_5:Array = [this.deck, this.side, this.extra];
            var _loc_6:* = 0;
            while (_loc_6 < _loc_5.length)
            {
                
                switch(_loc_6)
                {
                    case 0:
                    {
                        _loc_7 = this.deck_count;
                        break;
                    }
                    case 1:
                    {
                        _loc_7 = this.side_count;
                        break;
                    }
                    case 2:
                    {
                        _loc_7 = this.extra_count;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_4.push(_loc_7);
                _loc_8 = 0;
                while (_loc_8 < _loc_7)
                {
                    
                    _loc_4.push(_loc_5[_loc_6][_loc_8].front_mc.id);
                    _loc_8 = _loc_8 + 1;
                }
                _loc_6 = _loc_6 + 1;
            }
            this.Send(_loc_4);
            this.save_deck_callback = param1;
            this.lock();
            return;
        }// end function

        public function saveDeckResponse(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:int = 0;
            var _loc_4:Object = null;
            this.unlock();
            if (param1.length >= 1)
            {
                _loc_2 = param1[0];
                _loc_3 = this.deckPlacementFind(_loc_2);
                _loc_4 = {label:_loc_2, data:_loc_2};
                if (this.default_deck_idx >= _loc_3)
                {
                    var _loc_5:String = this;
                    var _loc_6:* = this.default_deck_idx + 1;
                    _loc_5.default_deck_idx = _loc_6;
                }
                this.decklist_cb.dataProvider.addItemAt(_loc_4, _loc_3);
                this.decklist_cb.selectedIndex = _loc_3;
                this.current_deck_name = _loc_2;
            }
            if (this.default_deck_idx < 0)
            {
                this.decklist_cb.selectedItem.label = this.decklist_cb.selectedItem.label + " (default)";
                this.decklist_cb.selectedIndex = this.decklist_cb.selectedIndex;
                this.default_deck_idx = this.decklist_cb.selectedIndex;
            }
            this.storeSavedDeck();
            if (this.save_deck_callback != null)
            {
                this.save_deck_callback();
            }
            else
            {
                this.displayMessage("Deck \"" + this.decklist_cb.selectedItem.data + "\" has been saved");
            }
            return;
        }// end function

        public function setDefaultDeckE(event:MouseEvent = null)
        {
            this.Send(["Set default deck", this.decklist_cb.selectedItem.data]);
            this.lock();
            return;
        }// end function

        public function setDefaultDeckResponse(param1:Array)
        {
            var _loc_2:Object = null;
            this.unlock();
            if (currentFrameLabel == "deck_start")
            {
                if (this.default_deck_idx >= 0)
                {
                    _loc_2 = this.decklist_cb.dataProvider.getItemAt(this.default_deck_idx);
                    _loc_2.label = _loc_2.data;
                }
                this.decklist_cb.selectedItem.label = this.decklist_cb.selectedItem.label + " (default)";
                this.decklist_cb.selectedIndex = this.decklist_cb.selectedIndex;
                this.default_deck_idx = this.decklist_cb.selectedIndex;
            }
            this.displayMessage("Deck \"" + this.decklist_cb.selectedItem.data + "\" has been set as default");
            return;
        }// end function

        public function deckExitE(event:MouseEvent = null)
        {
            this.deckExit(true);
            return;
        }// end function

        public function deckExit(param1:Boolean = false)
        {
            if (param1 && this.offerDeckSave(this.deckExit))
            {
                return;
            }
            this.returnToMainE();
            return;
        }// end function

        public function pickUp(param1:Sprite) : Object
        {
            var _loc_2:String = null;
            var _loc_3:int = 0;
            var _loc_4:* = undefined;
            var _loc_5:int = 0;
            if (this.decklist_cb.length == 0)
            {
                return null;
            }
            this.deck_hidden_mc.addChild(param1);
            if (param1 is SearchCard)
            {
                _loc_2 = SearchCard(param1).front_mc.treated_as;
                _loc_3 = 0;
                _loc_4 = 0;
                while (_loc_4 < this.deck.length)
                {
                    
                    if (!this.deck[_loc_4].visible)
                    {
                        break;
                    }
                    if (this.deck[_loc_4].front_mc.treated_as == _loc_2)
                    {
                        _loc_3++;
                    }
                    _loc_4 = _loc_4 + 1;
                }
                _loc_4 = 0;
                while (_loc_4 < this.side.length)
                {
                    
                    if (!this.side[_loc_4].visible)
                    {
                        break;
                    }
                    if (this.side[_loc_4].front_mc.treated_as == _loc_2)
                    {
                        _loc_3++;
                    }
                    _loc_4 = _loc_4 + 1;
                }
                _loc_4 = 0;
                while (_loc_4 < this.extra.length)
                {
                    
                    if (!this.extra[_loc_4].visible)
                    {
                        break;
                    }
                    if (this.extra[_loc_4].front_mc.treated_as == _loc_2)
                    {
                        _loc_3++;
                    }
                    _loc_4 = _loc_4 + 1;
                }
                _loc_5 = SearchCard(param1).front_mc.limit;
                if (this.bypass_card_limit_cb.selected)
                {
                    _loc_5 = 3;
                }
                else if (_loc_5 == 0)
                {
                    _loc_5 = 1;
                }
                if (_loc_3 >= _loc_5)
                {
                    SearchCard(param1).showLimitReached();
                    return [param1, false];
                }
            }
            this.removeCard(param1);
            return param1;
        }// end function

        public function dropIt(param1:Sprite, param2:MouseEvent)
        {
            var _loc_7:Front = null;
            var _loc_3:* = param2.stageX;
            var _loc_4:* = param2.stageY;
            var _loc_5:* = param1 is SearchCard;
            if (param1 is SearchCard && SearchCard(param1).limitReached())
            {
                SearchCard(param1).hideLimitReached();
                return;
            }
            param1.x = this.restoreX;
            param1.y = this.restoreY;
            if (!_loc_5)
            {
                param1.visible = false;
            }
            var _loc_6:* = Object(param1).front_mc;
            if (this.deck_area_mc.hitTestPoint(_loc_3, _loc_4))
            {
                if (_loc_6.card == "fusion" || _loc_6.card == "synchro" || _loc_6.card == "xyz")
                {
                    return;
                }
                _loc_7 = this.insertCard(this.deck, _loc_6, _loc_3, _loc_4);
            }
            else if (this.side_area_mc.hitTestPoint(_loc_3, _loc_4))
            {
                _loc_7 = this.insertCard(this.side, _loc_6, _loc_3, _loc_4);
            }
            else if (this.extra_area_mc.hitTestPoint(_loc_3, _loc_4))
            {
                if (!(_loc_6.card == "fusion" || _loc_6.card == "synchro" || _loc_6.card == "xyz"))
                {
                    return;
                }
                _loc_7 = this.insertCard(this.extra, _loc_6, _loc_3, _loc_4);
            }
            else
            {
                _loc_7 = null;
            }
            if (_loc_7 != null)
            {
                Object(param1).newFront(_loc_7);
                if (_loc_5)
                {
                    SearchCard(param1).copyFront(_loc_6);
                }
            }
            return;
        }// end function

        public function resetCardCounter()
        {
            this.total_count_txt.text = "0";
            this.normal_count_txt.text = "0";
            this.effect_count_txt.text = "0";
            this.ritual_count_txt.text = "0";
            this.spell_count_txt.text = "0";
            this.trap_count_txt.text = "0";
            return;
        }// end function

        public function incrementCardCounter(param1:DeckCard)
        {
            this.total_count_txt.text = String((int(this.total_count_txt.text) + 1));
            switch(param1.front_mc.card)
            {
                case "normal":
                {
                    this.normal_count_txt.text = String((int(this.normal_count_txt.text) + 1));
                    break;
                }
                case "effect":
                {
                    this.effect_count_txt.text = String((int(this.effect_count_txt.text) + 1));
                    break;
                }
                case "ritual":
                {
                    this.ritual_count_txt.text = String((int(this.ritual_count_txt.text) + 1));
                    break;
                }
                case "spell":
                {
                    this.spell_count_txt.text = String((int(this.spell_count_txt.text) + 1));
                    break;
                }
                case "trap":
                {
                    this.trap_count_txt.text = String((int(this.trap_count_txt.text) + 1));
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function decrementCardCounter(param1:DeckCard)
        {
            this.total_count_txt.text = String((int(this.total_count_txt.text) - 1));
            switch(param1.front_mc.card)
            {
                case "normal":
                {
                    this.normal_count_txt.text = String((int(this.normal_count_txt.text) - 1));
                    break;
                }
                case "effect":
                {
                    this.effect_count_txt.text = String((int(this.effect_count_txt.text) - 1));
                    break;
                }
                case "ritual":
                {
                    this.ritual_count_txt.text = String((int(this.ritual_count_txt.text) - 1));
                    break;
                }
                case "spell":
                {
                    this.spell_count_txt.text = String((int(this.spell_count_txt.text) - 1));
                    break;
                }
                case "trap":
                {
                    this.trap_count_txt.text = String((int(this.trap_count_txt.text) - 1));
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function storeSavedDeck()
        {
            this.saved_deck = new Array(this.deck_count);
            var _loc_1:* = 0;
            while (_loc_1 < this.deck_count)
            {
                
                this.saved_deck[_loc_1] = this.deck[_loc_1].front_mc.id;
                _loc_1 = _loc_1 + 1;
            }
            this.saved_side = new Array(this.side_count);
            _loc_1 = 0;
            while (_loc_1 < this.side_count)
            {
                
                this.saved_side[_loc_1] = this.side[_loc_1].front_mc.id;
                _loc_1 = _loc_1 + 1;
            }
            this.saved_extra = new Array(this.extra_count);
            _loc_1 = 0;
            while (_loc_1 < this.extra_count)
            {
                
                this.saved_extra[_loc_1] = this.extra[_loc_1].front_mc.id;
                _loc_1 = _loc_1 + 1;
            }
            return;
        }// end function

        public function isSameDeck() : Boolean
        {
            if (this.saved_deck.length != this.deck_count)
            {
                return false;
            }
            if (this.saved_side.length != this.side_count)
            {
                return false;
            }
            if (this.saved_extra.length != this.extra_count)
            {
                return false;
            }
            var _loc_1:* = 0;
            while (_loc_1 < this.deck_count)
            {
                
                if (this.saved_deck[_loc_1] != this.deck[_loc_1].front_mc.id)
                {
                    return false;
                }
                _loc_1 = _loc_1 + 1;
            }
            _loc_1 = 0;
            while (_loc_1 < this.side_count)
            {
                
                if (this.saved_side[_loc_1] != this.side[_loc_1].front_mc.id)
                {
                    return false;
                }
                _loc_1 = _loc_1 + 1;
            }
            _loc_1 = 0;
            while (_loc_1 < this.extra_count)
            {
                
                if (this.saved_extra[_loc_1] != this.extra[_loc_1].front_mc.id)
                {
                    return false;
                }
                _loc_1 = _loc_1 + 1;
            }
            return true;
        }// end function

        public function offerDeckSave(param1:Function, param2:String = null) : Boolean
        {
            if (this.decklist_cb.length == 0 || this.isSameDeck())
            {
                return false;
            }
            this.offer_deck_save_callback = param1;
            this.offer_deck_save_deck_name = param2;
            this.getConfirmation("Save Deck", "You have made unsaved changes to your current deck. Do you want to save before continuing?", this.optSaveDeck);
            return true;
        }// end function

        public function optSaveDeck(param1:Boolean)
        {
            if (param1)
            {
                this.saveDeck(this.offer_deck_save_callback, this.offer_deck_save_deck_name);
            }
            else
            {
                this.offer_deck_save_callback();
            }
            return;
        }// end function

        public function deckCleanupE(event:Event)
        {
            this.deck = null;
            this.side = null;
            this.extra = null;
            this.search = null;
            this.saved_deck = null;
            this.saved_side = null;
            this.saved_extra = null;
            return;
        }// end function

        public function profileEnterHandler()
        {
            switch(stage.focus)
            {
                case this.username_txt.textField:
                {
                    this.getProfile();
                    break;
                }
                case this.profile_exit_btn:
                {
                    this.returnToMainE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function profileIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 == null)
            {
                if (!this.profile_init)
                {
                    this.returnToMainE();
                }
            }
            else
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                switch(_loc_2)
                {
                    case "Get profile":
                    {
                        this.getProfileResponse(_loc_3);
                        this.profile_init = true;
                        break;
                    }
                    case "Ranking":
                    {
                        this.getRankingResponse(_loc_3);
                        break;
                    }
                    case "Ranking2":
                    {
                        this.getRanking2Response(_loc_3);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return;
        }// end function

        public function getProfile()
        {
            if (this.username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Get profile", this.username_txt.text]);
            this.lock();
            return;
        }// end function

        public function getProfileResponse(param1:Array)
        {
            this.unlock();
            var _loc_14:* = param1[0];
            this.profile_username = param1[0];
            this.username_txt.text = _loc_14;
            this.avatar_mc.setPicture(this.AVATAR_START, param1[1]);
            var _loc_2:* = this.username == this.profile_username;
            this.avatar_mc.setFrame(_loc_2);
            this.table_mc.setTable(_loc_2);
            this.ranking_txt.text = "";
            this.ranking_calc_btn.visible = true;
            this.ranking2_txt.text = "";
            this.ranking_calc2_btn.visible = true;
            var _loc_3:* = param1[2];
            this.status_txt.text = _loc_3;
            this.last_seen_txt.text = param1[3];
            var _loc_4:* = param1[4];
            var _loc_5:* = new Date();
            new Date().setTime(new Date().time - _loc_4 * 1000);
            var _loc_6:Array = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
            var _loc_7:* = _loc_5.hours;
            var _loc_8:* = _loc_5.hours % 12;
            if (_loc_5.hours % 12 == 0)
            {
                _loc_8 = 12;
            }
            var _loc_9:* = _loc_5.minutes;
            var _loc_10:* = _loc_5.minutes < 10 ? ("0" + _loc_9) : ("" + _loc_9);
            var _loc_11:* = _loc_6[_loc_5.month] + " " + _loc_5.date + ", " + _loc_5.fullYear + ", " + _loc_8 + ":" + _loc_10 + " " + (_loc_7 >= 12 ? ("PM") : ("AM"));
            this.registered_txt.text = _loc_11;
            this.rating_rep_txt.text = param1[5];
            this.rating_rep2_txt.text = param1[6];
            this.wins_txt.text = param1[7];
            this.wins2_txt.text = param1[8];
            this.losses_txt.text = param1[9];
            this.losses2_txt.text = param1[10];
            this.draws_txt.text = param1[11];
            this.draws2_txt.text = param1[12];
            this.profile_txt.htmlText = StringUtils.escapeHtmlWithLinks(param1[13]);
            var _loc_12:* = param1[14];
            if (param1[14] == "yes")
            {
                this.watch_duel_btn.visible = true;
                this.key_mc.visible = false;
            }
            else if (_loc_12 == "password")
            {
                this.watch_duel_btn.visible = true;
                this.key_mc.visible = true;
            }
            else
            {
                this.watch_duel_btn.visible = false;
                this.key_mc.visible = false;
            }
            this.showPuzzle(param1[15] == "true");
            this.send_pm_btn.visible = !_loc_2 && _loc_3 == "Online";
            var _loc_13:* = this.online_users_mc.isFriend(this.profile_username);
            this.add_friend_btn.visible = !_loc_13;
            this.delete_friend_btn.visible = _loc_13;
            return;
        }// end function

        public function getRankingE(event:MouseEvent)
        {
            this.Send(["Ranking", this.profile_username]);
            this.ranking_txt.text = "Calculating...";
            this.ranking_calc_btn.visible = false;
            return;
        }// end function

        public function getRankingResponse(param1:Array)
        {
            if (this.profile_init)
            {
                this.ranking_txt.text = param1[0];
            }
            return;
        }// end function

        public function getRanking2E(event:MouseEvent)
        {
            this.Send(["Ranking2", this.profile_username]);
            this.ranking2_txt.text = "Calculating...";
            this.ranking_calc2_btn.visible = false;
            return;
        }// end function

        public function getRanking2Response(param1:Array)
        {
            if (this.profile_init)
            {
                this.ranking2_txt.text = param1[0];
            }
            return;
        }// end function

        public function profileSendPmE(event:MouseEvent)
        {
            this.openPrivateChat(this.profile_username);
            return;
        }// end function

        public function addFriendE(event:MouseEvent)
        {
            this.Send(["Add friend", this.profile_username]);
            this.add_friend_btn.visible = false;
            this.delete_friend_btn.visible = false;
            return;
        }// end function

        public function deleteFriendE(event:MouseEvent)
        {
            this.Send(["Delete friend", this.profile_username]);
            this.add_friend_btn.visible = false;
            this.delete_friend_btn.visible = false;
            return;
        }// end function

        public function profileWatchDuelE(event:MouseEvent)
        {
            if (!this.admin && this.key_mc.visible)
            {
                this.getInput("Watch Password", "Enter watch password to watch duel:", "", 0, this.profilePerformWatch);
            }
            else
            {
                this.profilePerformWatch(null, true);
            }
            return;
        }// end function

        public function profilePerformWatch(param1:String, param2:Boolean = false)
        {
            if (param1 == null && !param2)
            {
                return;
            }
            if (param1 == "" && !param2)
            {
                this.displayError("Password not entered");
                return;
            }
            if (param2)
            {
                param1 = "";
            }
            this.Send(["Watch user duel", this.profile_username, param1]);
            this.lock();
            return;
        }// end function

        public function puzzleInit()
        {
            this.puzzle_mc.visible = false;
            this.puzzle_mc.current_supporter_mc.visible = false;
            this.puzzle_area_mc.addEventListener(MouseEvent.MOUSE_OVER, this.showSupporterE);
            this.puzzle_area_mc.addEventListener(MouseEvent.MOUSE_OUT, this.hideSupporterE);
            return;
        }// end function

        public function showSupporterE(event:MouseEvent)
        {
            this.puzzle_mc.current_supporter_mc.visible = true;
            return;
        }// end function

        public function hideSupporterE(event:MouseEvent)
        {
            this.puzzle_mc.current_supporter_mc.visible = false;
            return;
        }// end function

        public function showPuzzle(param1:Boolean)
        {
            this.puzzle_mc.visible = param1;
            return;
        }// end function

        public function myProfileEnterHandler()
        {
            switch(stage.focus)
            {
                case this.redeem_donation_btn:
                {
                    this.redeemDonationE();
                    break;
                }
                case this.save_profile_btn:
                {
                    this.saveAvatarAndProfileE();
                    break;
                }
                case this.my_profile_exit_btn:
                {
                    this.myProfileExitE();
                    break;
                }
                case this.avatar_browse_mc.avatar_browse_btn:
                {
                    this.avatarBrowseE();
                    break;
                }
                case this.back_browse_mc.back_browse_btn:
                {
                    this.backBrowseE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function myProfileIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 == null)
            {
                if (!this.my_profile_init)
                {
                    this.returnToMainE();
                }
            }
            else
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                switch(_loc_2)
                {
                    case "Avatars and profile":
                    {
                        this.avatarsAndProfileResponse(_loc_3);
                        this.my_profile_init = true;
                        break;
                    }
                    case "Save avatar and profile":
                    {
                        this.saveAvatarAndProfileResponse(_loc_3);
                        break;
                    }
                    case "Redeem donation":
                    {
                        this.redeemDonationResponse(_loc_3);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return;
        }// end function

        public function avatarStartLeftE(event:MouseEvent)
        {
            this.left_btn.addEventListener(Event.ENTER_FRAME, this.avatarLeftE);
            return;
        }// end function

        public function avatarStopLeftE(event:MouseEvent = null)
        {
            this.left_btn.removeEventListener(Event.ENTER_FRAME, this.avatarLeftE);
            return;
        }// end function

        public function avatarStartRightE(event:MouseEvent)
        {
            this.right_btn.addEventListener(Event.ENTER_FRAME, this.avatarRightE);
            return;
        }// end function

        public function avatarStopRightE(event:MouseEvent = null)
        {
            this.right_btn.removeEventListener(Event.ENTER_FRAME, this.avatarRightE);
            return;
        }// end function

        public function avatarLeftE(event:Event)
        {
            var _loc_5:MovieClip = null;
            var _loc_2:* = this.avatar_gallery[0].x + this.SCROLL_AMOUNT;
            if (this.avatar_cursor == 0)
            {
                _loc_2 = Math.min(_loc_2, this.GALLERY_LEFT_JUSTIFY);
            }
            var _loc_3:Number = 0;
            var _loc_4:* = 0;
            while (_loc_4 < this.avatar_gallery.length)
            {
                
                this.avatar_gallery[_loc_4].x = _loc_2 + _loc_3;
                _loc_3 = _loc_3 + this.GALLERY_GAP;
                _loc_4 = _loc_4 + 1;
            }
            if (this.avatar_cursor > 0 && _loc_2 >= this.GALLERY_CENTER_JUSTIFY + this.GALLERY_GAP)
            {
                _loc_5 = this.avatar_gallery.pop();
                this.avatar_gallery.reverse();
                this.avatar_gallery.push(_loc_5);
                this.avatar_gallery.reverse();
                var _loc_6:String = this;
                var _loc_7:* = this.avatar_cursor - 1;
                _loc_6.avatar_cursor = _loc_7;
                _loc_5.x = this.avatar_gallery[1].x - this.GALLERY_GAP;
                this.setGalleryAvatar(_loc_5, this.avatars[this.avatar_cursor]);
            }
            if (this.avatar_gallery[0].x == this.GALLERY_LEFT_JUSTIFY)
            {
                this.left_btn.visible = false;
                this.avatarStopLeftE();
            }
            this.right_btn.visible = true;
            return;
        }// end function

        public function avatarRightE(event:Event)
        {
            var _loc_5:MovieClip = null;
            var _loc_2:* = this.avatar_gallery[0].x - this.SCROLL_AMOUNT;
            if (this.avatar_cursor == this.avatars.length - 7)
            {
                _loc_2 = Math.max(_loc_2, this.GALLERY_RIGHT_JUSTIFY);
            }
            var _loc_3:Number = 0;
            var _loc_4:* = 0;
            while (_loc_4 < this.avatar_gallery.length)
            {
                
                this.avatar_gallery[_loc_4].x = _loc_2 + _loc_3;
                _loc_3 = _loc_3 + this.GALLERY_GAP;
                _loc_4 = _loc_4 + 1;
            }
            if (this.avatar_cursor < this.avatars.length - 7 && _loc_2 <= this.GALLERY_CENTER_JUSTIFY - this.GALLERY_GAP)
            {
                this.avatar_gallery.reverse();
                _loc_5 = this.avatar_gallery.pop();
                this.avatar_gallery.reverse();
                this.avatar_gallery.push(_loc_5);
                var _loc_6:String = this;
                var _loc_7:* = this.avatar_cursor + 1;
                _loc_6.avatar_cursor = _loc_7;
                _loc_5.x = this.avatar_gallery[this.avatar_gallery.length - 2].x + this.GALLERY_GAP;
                this.setGalleryAvatar(_loc_5, this.avatars[this.avatar_cursor + 6]);
            }
            if (this.avatar_gallery[0].x == this.GALLERY_RIGHT_JUSTIFY)
            {
                this.right_btn.visible = false;
                this.avatarStopRightE();
            }
            this.left_btn.visible = true;
            return;
        }// end function

        public function redeemDonationE(event:MouseEvent = null)
        {
            this.getInput("Redeem Donation", "Enter your PayPal transaction ID:", "", 17, this.redeemDonation, "A-Za-z0-9");
            return;
        }// end function

        public function redeemDonation(param1:String)
        {
            if (param1 == null)
            {
                return;
            }
            if (param1 == "")
            {
                this.displayError("Transaction ID not specified");
                return;
            }
            this.Send(["Redeem donation", param1]);
            this.lock();
            return;
        }// end function

        public function redeemDonationResponse(param1:Array)
        {
            var _loc_3:MovieClip = null;
            this.unlock();
            this.donation_reward_txt.text = "Donation Reward: " + param1[0];
            this.avatar_browse_mc.visible = true;
            this.back_browse_mc.visible = true;
            this.num_wins = int.MAX_VALUE;
            this.num_rep = int.MAX_VALUE;
            this.showPuzzle(true);
            var _loc_2:int = 0;
            while (_loc_2 < this.avatar_gallery.length)
            {
                
                _loc_3 = this.avatar_gallery[_loc_2];
                _loc_3.disable(-1);
                _loc_3.addEventListener(MouseEvent.CLICK, this.avatarClickE);
                _loc_3.buttonMode = true;
                _loc_3.mouseChildren = false;
                _loc_2++;
            }
            this.back_mc.disable(-1);
            this.save_profile_btn.enabled = true;
            this.displayMessage("You have successfully redeemed your donation!");
            return;
        }// end function

        public function avatarsAndProfile()
        {
            this.Send(["Avatars and profile"]);
            var _loc_1:* = 0;
            while (_loc_1 < this.avatar_gallery.length)
            {
                
                this.avatar_gallery[_loc_1].visible = false;
                _loc_1 = _loc_1 + 1;
            }
            this.left_btn.visible = false;
            this.right_btn.visible = false;
            this.back_mc.visible = false;
            this.back_left_btn.visible = false;
            this.back_right_btn.visible = false;
            this.color1_cp.visible = false;
            this.color2_cp.visible = false;
            this.lock();
            return;
        }// end function

        public function avatarsAndProfileResponse(param1:Array)
        {
            var _loc_5:Number = NaN;
            this.unlock();
            this.saved_avatar = param1[0];
            this.new_avatar = "same";
            this.new_avatar2 = "";
            this.avatar_mc.setPicture(this.AVATAR_START, this.saved_avatar);
            this.saved_back = param1[1];
            this.new_back = "same";
            this.new_back2 = "";
            var _loc_8:* = param1[2];
            this.saved_back_color1 = param1[2];
            this.color1_cp.selectedColor = _loc_8;
            this.back_mc.setColor1(this.saved_back_color1);
            var _loc_8:* = param1[3];
            this.saved_back_color2 = param1[3];
            this.color2_cp.selectedColor = _loc_8;
            this.back_mc.setColor2(this.saved_back_color2);
            var _loc_8:* = param1[4];
            this.saved_profile = param1[4];
            this.profile_txt.text = _loc_8;
            this.num_wins = param1[5];
            this.num_rep = param1[6];
            if (param1[7] != "")
            {
                this.donation_reward_txt.text = "Donation Reward: " + param1[7];
                this.avatar_browse_mc.visible = true;
                this.back_browse_mc.visible = true;
                this.num_wins = int.MAX_VALUE;
                this.num_rep = int.MAX_VALUE;
                this.showPuzzle(true);
            }
            if (param1[8] == "true")
            {
                this.avatar_browse_mc.visible = true;
                this.back_browse_mc.visible = true;
                this.num_wins = int.MAX_VALUE;
                this.num_rep = int.MAX_VALUE;
            }
            if (param1[9] != "")
            {
                this.admin_reward_txt.text = param1[9];
            }
            var _loc_2:* = param1[param1.length - 2];
            var _loc_3:* = param1[(param1.length - 1)];
            this.avatars = param1.slice(10, _loc_2 + 10);
            this.backs = param1.slice(_loc_2 + 10, _loc_2 + _loc_3 + 10);
            this.backs.reverse();
            this.backs.push("");
            this.backs.reverse();
            var _loc_4:* = this.avatars.indexOf(this.saved_avatar);
            if (this.avatars.indexOf(this.saved_avatar) <= 1)
            {
                this.avatar_cursor = 0;
                _loc_5 = this.GALLERY_LEFT_JUSTIFY;
                this.left_btn.visible = false;
                this.right_btn.visible = true;
            }
            else if (_loc_4 == 2)
            {
                this.avatar_cursor = 0;
                _loc_5 = this.GALLERY_CENTER_JUSTIFY + this.GALLERY_GAP;
                this.left_btn.visible = true;
                this.right_btn.visible = true;
            }
            else if (_loc_4 >= this.avatars.length - 2)
            {
                this.avatar_cursor = this.avatars.length - 7;
                _loc_5 = this.GALLERY_RIGHT_JUSTIFY;
                this.left_btn.visible = true;
                this.right_btn.visible = false;
            }
            else if (_loc_4 == this.avatars.length - 3)
            {
                this.avatar_cursor = this.avatars.length - 7;
                _loc_5 = this.GALLERY_CENTER_JUSTIFY - this.GALLERY_GAP;
                this.left_btn.visible = true;
                this.right_btn.visible = true;
            }
            else
            {
                this.avatar_cursor = _loc_4 - 3;
                _loc_5 = this.GALLERY_CENTER_JUSTIFY;
                this.left_btn.visible = true;
                this.right_btn.visible = true;
            }
            var _loc_6:Number = 0;
            var _loc_7:* = 0;
            while (_loc_7 < 7)
            {
                
                this.setGalleryAvatar(this.avatar_gallery[_loc_7], this.avatars[this.avatar_cursor + _loc_7]);
                this.avatar_gallery[_loc_7].x = _loc_5 + _loc_6;
                _loc_6 = _loc_6 + this.GALLERY_GAP;
                _loc_7 = _loc_7 + 1;
            }
            this.back_mc.visible = true;
            this.setCardBack(this.saved_back);
            this.card_back_idx = this.backs.indexOf(this.saved_back);
            this.back_left_btn.visible = this.card_back_idx > 0;
            this.back_right_btn.visible = this.card_back_idx < (this.backs.length - 1);
            this.profile_txt.enabled = true;
            this.profile_txt.verticalScrollPosition = this.profile_txt.maxVerticalScrollPosition;
            this.profile_txt.setFocus();
            this.profile_txt.setSelection(this.profile_txt.length, this.profile_txt.length);
            return;
        }// end function

        public function setGalleryAvatar(param1:MovieClip, param2:String)
        {
            var _loc_3:int = 0;
            var _loc_4:Boolean = false;
            var _loc_5:Boolean = false;
            param1.visible = true;
            _loc_3 = int(param2.substr(0, param2.indexOf("/")));
            _loc_4 = _loc_3 > this.num_wins;
            param1.disable(_loc_4 ? (_loc_3) : (-1));
            param1.setPicture(this.AVATAR_START, param2);
            if (this.new_avatar == "same")
            {
                _loc_5 = param2 == this.saved_avatar;
            }
            else if (this.new_avatar == "path")
            {
                _loc_5 = param2 == this.new_avatar;
            }
            else
            {
                _loc_5 = false;
            }
            param1.setOutline(_loc_5);
            if (_loc_5)
            {
                this.outlined_avatar = param1;
            }
            else if (this.outlined_avatar == param1)
            {
                this.outlined_avatar = null;
            }
            if (_loc_4)
            {
                param1.removeEventListener(MouseEvent.CLICK, this.avatarClickE);
            }
            else
            {
                param1.addEventListener(MouseEvent.CLICK, this.avatarClickE);
            }
            param1.buttonMode = !_loc_4;
            param1.mouseChildren = _loc_4;
            return;
        }// end function

        public function avatarClickE(event:MouseEvent)
        {
            var _loc_2:MovieClip = null;
            var _loc_3:String = null;
            _loc_2 = event.target as MovieClip;
            _loc_3 = _loc_2.getPictureString();
            if (this.saved_avatar == _loc_3)
            {
                this.new_avatar = "same";
                this.new_avatar2 = "";
            }
            else
            {
                this.new_avatar = "path";
                this.new_avatar2 = _loc_3;
            }
            this.avatar_mc.copyPicture(_loc_2.picture_mc);
            if (this.outlined_avatar != null)
            {
                this.outlined_avatar.setOutline(false);
            }
            _loc_2.setOutline(true);
            this.outlined_avatar = _loc_2;
            return;
        }// end function

        public function saveAvatarAndProfileE(event:MouseEvent = null)
        {
            var _loc_2:String = null;
            _loc_2 = StringUtils.replaceAll(this.profile_txt.text, "\r", "\n");
            this.Send(["Save avatar and profile", this.new_avatar, this.new_avatar2, this.new_back, this.new_back2, this.color1_cp.selectedColor, this.color2_cp.selectedColor, _loc_2]);
            this.my_profile_exiting = false;
            this.lock();
            return;
        }// end function

        public function saveAvatarAndProfileResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = "Profile has been saved";
            if (this.my_profile_exiting)
            {
                this.displayMessage(_loc_2, this.returnToMainE);
            }
            else
            {
                this.unlock();
                this.displayMessage(_loc_2);
                switch(this.new_avatar)
                {
                    case "same":
                    {
                        break;
                    }
                    case "path":
                    {
                        this.saved_avatar = this.new_avatar2;
                        break;
                    }
                    case "upload":
                    {
                        this.saved_avatar = null;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                this.new_avatar = "same";
                this.new_avatar2 = "";
                switch(this.new_back)
                {
                    case "same":
                    {
                        break;
                    }
                    case "path":
                    {
                        this.saved_back = this.new_back2;
                        break;
                    }
                    case "upload":
                    {
                        this.saved_back = null;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                this.new_back = "same";
                this.new_back2 = "";
                this.saved_back_color1 = this.color1_cp.selectedColor;
                this.saved_back_color2 = this.color2_cp.selectedColor;
                this.saved_profile = StringUtils.replaceAll(this.profile_txt.text, "\r", "\n");
            }
            return;
        }// end function

        public function myProfileExitE(event:MouseEvent = null)
        {
            if (this.new_avatar != "same" || this.new_back != "same" || this.saved_back_color1 != this.color1_cp.selectedColor || this.saved_back_color2 != this.color2_cp.selectedColor || this.saved_profile != StringUtils.replaceAll(this.profile_txt.text, "\r", "\n"))
            {
                if (this.save_profile_btn.enabled)
                {
                    this.getConfirmation("Save Profile", "Do you want to save your profile before exiting?", this.myProfileExit);
                }
                else
                {
                    this.getConfirmation("Invalid Card Back", "Do you want to stay on this page to modify unsaved selection?", this.myProfileExit2);
                }
            }
            else
            {
                this.returnToMainE();
            }
            return;
        }// end function

        public function myProfileExit(param1:Boolean)
        {
            if (param1)
            {
                this.saveAvatarAndProfileE();
                this.my_profile_exiting = true;
            }
            else
            {
                this.returnToMainE();
            }
            return;
        }// end function

        public function myProfileExit2(param1:Boolean)
        {
            if (!param1)
            {
                this.returnToMainE();
            }
            return;
        }// end function

        public function setCardBack(param1:String)
        {
            var _loc_2:Boolean = false;
            var _loc_3:int = 0;
            if (param1 == this.saved_back)
            {
                this.new_back = "same";
                this.new_back2 = "";
            }
            else
            {
                this.new_back = "path";
                this.new_back2 = param1;
            }
            if (param1 == "")
            {
                this.back_mc.disable(-1);
                this.back_mc.setDefaultBack();
                this.save_profile_btn.enabled = true;
                this.color1_cp.visible = false;
                this.color2_cp.visible = false;
            }
            else
            {
                if (this.new_back == "same")
                {
                    _loc_2 = true;
                }
                else
                {
                    _loc_3 = int(param1.substr(0, param1.indexOf("/")));
                    _loc_2 = this.num_rep >= _loc_3;
                }
                this.back_mc.disable(_loc_2 ? (-1) : (_loc_3));
                this.save_profile_btn.enabled = _loc_2;
                this.back_mc.setBack(this.BACK_START, param1);
                this.color1_cp.visible = true;
                this.color2_cp.visible = true;
            }
            return;
        }// end function

        public function backLeftE(event:MouseEvent)
        {
            var _loc_2:String = this;
            var _loc_3:* = this.card_back_idx - 1;
            _loc_2.card_back_idx = _loc_3;
            this.back_left_btn.visible = this.card_back_idx > 0;
            this.back_right_btn.visible = this.card_back_idx < (this.backs.length - 1);
            this.setCardBack(this.backs[this.card_back_idx]);
            return;
        }// end function

        public function backRightE(event:MouseEvent)
        {
            var _loc_2:String = this;
            var _loc_3:* = this.card_back_idx + 1;
            _loc_2.card_back_idx = _loc_3;
            this.back_left_btn.visible = this.card_back_idx > 0;
            this.back_right_btn.visible = this.card_back_idx < (this.backs.length - 1);
            this.setCardBack(this.backs[this.card_back_idx]);
            return;
        }// end function

        public function color1ChangeE(event:Event)
        {
            this.back_mc.setColor1(this.color1_cp.selectedColor);
            return;
        }// end function

        public function color2ChangeE(event:Event)
        {
            this.back_mc.setColor2(this.color2_cp.selectedColor);
            return;
        }// end function

        public function avatarBrowseE(event:MouseEvent = null)
        {
            if (this.browse_fr != null)
            {
                return;
            }
            this.browse_avatar = true;
            this.browse_fr = new FileReference();
            this.browse_fr.addEventListener(Event.SELECT, this.abSelectE);
            this.browse_fr.addEventListener(Event.CANCEL, this.abCancelE);
            this.browse_fr.browse([new FileFilter("Images (*.jpg,*.gif,*.png)", "*.jpg;*.gif;*.png")]);
            return;
        }// end function

        public function backBrowseE(event:MouseEvent = null)
        {
            if (this.browse_fr != null)
            {
                return;
            }
            this.browse_avatar = false;
            this.browse_fr = new FileReference();
            this.browse_fr.addEventListener(Event.SELECT, this.abSelectE);
            this.browse_fr.addEventListener(Event.CANCEL, this.abCancelE);
            this.browse_fr.browse();
            return;
        }// end function

        public function abSelectE(event:Event)
        {
            if (currentFrameLabel != "my_profile_start")
            {
                this.browse_fr = null;
                return;
            }
            this.browse_fr.removeEventListener(Event.SELECT, this.abSelectE);
            this.browse_fr.addEventListener(Event.COMPLETE, this.abCompleteE);
            this.browse_fr.addEventListener(IOErrorEvent.IO_ERROR, this.abErrorE);
            this.browse_fr.load();
            return;
        }// end function

        public function abCancelE(event:Event)
        {
            this.browse_fr = null;
            return;
        }// end function

        public function abCompleteE(event:Event)
        {
            var _loc_2:ByteArray = null;
            if (currentFrameLabel != "my_profile_start")
            {
                this.browse_fr = null;
                return;
            }
            _loc_2 = this.browse_fr.data;
            this.browse_fr = null;
            this.abLoadImage(_loc_2);
            return;
        }// end function

        public function abLoadImage(param1:ByteArray)
        {
            var ba:* = param1;
            this.browse_loader = new Loader();
            this.browse_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.abLoadE);
            this.browse_loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.abLoadErrorE);
            try
            {
                this.browse_loader.loadBytes(ba);
            }
            catch (err:Error)
            {
                browse_loader = null;
                displayError("File is empty");
            }
            this.browse_ba = ba;
            return;
        }// end function

        public function abErrorE(event:Event)
        {
            this.browse_fr = null;
            this.displayError("Failed to open file");
            return;
        }// end function

        public function abLoadE(event:Event)
        {
            var bd:BitmapData;
            var ba:ByteArray;
            var type:String;
            var new_dim:int;
            var new_bd:BitmapData;
            var matrix:Matrix;
            var e:* = event;
            if (currentFrameLabel != "my_profile_start")
            {
                this.browse_loader = null;
                this.browse_ba = null;
                return;
            }
            try
            {
                bd = Bitmap(this.browse_loader.content).bitmapData;
                ba = this.browse_ba;
                type = this.browse_loader.contentLoaderInfo.contentType;
            }
            catch (e:Error)
            {
                displayError("File is not a compatible image");
                ;
                
                
                return;
            }
            finally
            {
                this.browse_loader = null;
                this.browse_ba = null;
            }
            if (this.browse_avatar)
            {
                if (bd.width == 0 || bd.height == 0)
                {
                    this.displayError("Invalid image dimensions");
                    return;
                }
                if (bd.width != bd.height || bd.width > 600)
                {
                    new_dim = bd.width >= 600 ? (600) : (bd.width);
                    if (bd.height < new_dim)
                    {
                        new_dim = bd.height;
                    }
                    new_bd = new BitmapData(new_dim, new_dim);
                    matrix = new Matrix();
                    matrix.scale(new_dim / bd.width, new_dim / bd.height);
                    new_bd.draw(bd, matrix, null, null, null, true);
                    this.abLoadImage(new JPGEncoder(85).encode(new_bd));
                    return;
                }
                else if (type != "image/jpeg")
                {
                    this.abLoadImage(new JPGEncoder(85).encode(bd));
                    return;
                }
                this.new_avatar = "upload";
                this.new_avatar2 = Base64.encodeByteArray(ba);
                this.avatar_mc.useBitmapData(bd);
                if (this.outlined_avatar != null)
                {
                    this.outlined_avatar.setOutline(false);
                }
                this.outlined_avatar = null;
            }
            else
            {
                if (bd.width != 400 || !(bd.height == 580 || bd.height == 1160 || bd.height == 1740))
                {
                    this.displayError("Invalid image dimensions");
                    return;
                }
                if (type != "image/png")
                {
                    this.abLoadImage(PNGEncoder.encode(bd));
                    return;
                }
                this.new_back = "upload";
                this.new_back2 = Base64.encodeByteArray(ba);
                this.back_mc.disable(-1);
                this.save_profile_btn.enabled = true;
                this.back_mc.useBitmapData(bd);
                this.color1_cp.visible = true;
                this.color2_cp.visible = true;
                this.card_back_idx = -1;
                this.back_left_btn.visible = false;
                this.back_right_btn.visible = this.card_back_idx < (this.backs.length - 1);
            }
            return;
        }// end function

        public function abLoadErrorE(event:IOErrorEvent)
        {
            this.browse_loader = null;
            this.browse_ba = null;
            this.displayError("File is not a compatible image");
            return;
        }// end function

        public function changePasswordEnterHandler()
        {
            switch(stage.focus)
            {
                case this.current_txt.textField:
                case this.new_txt.textField:
                case this.confirm_txt.textField:
                case this.change_btn.textField:
                {
                    this.changePasswordE();
                    break;
                }
                case this.password_exit_btn:
                {
                    this.returnToMainE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function passwordIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 != null)
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                if (_loc_2 == "Change password")
                {
                    this.changePasswordResponse(_loc_3);
                }
            }
            return;
        }// end function

        public function changePasswordE(event:MouseEvent = null)
        {
            if (this.current_txt.text == "")
            {
                this.displayError("Current password is blank");
                return;
            }
            if (this.new_txt.text == "")
            {
                this.displayError("New password is blank");
                return;
            }
            if (this.confirm_txt.text == "")
            {
                this.displayError("New password confirmation is blank");
                return;
            }
            if (this.new_txt.text != this.confirm_txt.text)
            {
                this.displayError("New password does not match new password confirmation");
                return;
            }
            this.Send(["Change password", this.current_txt.text, this.new_txt.text]);
            this.lock();
            return;
        }// end function

        public function changePasswordResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage("Password has been changed", this.returnToMainE);
            this.current_txt.text = "";
            this.new_txt.text = "";
            this.confirm_txt.text = "";
            this.password = param1[0];
            return;
        }// end function

        public function adminEnterHandler()
        {
            switch(stage.focus)
            {
                case this.status_username_txt.textField:
                case this.get_ban_status_btn:
                {
                    this.banStatusE();
                    break;
                }
                case this.ban_username_txt.textField:
                case this.days_txt.textField:
                case this.days_rb:
                case this.forever_rb:
                case this.reason_txt.textField:
                case this.increment_strikes_cb:
                case this.ban_user_btn:
                {
                    this.banUserE();
                    break;
                }
                case this.unban_username_txt.textField:
                case this.decrement_strikes_cb:
                case this.unban_user_btn:
                {
                    this.unbanUserE();
                    break;
                }
                case this.kick_username_txt.textField:
                case this.kick_user_btn:
                {
                    this.kickUserE();
                    break;
                }
                case this.warning_username_txt.textField:
                case this.warning_txt.textField:
                case this.increment_strikes2_cb:
                case this.add_warning_btn:
                {
                    this.addWarningE();
                    break;
                }
                case this.admin_exit_btn:
                {
                    this.returnToMainE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function adminIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 != null)
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                switch(_loc_2)
                {
                    case "Ban status":
                    {
                        this.banStatusResponse(_loc_3);
                        break;
                    }
                    case "Ban user":
                    {
                        this.banUserResponse(_loc_3);
                        break;
                    }
                    case "Unban user":
                    {
                        this.unbanUserResponse(_loc_3);
                        break;
                    }
                    case "Kick user":
                    {
                        this.kickUserResponse(_loc_3);
                        break;
                    }
                    case "Add warning":
                    {
                        this.addWarningResponse(_loc_3);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return;
        }// end function

        public function adminNextE(event:MouseEvent)
        {
            this.gotoAndStop("admin2_start");
            return;
        }// end function

        public function banStatusE(event:MouseEvent = null)
        {
            if (this.status_username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Ban status", this.status_username_txt.text]);
            this.lock();
            return;
        }// end function

        public function banStatusResponse(param1:Array)
        {
            this.unlock();
            this.status_txt.text = param1[0];
            this.strikes_txt.text = param1[1];
            this.ban_note_txt.htmlText = StringUtils.escapeHtmlWithLinks(param1[2]);
            return;
        }// end function

        public function banUserE(event:MouseEvent = null)
        {
            var _loc_2:String = null;
            if (this.ban_username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            if (this.days_rb.selected)
            {
                if (this.days_txt.text == "")
                {
                    this.displayError("Number of days for ban is blank");
                    return;
                }
                if (this.days_txt.text == "0")
                {
                    this.displayError("You must ban a user for at least 1 day");
                    return;
                }
                _loc_2 = this.days_txt.text;
            }
            else if (this.forever_rb.selected)
            {
                _loc_2 = "Forever";
            }
            else
            {
                this.displayError("Ban time is not selected");
                return;
            }
            this.Send(["Ban user", this.ban_username_txt.text, _loc_2, this.increment_strikes_cb.selected, this.reason_txt.text]);
            this.ban_username = this.ban_username_txt.text;
            this.lock();
            return;
        }// end function

        public function banUserResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage(this.ban_username + " has been banned");
            return;
        }// end function

        public function setBanTimeGroup()
        {
            var _loc_1:RadioButtonGroup = null;
            _loc_1 = new RadioButtonGroup("BanTime");
            this.days_rb.group = _loc_1;
            this.forever_rb.group = _loc_1;
            return;
        }// end function

        public function banTimeChangeE(event:Event)
        {
            if (this.days_txt == null || this.days_rb == null)
            {
                return;
            }
            this.days_txt.enabled = this.days_rb.selected;
            return;
        }// end function

        public function daysSwitchE(event:MouseEvent)
        {
            this.days_rb.selected = true;
            this.days_txt.enabled = true;
            this.days_txt.setFocus();
            return;
        }// end function

        public function unbanUserE(event:MouseEvent = null)
        {
            if (this.unban_username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Unban user", this.unban_username_txt.text, this.decrement_strikes_cb.selected]);
            this.ban_username = this.unban_username_txt.text;
            this.lock();
            return;
        }// end function

        public function unbanUserResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage(this.ban_username + " has been unbanned");
            return;
        }// end function

        public function kickUserE(event:MouseEvent = null)
        {
            if (this.kick_username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Kick user", this.kick_username_txt.text]);
            this.ban_username = this.kick_username_txt.text;
            this.lock();
            return;
        }// end function

        public function kickUserResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage(this.ban_username + " has been kicked");
            return;
        }// end function

        public function addWarningE(event:MouseEvent = null)
        {
            if (this.warning_username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Add warning", this.warning_username_txt.text, this.increment_strikes2_cb.selected, this.warning_txt.text]);
            this.ban_username = this.warning_username_txt.text;
            this.lock();
            return;
        }// end function

        public function addWarningResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage("Warning note has been added to " + this.ban_username + "\'s record");
            return;
        }// end function

        public function admin2EnterHandler()
        {
            switch(stage.focus)
            {
                case this.ip_username_txt.textField:
                case this.check_ip_btn:
                {
                    this.ipCheckE();
                    break;
                }
                case this.comp_username_txt.textField:
                case this.check_comp_btn:
                {
                    this.computerCheckE();
                    break;
                }
                case this.admin_status_mc.username_txt.textField:
                {
                    this.getAdminE();
                    break;
                }
                case this.admin_status_mc.status_cb:
                case this.admin_status_mc.save_btn:
                {
                    this.setAdminE();
                    break;
                }
                case this.reset_stats_mc.username_txt.textField:
                case this.reset_stats_mc.reset_btn:
                {
                    this.resetStatsE();
                    break;
                }
                case this.super_ban_mc.username_txt.textField:
                case this.super_ban_mc.ban_btn:
                {
                    this.superBanE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function admin2IncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 != null)
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                switch(_loc_2)
                {
                    case "IP check":
                    {
                        this.ipCheckResponse(_loc_3);
                        break;
                    }
                    case "Computer check":
                    {
                        this.computerCheckResponse(_loc_3);
                        break;
                    }
                    case "Get admin":
                    {
                        this.getAdminResponse(_loc_3);
                        break;
                    }
                    case "Set admin":
                    {
                        this.setAdminResponse(_loc_3);
                        break;
                    }
                    case "Reset stats":
                    {
                        this.resetStatsResponse(_loc_3);
                        break;
                    }
                    case "Super ban":
                    {
                        this.superBanResponse(_loc_3);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return;
        }// end function

        public function adminPrevE(event:MouseEvent)
        {
            this.gotoAndStop("admin_start");
            return;
        }// end function

        public function ipCheckE(event:MouseEvent = null)
        {
            if (this.ip_username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["IP check", this.ip_username_txt.text]);
            this.lock();
            return;
        }// end function

        public function ipCheckResponse(param1:Array)
        {
            this.unlock();
            this.alts_txt.text = param1[0];
            return;
        }// end function

        public function computerCheckE(event:MouseEvent = null)
        {
            if (this.comp_username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Computer check", this.comp_username_txt.text]);
            this.lock();
            return;
        }// end function

        public function computerCheckResponse(param1:Array)
        {
            this.unlock();
            this.comp_alts_txt.text = param1[0];
            return;
        }// end function

        public function getAdminE(event:MouseEvent = null)
        {
            if (this.admin_status_mc.username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Get admin", this.admin_status_mc.username_txt.text]);
            this.lock();
            return;
        }// end function

        public function getAdminResponse(param1:Array)
        {
            var _loc_2:int = 0;
            this.unlock();
            this.admin_username = this.admin_status_mc.username_txt.text;
            _loc_2 = param1[0];
            if (_loc_2 >= 3)
            {
                this.admin_status_mc.status_cb.enabled = false;
                this.admin_status_mc.status_cb.selectedIndex = -1;
                if (_loc_2 == 3)
                {
                    this.admin_status_mc.status_cb.prompt = "Head Administrator";
                }
                else if (_loc_2 == 4)
                {
                    this.admin_status_mc.status_cb.prompt = "Owner";
                }
                this.admin_username = null;
                this.admin_status_mc.save_btn.enabled = false;
            }
            else
            {
                this.admin_status_mc.status_cb.enabled = true;
                this.admin_status_mc.status_cb.selectedIndex = _loc_2;
                this.admin_status_mc.save_btn.enabled = true;
            }
            return;
        }// end function

        public function adminStatusUsernameChangeE(event:Event)
        {
            this.admin_status_mc.save_btn.enabled = this.admin_status_mc.username_txt.text == this.admin_username;
            return;
        }// end function

        public function setAdminE(event:MouseEvent = null)
        {
            if (!this.admin_status_mc.save_btn.enabled)
            {
                return;
            }
            this.Send(["Set admin", this.admin_status_mc.username_txt.text, this.admin_status_mc.status_cb.selectedItem.data]);
            this.lock();
            return;
        }// end function

        public function setAdminResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage(this.admin_status_mc.username_txt.text + "\'s admin status has been saved");
            return;
        }// end function

        public function resetStatsE(event:MouseEvent = null)
        {
            if (this.reset_stats_mc.username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Reset stats", this.reset_stats_mc.username_txt.text]);
            this.lock();
            return;
        }// end function

        public function resetStatsResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage(this.reset_stats_mc.username_txt.text + "\'s stats have been reset");
            return;
        }// end function

        public function superBanE(event:MouseEvent = null)
        {
            if (this.super_ban_mc.username_txt.text == "")
            {
                this.displayError("Username is blank");
                return;
            }
            this.Send(["Super ban", this.super_ban_mc.username_txt.text]);
            this.lock();
            return;
        }// end function

        public function superBanResponse(param1:Array)
        {
            this.unlock();
            this.displayMessage(this.super_ban_mc.username_txt.text + " has been super banned");
            return;
        }// end function

        public function rankingsEnterHandler()
        {
            switch(stage.focus)
            {
                case this.rankings_exit_btn:
                {
                    this.returnToMainE();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function rankingsIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            if (param1 == null)
            {
                if (!this.rankings_init)
                {
                    this.returnToMainE();
                }
            }
            else
            {
                _loc_2 = param1[0];
                _loc_3 = param1;
                _loc_3.reverse();
                _loc_3.pop();
                _loc_3.reverse();
                switch(_loc_2)
                {
                    case "Ranking by rating":
                    {
                        this.match_select_mc.visible = true;
                        this.by_rating_mc.setActivated(true);
                        this.by_wins_mc.setActivated(false);
                        this.by_reputation_mc.setActivated(false);
                        this.by_total_reputation_mc.setActivated(false);
                        this.by_rating_heading_mc.visible = true;
                        this.by_wins_heading_mc.visible = false;
                        this.by_reputation_heading_mc.visible = false;
                        this.by_total_reputation_heading_mc.visible = false;
                        this.rankingResponse(_loc_3);
                        this.rankings_init = true;
                        break;
                    }
                    case "Ranking by wins":
                    {
                        this.match_select_mc.visible = true;
                        this.by_rating_mc.setActivated(false);
                        this.by_wins_mc.setActivated(true);
                        this.by_reputation_mc.setActivated(false);
                        this.by_total_reputation_mc.setActivated(false);
                        this.by_rating_heading_mc.visible = false;
                        this.by_wins_heading_mc.visible = true;
                        this.by_reputation_heading_mc.visible = false;
                        this.by_total_reputation_heading_mc.visible = false;
                        this.rankingResponse(_loc_3);
                        break;
                    }
                    case "Ranking by reputation":
                    {
                        this.match_select_mc.visible = true;
                        this.by_rating_mc.setActivated(false);
                        this.by_wins_mc.setActivated(false);
                        this.by_reputation_mc.setActivated(true);
                        this.by_total_reputation_mc.setActivated(false);
                        this.by_rating_heading_mc.visible = false;
                        this.by_wins_heading_mc.visible = false;
                        this.by_reputation_heading_mc.visible = true;
                        this.by_total_reputation_heading_mc.visible = false;
                        this.rankingResponse(_loc_3);
                        break;
                    }
                    case "Ranking by total reputation":
                    {
                        this.match_select_mc.visible = false;
                        this.by_rating_mc.setActivated(false);
                        this.by_wins_mc.setActivated(false);
                        this.by_reputation_mc.setActivated(false);
                        this.by_total_reputation_mc.setActivated(true);
                        this.by_rating_heading_mc.visible = false;
                        this.by_wins_heading_mc.visible = false;
                        this.by_reputation_heading_mc.visible = false;
                        this.by_total_reputation_heading_mc.visible = true;
                        this.rankingResponse(_loc_3);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return;
        }// end function

        public function rankingByRatingE(event:MouseEvent = null)
        {
            this.ranking_match = this.match_select_mc.match_rb.selected;
            this.Send(["Ranking by rating", this.ranking_match]);
            this.lock();
            return;
        }// end function

        public function rankingByWinsE(event:MouseEvent = null)
        {
            this.ranking_match = this.match_select_mc.match_rb.selected;
            this.Send(["Ranking by wins", this.ranking_match]);
            this.lock();
            return;
        }// end function

        public function rankingByReputationE(event:MouseEvent = null)
        {
            this.ranking_match = this.match_select_mc.match_rb.selected;
            this.Send(["Ranking by reputation", this.ranking_match]);
            this.lock();
            return;
        }// end function

        public function rankingByTotalReputationE(event:MouseEvent = null)
        {
            this.ranking_match = this.match_select_mc.match_rb.selected;
            this.Send(["Ranking by total reputation"]);
            this.lock();
            return;
        }// end function

        public function changeMatchE(event:Event)
        {
            if (this.manual_match_change || this.match_select_mc == null)
            {
                return;
            }
            if (this.by_rating_heading_mc.visible)
            {
                this.rankingByRatingE();
            }
            else if (this.by_wins_heading_mc.visible)
            {
                this.rankingByWinsE();
            }
            else if (this.by_reputation_heading_mc.visible)
            {
                this.rankingByReputationE();
            }
            this.manual_match_change = true;
            if (this.match_select_mc.match_rb.selected)
            {
                this.match_select_mc.single_rb.selected = true;
            }
            else
            {
                this.match_select_mc.match_rb.selected = true;
            }
            this.manual_match_change = false;
            return;
        }// end function

        public function rankingResponse(param1:Array)
        {
            var _loc_2:* = undefined;
            this.unlock();
            this.content_sp.source.clear();
            _loc_2 = 0;
            while (_loc_2 < param1.length)
            {
                
                this.content_sp.source.addEntry(param1[_loc_2], param1[(_loc_2 + 1)], param1[_loc_2 + 2], param1[_loc_2 + 3], param1[_loc_2 + 4], param1[_loc_2 + 5]);
                _loc_2 = _loc_2 + 6;
            }
            this.content_sp.update();
            this.manual_match_change = true;
            if (this.ranking_match)
            {
                this.match_select_mc.match_rb.selected = true;
            }
            else
            {
                this.match_select_mc.single_rb.selected = true;
            }
            this.manual_match_change = false;
            return;
        }// end function

        public function gotoDuel(param1:String, param2:Boolean, param3:Boolean, param4:Array)
        {
            this.track("duel");
            this.duel_starting = true;
            this.duelist = param2;
            this.rated_duel = param3;
            this.duel_args = param4;
            gotoAndStop("blank");
            switch(param1)
            {
                case "Rock-paper-scissors":
                {
                    gotoAndStop("rps_start");
                    break;
                }
                case "Turn pick":
                {
                    gotoAndStop("tp_start");
                    break;
                }
                case "Duel":
                {
                    gotoAndStop("duel_start");
                    break;
                }
                case "Siding":
                {
                    gotoAndStop("siding_start");
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function duelCommonInitialize() : Array
        {
            var username1:String;
            var avatar1:String;
            var back1:String;
            var color11:int;
            var color21:int;
            var rating1:*;
            var reputation1:*;
            var username2:String;
            var avatar2:String;
            var back2:String;
            var color12:int;
            var color22:int;
            var rating2:*;
            var reputation2:*;
            var watcher_list_str:String;
            var watcher_list:Array;
            var duel_log_str:String;
            var duel_log:Array;
            var hideRefreshButtonE:Function;
            var remaining_args:Array;
            var startWatchersPrivateE:Function;
            var watcherListKeyboardHandlerE:Function;
            hideRefreshButtonE = function (event:Event)
            {
                calls_mc.log_mc.refresh_btn.visible = false;
                return;
            }// end function
            ;
            startWatchersPrivateE = function (event:MouseEvent = null)
            {
                if (watchers_mc.watchers_mc.selectedIndex < 0)
                {
                    return;
                }
                if (watchers_mc.watchers_mc.selectedItem.data == username)
                {
                    displayError("You cannot open a private chat with yourself");
                    return;
                }
                openPrivateChat(watchers_mc.watchers_mc.selectedItem.data);
                return;
            }// end function
            ;
            watcherListKeyboardHandlerE = function (event:KeyboardEvent)
            {
                if (event.keyCode == 13)
                {
                    startWatchersPrivateE();
                }
                return;
            }// end function
            ;
            if (currentFrameLabel != "siding_start")
            {
                this.preloadPictures();
            }
            this.duel_hidden_mc.addEventListener(Event.REMOVED_FROM_STAGE, this.clearPicturesE);
            this.duel_starting = false;
            this.match_type = this.duel_args[0];
            username1 = this.duel_args[1];
            avatar1 = this.duel_args[2];
            back1 = this.duel_args[3];
            color11 = this.duel_args[4];
            color21 = this.duel_args[5];
            rating1 = this.duel_args[6];
            reputation1 = this.duel_args[7];
            if (this.duel_args[8] == "true")
            {
                this.avatar_back1_mc.setDonator();
            }
            username2 = this.duel_args[9];
            avatar2 = this.duel_args[10];
            back2 = this.duel_args[11];
            color12 = this.duel_args[12];
            color22 = this.duel_args[13];
            rating2 = this.duel_args[14];
            reputation2 = this.duel_args[15];
            if (this.duel_args[16] == "true")
            {
                this.avatar_back2_mc.setDonator();
            }
            watcher_list_str = this.duel_args[17];
            watcher_list = watcher_list_str == "" ? ([]) : (StringUtils.stringToArray(watcher_list_str));
            duel_log_str = this.duel_args[18];
            duel_log = duel_log_str == "" ? ([]) : (StringUtils.stringToArray(duel_log_str));
            this.calls_mc.log_mc.showLog(duel_log, username1, username2);
            this.duel_hidden_mc.addEventListener(Event.REMOVED_FROM_STAGE, hideRefreshButtonE);
            remaining_args = this.duel_args.slice(19);
            this.duel_args = null;
            this.username1_mc.setUsername(username1);
            this.username2_mc.setUsername(username2);
            this.avatar1_mc.setPicture(avatar1 == "" ? ("") : (this.AVATAR_START + avatar1));
            this.gone1_mc.visible = false;
            this.avatar2_mc.setPicture(avatar2 == "" ? ("") : (this.AVATAR_START + avatar2));
            this.gone2_mc.visible = false;
            this.back_loader1 = new BackLoader(this.BACK_START, back1, color11, color21);
            this.back_loader2 = new BackLoader(this.BACK_START, back2, color12, color22);
            this.rating_rep1_mc.setRatingRep(rating1, reputation1);
            this.rating_rep2_mc.setRatingRep(rating2, reputation2);
            this.status1_mc.status = "";
            this.status2_mc.status = "";
            this.watchers_mc.initialize(watcher_list);
            this.watchers_mc.watchers_mc.addEventListener(MouseEvent.DOUBLE_CLICK, startWatchersPrivateE);
            this.watchers_mc.watchers_mc.addEventListener(KeyboardEvent.KEY_DOWN, watcherListKeyboardHandlerE);
            this.watch_btn.visible = true;
            this.watch_icon_mc.visible = true;
            this.watch_btn.addEventListener(MouseEvent.MOUSE_OVER, this.showWatchTooltipE);
            this.watch_btn.addEventListener(MouseEvent.MOUSE_OUT, this.hideWatchTooltipE);
            this.watch_chat_mc = new WatchChat();
            this.watch_chat_mc.x = 3;
            this.watch_chat_mc.y = 3;
            this.chat_hidden_mc.addChild(this.watch_chat_mc);
            this.duel_hidden_mc.addEventListener(Event.REMOVED_FROM_STAGE, this.removeWatchChatE);
            this.watch_btn.addEventListener(MouseEvent.CLICK, this.toggleWatchE);
            this.watch_chat_mc.minimize_btn.addEventListener(MouseEvent.CLICK, this.toggleWatchE);
            this.watch_chat_mc.addEventListener(MouseEvent.MOUSE_DOWN, this.moveChatWindowToFrontE);
            this.updateWatchChatLock();
            if (!this.duelist && !this.admin)
            {
                this.duel_chat_mc.cout_txt.height = this.duel_chat_mc.cout_txt.height + 25;
                this.cin_txt.visible = false;
            }
            if (this.admin)
            {
                this.cin_txt.maxChars = 500;
                this.watch_chat_mc.cin_txt.maxChars = 500;
            }
            this.watchHtmlText = "";
            this.watchHtmlLines = 0;
            this.duelHtmlText = "";
            if (this.duelist)
            {
                this.defeat_btn.addEventListener(MouseEvent.CLICK, this.admitDefeatE);
                this.defeat_btn.useHandCursor = true;
                this.draw_btn.addEventListener(MouseEvent.CLICK, this.offerDrawE);
                this.draw_btn.useHandCursor = true;
                if (this.rated_duel)
                {
                    this.call_admin_btn.addEventListener(MouseEvent.CLICK, this.duelCallAdminE);
                    this.call_admin_btn.useHandCursor = true;
                }
                else
                {
                    this.call_admin_btn.enabled = false;
                }
                this.rematch_btn.addEventListener(MouseEvent.CLICK, this.offerRematchE);
                this.rematch_btn.useHandCursor = true;
            }
            else if (this.admin)
            {
                this.loss1_btn.addEventListener(MouseEvent.CLICK, this.loss1E);
                this.loss1_btn.useHandCursor = true;
                this.loss2_btn.addEventListener(MouseEvent.CLICK, this.loss2E);
                this.loss2_btn.useHandCursor = true;
                this.cancel_duel_btn.addEventListener(MouseEvent.CLICK, this.duelCancelDuelE);
                this.cancel_duel_btn.useHandCursor = true;
            }
            this.call_admin_btn.visible = this.duelist;
            this.rematch_btn.visible = false;
            this.duel_quit_btn.addEventListener(MouseEvent.CLICK, this.duelQuitE);
            this.duel_quit_btn.useHandCursor = true;
            if (currentFrameLabel != "siding_start")
            {
                this.tweensInit();
            }
            this.duel_hidden_mc.addEventListener(Event.REMOVED_FROM_STAGE, this.stopTweensE);
            this.enter_handler = this.duelEnterHandler;
            this.incoming_handler = this.duelIncomingHandler;
            this.duel_over = false;
            this.over_mc.visible = false;
            this.rps_match = false;
            return remaining_args;
        }// end function

        public function removeWatchChatE(event:Event)
        {
            this.chat_hidden_mc.removeChild(this.watch_chat_mc);
            this.watch_chat_mc = null;
            this.watch_btn.visible = false;
            this.watch_icon_mc.visible = false;
            return;
        }// end function

        public function setDuelOver(param1:String, param2:Boolean = false, param3:Boolean = false)
        {
            this.duel_over = true;
            this.no_duel_winner = param3;
            this.defeat_btn.enabled = false;
            this.draw_btn.enabled = false;
            this.call_admin_btn.enabled = false;
            if (this.duelist && !param2)
            {
                this.call_admin_btn.visible = false;
                this.rematch_btn.visible = true;
            }
            if (!this.duelist)
            {
                this.over_mc.text_txt.text = param1;
                this.over_mc.visible = true;
            }
            switch(currentFrameLabel)
            {
                case "rps_start":
                {
                    this.rock1_mc.clickHandler = null;
                    this.paper1_mc.clickHandler = null;
                    this.scissors1_mc.clickHandler = null;
                    break;
                }
                case "tp_start":
                {
                    this.first_mc.clickHandler = null;
                    this.second_mc.clickHandler = null;
                    break;
                }
                case "siding_start":
                {
                    this.disableSiding();
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function duelEnterHandler()
        {
            var _loc_1:String = null;
            var _loc_2:String = null;
            var _loc_3:String = null;
            var _loc_4:Array = null;
            switch(stage.focus)
            {
                case this.cin_txt.textField:
                {
                    _loc_2 = null;
                    if (this.duelist && currentFrameLabel == "duel_start")
                    {
                        _loc_3 = this.cin_txt.text;
                        _loc_3 = _loc_3.split(" ").join("");
                        if (_loc_3.match("^/sub[0-9]*$") != null)
                        {
                            _loc_1 = "-";
                            _loc_2 = _loc_3.substr(4);
                        }
                        else if (_loc_3.match("^/add[0-9]*$") != null)
                        {
                            _loc_1 = "";
                            _loc_2 = _loc_3.substr(4);
                        }
                    }
                    if (_loc_2 == null)
                    {
                        this.duelSendMessage();
                    }
                    else
                    {
                        _loc_4 = _loc_2.match("[1-9][0-9]*");
                        if (_loc_4 != null)
                        {
                            _loc_2 = _loc_4[0];
                            if (_loc_2.length > 6)
                            {
                                _loc_2 = "999999";
                            }
                            this.Send(["Duel", "Life points", _loc_1 + _loc_2]);
                            this.cin_txt.text = "";
                        }
                    }
                    break;
                }
                case this.watch_chat_mc.cin_txt.textField:
                {
                    this.watchSendMessage();
                    break;
                }
                case this.defeat_btn:
                {
                    this.admitDefeatE();
                    break;
                }
                case this.draw_btn:
                {
                    this.offerDrawE();
                    break;
                }
                case this.call_admin_btn:
                {
                    this.duelCallAdminE();
                    break;
                }
                case this.rematch_btn:
                {
                    this.offerRematchE();
                    break;
                }
                case this.duel_quit_btn:
                {
                    this.duelQuitE();
                    break;
                }
                case this.loss1_btn:
                {
                    this.loss1E();
                    break;
                }
                case this.loss2_btn:
                {
                    this.loss2E();
                    break;
                }
                case this.cancel_duel_btn:
                {
                    this.duelCancelDuelE();
                    break;
                }
                default:
                {
                    if (this.life_points_mc != null && stage.focus == this.life_points_mc.lp_txt.textField)
                    {
                        if (this.life_points_mc.lp_txt.text.match("^0*$") == null)
                        {
                            this.Send(["Duel", "Life points", this.life_points_mc.plus_minus_mc.sign() + this.life_points_mc.lp_txt.text]);
                        }
                        this.life_points_mc.lp_txt.text = "";
                    }
                    else if (this.done_siding_btn != null && stage.focus == this.done_siding_btn)
                    {
                        this.doneSidingE();
                    }
                    else if (this.swap_btn != null && stage.focus == this.swap_btn)
                    {
                        this.swapSidingE();
                    }
                    else if (this.reset_btn != null && stage.focus == this.reset_btn)
                    {
                        this.resetSidingE();
                    }
                    break;
                    break;
                }
            }
            return;
        }// end function

        public function duelSendMessage()
        {
            if (this.cin_txt.text == "")
            {
                return;
            }
            this.Send(["Duel message", this.cin_txt.text]);
            this.cin_txt.text = "";
            return;
        }// end function

        public function duelIncomingHandler(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            var _loc_4:String = null;
            var _loc_5:String = null;
            var _loc_6:Array = null;
            if (param1 == null)
            {
                return;
            }
            _loc_2 = param1[0];
            _loc_3 = param1;
            _loc_3.reverse();
            _loc_3.pop();
            _loc_3.reverse();
            switch(_loc_2)
            {
                case "Add watcher":
                {
                    this.watchers_mc.addUser(_loc_3[0], _loc_3[1]);
                    if (this.call_admin_btn.label == "Call Admin")
                    {
                        this.call_admin_btn.enabled = !this.duel_over && this.rated_duel && this.watchers_mc.num_admins_online == 0;
                    }
                    break;
                }
                case "Remove watcher":
                {
                    this.watchers_mc.removeUser(_loc_3[0]);
                    if (this.call_admin_btn.label == "Call Admin")
                    {
                        this.call_admin_btn.enabled = !this.duel_over && this.rated_duel && this.watchers_mc.num_admins_online == 0;
                    }
                    break;
                }
                case "Watch message":
                {
                    this.watchChatPrint(_loc_3[0], _loc_3[1], _loc_3[2]);
                    break;
                }
                case "Duel message":
                {
                    this.duelChatPrint(_loc_3[0], _loc_3[1], _loc_3[2]);
                    break;
                }
                case "Player quit":
                {
                    this.playerQuit(_loc_3);
                    break;
                }
                case "Rock-paper-scissors":
                {
                    this.rpsResponse(_loc_3);
                    break;
                }
                case "Turn pick":
                {
                    this.tpResponse(_loc_3);
                    break;
                }
                case "Win":
                {
                    this.winResponse(_loc_3);
                    break;
                }
                case "Lose":
                {
                    this.loseResponse(_loc_3);
                    break;
                }
                case "Offer draw":
                {
                    this.offerDrawResponse(_loc_3);
                    break;
                }
                case "Offered draw":
                {
                    this.offeredDrawResponse(_loc_3);
                    break;
                }
                case "Revoke draw":
                {
                    this.revokeDrawResponse(_loc_3);
                    break;
                }
                case "Revoked draw":
                {
                    this.revokedDrawResponse(_loc_3);
                    break;
                }
                case "Draw":
                {
                    this.drawResponse(_loc_3);
                    break;
                }
                case "Call admin":
                {
                    this.callAdminResponse(_loc_3);
                    break;
                }
                case "Offer rematch":
                {
                    this.offerRematchResponse(_loc_3);
                    break;
                }
                case "Offered rematch":
                {
                    this.offeredRematchResponse(_loc_3);
                    break;
                }
                case "Revoke rematch":
                {
                    this.revokeRematchResponse(_loc_3);
                    break;
                }
                case "Revoked rematch":
                {
                    this.revokedRematchResponse(_loc_3);
                    break;
                }
                case "Go to siding":
                {
                    this.duelChatAddLine("Siding for next duel has begun (" + _loc_3[0] + ")");
                    _loc_3.reverse();
                    _loc_3.pop();
                    _loc_3.reverse();
                    this.stopTweensE(null);
                    this.resetDuel();
                    this.gotoSiding(_loc_3);
                    break;
                }
                case "Cancel call":
                {
                    this.cancelCallResponse(_loc_3);
                    break;
                }
                case "Canceled":
                {
                    this.canceledResponse(_loc_3);
                    break;
                }
                case "Duel start":
                {
                    this.tpDuelPrep(_loc_3);
                    break;
                }
                case "Duel":
                {
                    this.duelAction(_loc_3);
                    break;
                }
                case "Done siding":
                {
                    _loc_4 = _loc_3[0];
                    if (_loc_4 == this.username)
                    {
                        this.done_siding_btn.visible = false;
                    }
                    if (_loc_4 == this.username1_mc.username_txt.text)
                    {
                        this.siding1_mc.visible = true;
                    }
                    else if (_loc_4 == this.username2_mc.username_txt.text)
                    {
                        this.siding2_mc.visible = true;
                    }
                    break;
                }
                case "Go to rock-paper-scissors":
                {
                    this.rps_match = false;
                    if (currentFrameLabel == "siding_start")
                    {
                        if (this.match_type == "m")
                        {
                            this.rps_match = true;
                        }
                    }
                    else if (this.match_type == "n")
                    {
                        this.duelChatAddLine("Starting new single");
                    }
                    else if (this.match_type == "m")
                    {
                        this.duelChatAddLine("Starting new match");
                    }
                    this.tweensInit();
                    this.resetDuel();
                    this.preloadPictures();
                    gotoAndStop("rps_start");
                    break;
                }
                case "Go to turn pick":
                {
                    this.tweensInit();
                    this.resetDuel();
                    this.preloadPictures();
                    this.addTurnPickTweens(_loc_3[0] == this.username);
                    break;
                }
                case "Duel log":
                {
                    _loc_5 = _loc_3[0];
                    _loc_6 = _loc_5 == "" ? ([]) : (StringUtils.stringToArray(_loc_5));
                    this.calls_mc.log_mc.showLog(_loc_6, this.username1_mc.username_txt.text, this.username2_mc.username_txt.text, true);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function resetDuel()
        {
            if (!this.duel_over)
            {
                return;
            }
            this.call_admin_btn.visible = this.duelist;
            this.rematch_btn.visible = false;
            this.duel_over = false;
            this.over_mc.visible = false;
            this.defeat_btn.enabled = true;
            this.draw_btn.enabled = true;
            this.draw_btn.label = "Offer Draw";
            this.call_admin_btn.enabled = this.rated_duel && this.watchers_mc.num_admins_online == 0;
            this.call_admin_btn.label = "Call Admin";
            this.rematch_btn.label = "Offer Rematch";
            this.status1_mc.status = "";
            this.status2_mc.status = "";
            return;
        }// end function

        public function watchChatPrint(param1:String, param2:String, param3:int)
        {
            var _loc_4:* = undefined;
            var _loc_5:Number = NaN;
            var _loc_6:Boolean = false;
            var _loc_7:Boolean = false;
            var _loc_8:String = null;
            var _loc_9:String = null;
            _loc_4 = this.watch_chat_mc.cout_txt.verticalScrollPosition;
            _loc_5 = this.watch_chat_mc.cout_txt.maxVerticalScrollPosition;
            _loc_6 = _loc_4 == _loc_5;
            _loc_7 = this.watchHtmlLines == 200;
            if (_loc_7)
            {
                this.watchHtmlText = this.watchHtmlText.substr(this.watchHtmlText.indexOf("<br />") + 6);
                this.watch_chat_mc.cout_txt.htmlText = this.watchHtmlText;
                this.watch_chat_mc.cout_txt.verticalScrollPosition = _loc_4;
                _loc_4 = _loc_4 - (_loc_5 - this.watch_chat_mc.cout_txt.maxVerticalScrollPosition);
                if (_loc_4 < 0)
                {
                    _loc_4 = 0;
                }
            }
            else
            {
                var _loc_10:String = this;
                var _loc_11:* = this.watchHtmlLines + 1;
                _loc_10.watchHtmlLines = _loc_11;
            }
            if (param1 == this.username1_mc.username_txt.text || param1 == this.username2_mc.username_txt.text)
            {
                _loc_9 = "#660099";
            }
            else
            {
                switch(param3)
                {
                    case 0:
                    {
                        _loc_9 = param1 == this.username ? ("#FF0000") : ("#0000FF");
                        break;
                    }
                    case 1:
                    {
                        _loc_9 = "#009900";
                        break;
                    }
                    case 2:
                    {
                        _loc_9 = "#707070";
                        break;
                    }
                    case 3:
                    {
                        _loc_9 = "#CC9900";
                        break;
                    }
                    case 4:
                    {
                        _loc_9 = "#CC9900";
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            _loc_8 = StringUtils.escapeAndColorSender(param1, _loc_9) + StringUtils.escapeHtmlWithLinks(param2);
            if (this.watchHtmlText != "")
            {
                _loc_8 = "<br />" + _loc_8;
            }
            this.watchHtmlText = this.watchHtmlText + _loc_8;
            this.watch_chat_mc.cout_txt.htmlText = this.watchHtmlText;
            this.watch_chat_mc.cout_txt.verticalScrollPosition = _loc_4;
            if (_loc_6)
            {
                this.watch_chat_mc.cout_txt.verticalScrollPosition = this.watch_chat_mc.cout_txt.maxVerticalScrollPosition;
            }
            return;
        }// end function

        public function duelChatPrint(param1:String, param2:String, param3:int)
        {
            var _loc_4:String = null;
            if (param1 == this.username1_mc.username_txt.text)
            {
                _loc_4 = "#FF0000";
            }
            else if (param1 == this.username2_mc.username_txt.text)
            {
                _loc_4 = "#0000FF";
            }
            else
            {
                switch(param3)
                {
                    case 1:
                    {
                        _loc_4 = "#009900";
                        break;
                    }
                    case 2:
                    {
                        _loc_4 = "#707070";
                        break;
                    }
                    case 3:
                    {
                        _loc_4 = "#CC9900";
                        break;
                    }
                    case 4:
                    {
                        _loc_4 = "#CC9900";
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            this.writeDuelChatLine(StringUtils.escapeAndColorSender(param1, _loc_4) + StringUtils.escapeHtmlWithLinks(param2));
            return;
        }// end function

        public function duelChatAddLine(param1:String)
        {
            this.writeDuelChatLine("<b>" + StringUtils.escapeHtml(param1) + "</b>");
            return;
        }// end function

        public function writeDuelChatLine(param1:String)
        {
            var _loc_2:* = undefined;
            var _loc_3:Number = NaN;
            var _loc_4:Boolean = false;
            _loc_2 = this.duel_chat_mc.cout_txt.verticalScrollPosition;
            _loc_3 = this.duel_chat_mc.cout_txt.maxVerticalScrollPosition;
            _loc_4 = _loc_2 == _loc_3;
            if (this.duelHtmlText != "")
            {
                param1 = "<br />" + param1;
            }
            this.duelHtmlText = this.duelHtmlText + param1;
            this.duel_chat_mc.cout_txt.htmlText = this.duelHtmlText;
            this.duel_chat_mc.cout_txt.verticalScrollPosition = _loc_2;
            if (_loc_4)
            {
                this.duel_chat_mc.cout_txt.verticalScrollPosition = this.duel_chat_mc.cout_txt.maxVerticalScrollPosition;
            }
            return;
        }// end function

        public function playerQuit(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Boolean = false;
            var _loc_4:String = null;
            var _loc_5:* = undefined;
            var _loc_6:Boolean = false;
            var _loc_7:* = undefined;
            var _loc_8:Sound = null;
            _loc_2 = param1[0];
            _loc_3 = _loc_2 == this.username2_mc.username_txt.text;
            _loc_4 = _loc_3 ? (this.username1_mc.username_txt.text) : (this.username2_mc.username_txt.text);
            if (param1.length >= 2)
            {
                _loc_5 = param1[1];
                if (_loc_3)
                {
                    _loc_7 = _loc_5 - this.rating_rep1_mc.rating;
                    this.rating_rep1_mc.setRatingRep(_loc_5, this.rating_rep1_mc.reputation);
                }
                else
                {
                    _loc_7 = _loc_5 - this.rating_rep2_mc.rating;
                    this.rating_rep2_mc.setRatingRep(_loc_5, this.rating_rep2_mc.reputation);
                }
                _loc_6 = this.match_type == "m";
                if (this.duelist)
                {
                    this.displayMessageWithTitle("Opponent Quit", "Your opponent quit the duel. You win" + (_loc_6 ? (" the match") : ("")) + "! Your rating has increased by " + _loc_7 + ".");
                    _loc_8 = new WinSound();
                    _loc_8.play();
                }
                else
                {
                    _loc_8 = new GameSuccessSound();
                    _loc_8.play();
                }
                this.setDuelOver("The duel has ended because " + _loc_2 + " quit.\n\n" + _loc_4 + " wins" + (_loc_6 ? (" the match") : ("")) + "!", true);
            }
            else if (!this.duel_over)
            {
                if (this.duelist)
                {
                    this.displayMessageWithTitle("Opponent Quit", "Your opponent quit the duel.");
                }
                _loc_8 = new GameFailureSound();
                _loc_8.play();
                this.setDuelOver("The duel has ended because " + _loc_2 + " quit.", true);
            }
            if (_loc_3)
            {
                this.gone2_mc.visible = true;
            }
            else
            {
                this.gone1_mc.visible = true;
            }
            this.rematch_btn.enabled = false;
            this.duelChatAddLine(_loc_2 + " has left the duel");
            return;
        }// end function

        public function admitDefeatE(event:MouseEvent = null)
        {
            var _loc_2:String = null;
            if (this.rated_duel)
            {
                if (this.match_type == "m")
                {
                    _loc_2 = " This is a rated match.";
                }
                else
                {
                    _loc_2 = " Doing so will result in a loss and rating reduction.";
                }
            }
            else
            {
                _loc_2 = "";
            }
            this.getConfirmation("Admit Defeat", "Are you sure you want to admit defeat?" + _loc_2, this.admitDefeat);
            return;
        }// end function

        public function admitDefeat(param1:Boolean)
        {
            if (param1)
            {
                this.Send(["Admit defeat"]);
            }
            return;
        }// end function

        public function winResponse(param1:Array)
        {
            var _loc_2:Boolean = false;
            var _loc_3:String = null;
            var _loc_4:String = null;
            var _loc_5:String = null;
            var _loc_6:String = null;
            var _loc_7:Boolean = false;
            var _loc_8:* = undefined;
            var _loc_9:String = null;
            var _loc_10:Sound = null;
            _loc_2 = param1[0] == "true";
            _loc_3 = param1[1];
            switch(_loc_3)
            {
                case "game loss":
                {
                    _loc_4 = "An admin gave your opponent a game loss.";
                    _loc_5 = "An admin gave " + this.username2_mc.username_txt.text + " a game loss";
                    _loc_6 = "The duel has ended because an admin gave " + this.username2_mc.username_txt.text + " a game loss.";
                    break;
                }
                case "match loss":
                {
                    _loc_4 = "An admin gave your opponent a match loss.";
                    _loc_5 = "An admin gave " + this.username2_mc.username_txt.text + " a match loss";
                    _loc_6 = "The duel has ended because an admin gave " + this.username2_mc.username_txt.text + " a match loss.";
                    break;
                }
                default:
                {
                    _loc_4 = "Your opponent admitted defeat.";
                    _loc_5 = this.username2_mc.username_txt.text + " admitted defeat";
                    _loc_6 = "The duel has ended because " + this.username2_mc.username_txt.text + " admitted defeat.";
                    break;
                    break;
                }
            }
            if (param1.length >= 6)
            {
                if (_loc_2)
                {
                    _loc_8 = param1[2] - this.rating_rep1_mc.rating;
                    _loc_9 = " Your rating has increased by " + _loc_8 + ".";
                }
                else
                {
                    _loc_9 = "";
                }
                this.rating_rep1_mc.setRatingRep(param1[2], param1[3]);
                this.rating_rep2_mc.setRatingRep(param1[4], param1[5]);
            }
            else
            {
                _loc_9 = "";
            }
            _loc_7 = this.match_type == "m" && _loc_2;
            if (this.duelist)
            {
                this.displayMessageWithTitle("You Win!", _loc_4 + " You win" + (_loc_7 ? (" the match") : ("")) + "!" + _loc_9);
                _loc_10 = new WinSound();
                _loc_10.play();
            }
            else
            {
                _loc_10 = new GameSuccessSound();
                _loc_10.play();
            }
            this.duelChatAddLine(_loc_5);
            this.setDuelOver(_loc_6 + "\n\n" + this.username1_mc.username_txt.text + " wins" + (_loc_7 ? (" the match") : ("")) + "!");
            return;
        }// end function

        public function loseResponse(param1:Array)
        {
            var _loc_2:Boolean = false;
            var _loc_3:String = null;
            var _loc_4:String = null;
            var _loc_5:String = null;
            var _loc_6:String = null;
            var _loc_7:Boolean = false;
            var _loc_8:* = undefined;
            var _loc_9:String = null;
            var _loc_10:Sound = null;
            _loc_2 = param1[0] == "true";
            _loc_3 = param1[1];
            switch(_loc_3)
            {
                case "game loss":
                {
                    _loc_4 = "An admin gave you a game loss.";
                    _loc_5 = "An admin gave " + this.username1_mc.username_txt.text + " a game loss";
                    _loc_6 = "The duel has ended because an admin gave " + this.username1_mc.username_txt.text + " a game loss.";
                    break;
                }
                case "match loss":
                {
                    _loc_4 = "An admin gave you a match loss.";
                    _loc_5 = "An admin gave " + this.username1_mc.username_txt.text + " a match loss";
                    _loc_6 = "The duel has ended because an admin gave " + this.username1_mc.username_txt.text + " a match loss.";
                    break;
                }
                default:
                {
                    _loc_4 = "You admitted defeat.";
                    _loc_5 = this.username1_mc.username_txt.text + " admitted defeat";
                    _loc_6 = "The duel has ended because " + this.username1_mc.username_txt.text + " admitted defeat.";
                    break;
                    break;
                }
            }
            if (param1.length >= 6)
            {
                if (_loc_2)
                {
                    _loc_8 = this.rating_rep1_mc.rating - param1[2];
                    _loc_9 = " Your rating has decreased by " + _loc_8 + ".";
                }
                else
                {
                    _loc_9 = "";
                }
                this.rating_rep1_mc.setRatingRep(param1[2], param1[3]);
                this.rating_rep2_mc.setRatingRep(param1[4], param1[5]);
            }
            else
            {
                _loc_9 = "";
            }
            _loc_7 = this.match_type == "m" && _loc_2;
            if (this.duelist)
            {
                this.displayMessageWithTitle("You Lose!", _loc_4 + " You lose" + (_loc_7 ? (" the match") : ("")) + "!" + _loc_9);
                _loc_10 = new LoseSound();
                _loc_10.play();
            }
            else
            {
                _loc_10 = new GameSuccessSound();
                _loc_10.play();
            }
            this.duelChatAddLine(_loc_5);
            this.setDuelOver(_loc_6 + "\n\n" + this.username2_mc.username_txt.text + " wins" + (_loc_7 ? (" the match") : ("")) + "!");
            return;
        }// end function

        public function offerDrawE(event:MouseEvent = null)
        {
            var _loc_2:String = null;
            var _loc_3:String = null;
            _loc_2 = this.draw_btn.label;
            if (this.rated_duel)
            {
                if (this.match_type == "m")
                {
                    _loc_3 = " This is a rated match.";
                }
                else
                {
                    _loc_3 = " A draw will affect your rating.";
                }
            }
            else
            {
                _loc_3 = "";
            }
            if (_loc_2 == "Revoke Draw")
            {
                this.Send(["Revoke draw"]);
            }
            else if (_loc_2 == "Accept Draw")
            {
                this.getConfirmation("Accept Draw Offer", "Are you sure you want to accept?" + _loc_3, this.acceptDraw);
            }
            else
            {
                this.getConfirmation("Offer Draw", "Are you sure you want to make a draw offer?" + _loc_3, this.offerDraw);
            }
            return;
        }// end function

        public function offerDraw(param1:Boolean)
        {
            if (param1)
            {
                this.Send(["Offer draw"]);
            }
            return;
        }// end function

        public function acceptDraw(param1:Boolean)
        {
            if (param1)
            {
                this.Send(["Accept draw"]);
            }
            return;
        }// end function

        public function offerDrawResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username1_mc.username_txt.text;
            if (this.duelist)
            {
                this.draw_btn.label = "Revoke Draw";
            }
            this.duelChatAddLine(_loc_2 + " has made a draw offer");
            return;
        }// end function

        public function offeredDrawResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username2_mc.username_txt.text;
            if (this.duelist)
            {
                this.draw_btn.label = "Accept Draw";
            }
            this.duelChatAddLine(_loc_2 + " has made a draw offer");
            return;
        }// end function

        public function revokeDrawResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username1_mc.username_txt.text;
            if (this.duelist)
            {
                this.draw_btn.label = "Offer Draw";
            }
            this.duelChatAddLine(_loc_2 + " has revoked the draw offer");
            return;
        }// end function

        public function revokedDrawResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username2_mc.username_txt.text;
            if (this.duelist)
            {
                this.draw_btn.label = "Offer Draw";
            }
            this.duelChatAddLine(_loc_2 + " has revoked the draw offer");
            return;
        }// end function

        public function drawResponse(param1:Array)
        {
            var _loc_2:Sound = null;
            var _loc_3:* = undefined;
            var _loc_4:String = null;
            if (param1.length >= 4)
            {
                _loc_3 = param1[0] - this.rating_rep1_mc.rating;
                if (this.match_type == "m")
                {
                    _loc_4 = "";
                }
                else if (_loc_3 > 0)
                {
                    _loc_4 = " Your rating has increased by " + _loc_3 + ".";
                }
                else if (_loc_3 < 0)
                {
                    _loc_4 = " Your rating has decreased by " + (-_loc_3) + ".";
                }
                else
                {
                    _loc_4 = " Your rating has remained unchanged.";
                }
                this.rating_rep1_mc.setRatingRep(param1[0], param1[1]);
                this.rating_rep2_mc.setRatingRep(param1[2], param1[3]);
            }
            else
            {
                _loc_4 = "";
            }
            if (this.duelist)
            {
                if (this.draw_btn.label == "Revoke Draw")
                {
                    this.displayMessageWithTitle("Draw Accepted", "Your opponent accepted your draw offer." + _loc_4);
                }
                else
                {
                    this.displayMessageWithTitle("Draw Accepted", "You accepted your opponent\'s draw offer." + _loc_4);
                }
            }
            _loc_2 = new GameSuccessSound();
            _loc_2.play();
            this.duelChatAddLine("The players have agreed on a draw");
            this.setDuelOver("The players have agreed on a draw.", false, true);
            return;
        }// end function

        public function duelCallAdminE(event:MouseEvent = null)
        {
            var _loc_2:String = null;
            _loc_2 = this.call_admin_btn.label;
            if (_loc_2 == "Cancel Call")
            {
                this.Send(["Cancel call"]);
            }
            else
            {
                this.getComboInput("Call Admin", "Select your issue:", ["Ruling", "Cheating", "Harassment", "AFK", "Glitch"], 0, this.duelCallAdmin);
            }
            return;
        }// end function

        public function duelCallAdmin(param1:String)
        {
            if (param1 != null)
            {
                this.Send(["Call admin", param1]);
            }
            return;
        }// end function

        public function callAdminResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = param1[0];
            this.call_admin_btn.label = "Cancel Call";
            this.call_admin_btn.enabled = _loc_2 == this.username;
            this.duelChatAddLine(_loc_2 + " has called an admin");
            return;
        }// end function

        public function cancelCallResponse(param1:Array)
        {
            this.call_admin_btn.label = "Call Admin";
            this.call_admin_btn.enabled = this.watchers_mc.num_admins_online == 0;
            if (param1.length > 0)
            {
                this.duelChatAddLine(param1[0] + " has canceled the admin call");
            }
            return;
        }// end function

        public function offerRematchE(event:MouseEvent = null)
        {
            var _loc_2:String = null;
            var _loc_3:String = null;
            _loc_2 = this.rematch_btn.label;
            switch(this.match_type)
            {
                case "s":
                {
                    break;
                }
                case "n":
                {
                    break;
                }
                case "m":
                {
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            if (_loc_2 == "Revoke Rematch")
            {
                this.Send(["Revoke rematch"]);
            }
            else if (_loc_2 == "Accept Rematch")
            {
                this.getConfirmation("Accept Rematch Offer", "Are you sure you want to accept?" + _loc_3, this.acceptRematch);
            }
            else
            {
                this.getConfirmation("Offer Rematch", "Are you sure you want to make a rematch offer?" + _loc_3, this.offerRematch);
            }
            return;
        }// end function

        public function offerRematch(param1:Boolean)
        {
            if (param1)
            {
                this.Send(["Offer rematch"]);
            }
            return;
        }// end function

        public function acceptRematch(param1:Boolean)
        {
            if (param1)
            {
                this.Send(["Accept rematch"]);
            }
            return;
        }// end function

        public function offerRematchResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username1_mc.username_txt.text;
            if (this.duelist)
            {
                this.rematch_btn.label = "Revoke Rematch";
            }
            this.duelChatAddLine(_loc_2 + " has made a rematch offer");
            return;
        }// end function

        public function offeredRematchResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username2_mc.username_txt.text;
            if (this.duelist)
            {
                this.rematch_btn.label = "Accept Rematch";
            }
            this.duelChatAddLine(_loc_2 + " has made a rematch offer");
            return;
        }// end function

        public function revokeRematchResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username1_mc.username_txt.text;
            if (this.duelist)
            {
                this.rematch_btn.label = "Offer Rematch";
            }
            this.duelChatAddLine(_loc_2 + " has revoked the rematch offer");
            return;
        }// end function

        public function revokedRematchResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = this.username2_mc.username_txt.text;
            if (this.duelist)
            {
                this.rematch_btn.label = "Offer Rematch";
            }
            this.duelChatAddLine(_loc_2 + " has revoked the rematch offer");
            return;
        }// end function

        public function canceledResponse(param1:Array)
        {
            var _loc_2:Boolean = false;
            var _loc_3:String = null;
            var _loc_4:Sound = null;
            _loc_2 = param1[0] == "true";
            _loc_3 = _loc_2 ? ("match") : ("duel");
            if (this.duelist)
            {
                this.displayMessageWithTitle((_loc_2 ? ("Match") : ("Duel")) + " Canceled", "The " + _loc_3 + " has been canceled by an administrator. Ratings and experiences are unaffected.");
            }
            _loc_4 = new GameFailureSound();
            _loc_4.play();
            this.duelChatAddLine("The " + _loc_3 + " has been canceled by an administrator");
            this.setDuelOver("The " + _loc_3 + " has been canceled by an administrator.", false, true);
            return;
        }// end function

        public function duelQuitE(event:MouseEvent = null)
        {
            var _loc_2:String = null;
            var _loc_3:String = null;
            var _loc_4:String = null;
            var _loc_5:String = null;
            _loc_2 = "Are you sure you want to quit the duel?";
            _loc_3 = "Quitting now may result in a loss and rating reduction. Proceed?";
            _loc_4 = "Quitting now will result in a loss and rating reduction. Proceed?";
            if (this.duelist && !this.duel_over)
            {
                if (this.rated_duel)
                {
                    if (currentFrameLabel == "siding_start")
                    {
                        if (this.match_type == "m")
                        {
                            _loc_5 = _loc_4;
                        }
                        else
                        {
                            _loc_5 = this.no_duel_winner || !this.siding1_mc.visible ? (_loc_2) : (_loc_3);
                        }
                    }
                    else if (this.rps_stage == 0 && !this.rps_match)
                    {
                        _loc_5 = _loc_2;
                    }
                    else if (this.rps_stage == 1 && !this.rps_match)
                    {
                        _loc_5 = _loc_3;
                    }
                    else
                    {
                        _loc_5 = _loc_4;
                    }
                }
                else
                {
                    _loc_5 = _loc_2;
                }
                this.getConfirmation("Quit Duel", _loc_5, this.duelQuit);
            }
            else
            {
                this.roomE();
            }
            return;
        }// end function

        public function duelQuit(param1:Boolean)
        {
            if (param1)
            {
                this.roomE();
            }
            return;
        }// end function

        public function preloadPictures()
        {
            this.clearPicturesE(null);
            this.pictures_socket = new Socket();
            this.pictures_socket.timeout = 5000;
            this.pictures_socket.addEventListener(Event.CONNECT, this.preloadConnected);
            this.pictures_socket.addEventListener(Event.CLOSE, this.preloadClose);
            this.pictures_socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.preloadClose);
            this.pictures_socket.addEventListener(IOErrorEvent.IO_ERROR, this.preloadClose);
            this.pictures_socket.addEventListener(ProgressEvent.SOCKET_DATA, this.preloadData);
            this.pictures_socket.connect(this.HOSTNAME, 1235);
            this.preload_array = new ByteArray();
            this.decrypted_preload = new Object();
            return;
        }// end function

        public function preloadConnected(event:Event)
        {
            var _loc_2:ByteArray = null;
            _loc_2 = new ByteArray();
            _loc_2.writeMultiByte(this.username, "UTF-8");
            _loc_2.writeByte(0);
            _loc_2.writeMultiByte(this.password, "UTF-8");
            _loc_2.writeByte(0);
            this.pictures_socket.writeBytes(_loc_2);
            return;
        }// end function

        public function preloadData(event:ProgressEvent)
        {
            this.pictures_socket.readBytes(this.preload_array, this.preload_array.length);
            return;
        }// end function

        public function preloadClose(event:Event)
        {
            if (this.pictures_socket != null && this.pictures_socket.connected)
            {
                this.pictures_socket.close();
            }
            this.pictures_socket = null;
            return;
        }// end function

        public function clearPicturesE(event:Event)
        {
            if (this.pictures_socket != null && this.pictures_socket.connected)
            {
                this.pictures_socket.close();
            }
            this.pictures_socket = null;
            this.preload_array = null;
            this.decrypted_preload = null;
            return;
        }// end function

        public function getPreloadPicture(param1, param2, param3:String) : ByteArray
        {
            var _loc_4:uint = 0;
            var _loc_5:uint = 0;
            var _loc_6:ByteArray = null;
            var _loc_7:ByteArray = null;
            var _loc_8:ICipher = null;
            if (param1 == "" || param2 == "")
            {
                return null;
            }
            _loc_4 = param1;
            _loc_5 = param2;
            if (_loc_4 + _loc_5 > this.preload_array.length)
            {
                return null;
            }
            _loc_6 = this.decrypted_preload[param1];
            if (_loc_6 != null)
            {
                return _loc_6;
            }
            _loc_6 = new ByteArray();
            _loc_6.writeBytes(this.preload_array, param1, param2);
            _loc_7 = Hex.toArray(param3);
            _loc_8 = Crypto.getCipher("simple-aes128-cbc", _loc_7);
            _loc_8.decrypt(_loc_6);
            this.decrypted_preload[param1] = _loc_6;
            return _loc_6;
        }// end function

        public function initDuelCard(param1:DuelCard, param2:Array)
        {
            var _loc_3:ByteArray = null;
            if (param2[0] == "-1")
            {
                param1.initializeToken();
            }
            else
            {
                if (param2[3] != "")
                {
                    param2[3] = this.CARD_START + param2[3];
                }
                _loc_3 = this.getPreloadPicture(param2[13], param2[14], param2[15]);
                param1.initialize(param2, _loc_3);
            }
            return;
        }// end function

        public function initSideCard(param1:SideCard, param2:Array)
        {
            var _loc_3:ByteArray = null;
            if (param2[3] != "")
            {
                param2[3] = this.CARD_START + param2[3];
            }
            _loc_3 = this.getPreloadPicture(param2[13], param2[14], param2[15]);
            param1.initialize(param2, _loc_3);
            return;
        }// end function

        public function loss1E(event:MouseEvent = null)
        {
            var _loc_2:Array = null;
            _loc_2 = this.match_type == "m" ? (["Game Loss", "Match Loss"]) : (["Game Loss"]);
            this.getComboInput("Host Loss", "Give loss to " + this.username1_mc.username_txt.text + "?", _loc_2, 0, this.loss1);
            return;
        }// end function

        public function loss1(param1:String)
        {
            if (param1 != null)
            {
                this.Send(["Duel loss", "host", param1]);
            }
            return;
        }// end function

        public function loss2E(event:MouseEvent = null)
        {
            var _loc_2:Array = null;
            _loc_2 = this.match_type == "m" ? (["Game Loss", "Match Loss"]) : (["Game Loss"]);
            this.getComboInput("Opponent Loss", "Give loss to " + this.username2_mc.username_txt.text + "?", _loc_2, 0, this.loss2);
            return;
        }// end function

        public function loss2(param1:String)
        {
            if (param1 != null)
            {
                this.Send(["Duel loss", "opponent", param1]);
            }
            return;
        }// end function

        public function duelCancelDuelE(event:MouseEvent = null)
        {
            var _loc_2:Array = null;
            _loc_2 = this.match_type == "m" ? (["Cancel Game", "Cancel Match"]) : (["Cancel Game"]);
            this.getComboInput("Cancel", "Cancel?", _loc_2, 0, this.duelCancelDuel);
            return;
        }// end function

        public function duelCancelDuel(param1:String)
        {
            if (param1 != null)
            {
                this.Send(["Cancel duel", param1]);
            }
            return;
        }// end function

        public function rpsTweenStart(param1) : Array
        {
            return [new Tween(this.rock1_mc, "y", None.easeNone, 766.9, this.rock1_mc.y, this.RPS_TWEEN_TIME, true), new Tween(this.paper1_mc, "y", None.easeNone, 766.9, this.paper1_mc.y, this.RPS_TWEEN_TIME, true), new Tween(this.scissors1_mc, "y", None.easeNone, 766.9, this.scissors1_mc.y, this.RPS_TWEEN_TIME, true), new Tween(this.rock2_mc, "y", None.easeNone, -126.9, this.rock2_mc.y, this.RPS_TWEEN_TIME, true), new Tween(this.paper2_mc, "y", None.easeNone, -126.9, this.paper2_mc.y, this.RPS_TWEEN_TIME, true), new Tween(this.scissors2_mc, "y", None.easeNone, -126.9, this.scissors2_mc.y, this.RPS_TWEEN_TIME, true)];
        }// end function

        public function rpsChooseE(event:MouseEvent)
        {
            var _loc_2:* = undefined;
            var _loc_3:* = undefined;
            var _loc_4:* = undefined;
            var _loc_5:String = null;
            this.rps_stage = 1;
            _loc_2 = event.currentTarget;
            switch(event.currentTarget.name)
            {
                case "rock1_mc":
                {
                    _loc_5 = "Rock";
                    _loc_3 = this.paper1_mc;
                    _loc_4 = this.scissors1_mc;
                    break;
                }
                case "paper1_mc":
                {
                    _loc_5 = "Paper";
                    _loc_3 = this.rock1_mc;
                    _loc_4 = this.scissors1_mc;
                    break;
                }
                case "scissors1_mc":
                {
                    _loc_5 = "Scissors";
                    _loc_3 = this.rock1_mc;
                    _loc_4 = this.paper1_mc;
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.rps_bottom_target = _loc_2;
            this.Send(["Rock-paper-scissors", _loc_5]);
            this.rock1_mc.clickHandler = null;
            this.paper1_mc.clickHandler = null;
            this.scissors1_mc.clickHandler = null;
            this.addTweens(this.rpsTweenBottom, _loc_5, false);
            return;
        }// end function

        public function rpsTweenBottom(param1:String) : Array
        {
            var _loc_2:MovieClip = null;
            var _loc_3:MovieClip = null;
            var _loc_4:MovieClip = null;
            var _loc_5:Array = null;
            switch(param1)
            {
                case "Rock":
                {
                    _loc_2 = this.rock1_mc;
                    _loc_3 = this.paper1_mc;
                    _loc_4 = this.scissors1_mc;
                    break;
                }
                case "Paper":
                {
                    _loc_3 = this.rock1_mc;
                    _loc_2 = this.paper1_mc;
                    _loc_4 = this.scissors1_mc;
                    break;
                }
                case "Scissors":
                {
                    _loc_3 = this.rock1_mc;
                    _loc_4 = this.paper1_mc;
                    _loc_2 = this.scissors1_mc;
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.rps_hidden_mc.addChild(_loc_2);
            _loc_5 = [];
            if (_loc_2.x != 523)
            {
                _loc_5.push(new Tween(_loc_2, "x", None.easeNone, _loc_2.x, 523, this.RPS_TWEEN_TIME, true));
            }
            if (_loc_2.rotationY != 0)
            {
                _loc_5.push(new Tween(_loc_2, "cardRotationY", None.easeNone, _loc_2.rotationY, 0, this.RPS_TWEEN_TIME, true));
            }
            _loc_5.push(new Tween(_loc_3, "y", None.easeNone, _loc_3.y, 766.9, this.RPS_TWEEN_TIME, true));
            _loc_5.push(new Tween(_loc_3, "cardRotationY", None.easeNone, _loc_3.rotationY, _loc_3.rotationY + 360, this.RPS_TWEEN_TIME, true));
            _loc_5.push(new Tween(_loc_4, "y", None.easeNone, _loc_4.y, 766.9, this.RPS_TWEEN_TIME, true));
            _loc_5.push(new Tween(_loc_4, "cardRotationY", None.easeNone, _loc_4.rotationY, _loc_4.rotationY + 360, this.RPS_TWEEN_TIME, true));
            return _loc_5;
        }// end function

        public function rpsTweenTop(param1:String) : Array
        {
            var _loc_2:MovieClip = null;
            var _loc_3:MovieClip = null;
            var _loc_4:MovieClip = null;
            var _loc_5:Array = null;
            switch(param1)
            {
                case "Rock":
                {
                    _loc_2 = this.rock2_mc;
                    _loc_3 = this.paper2_mc;
                    _loc_4 = this.scissors2_mc;
                    break;
                }
                case "Paper":
                {
                    _loc_3 = this.rock2_mc;
                    _loc_2 = this.paper2_mc;
                    _loc_4 = this.scissors2_mc;
                    break;
                }
                case "Scissors":
                {
                    _loc_3 = this.rock2_mc;
                    _loc_4 = this.paper2_mc;
                    _loc_2 = this.scissors2_mc;
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.rps_hidden_mc.addChild(_loc_2);
            _loc_5 = [];
            if (_loc_2.x != 523)
            {
                _loc_5.push(new Tween(_loc_2, "x", None.easeNone, _loc_2.x, 523, this.RPS_TWEEN_TIME, true));
            }
            if (_loc_2.rotationY != 0)
            {
                _loc_5.push(new Tween(_loc_2, "cardRotationY", None.easeNone, _loc_2.rotationY, 0, this.RPS_TWEEN_TIME, true));
            }
            _loc_5.push(new Tween(_loc_3, "y", None.easeNone, _loc_3.y, -126.9, this.RPS_TWEEN_TIME, true));
            _loc_5.push(new Tween(_loc_3, "cardRotationY", None.easeNone, _loc_3.rotationY, _loc_3.rotationY + 360, this.RPS_TWEEN_TIME, true));
            _loc_5.push(new Tween(_loc_4, "y", None.easeNone, _loc_4.y, -126.9, this.RPS_TWEEN_TIME, true));
            _loc_5.push(new Tween(_loc_4, "cardRotationY", None.easeNone, _loc_4.rotationY, _loc_4.rotationY + 360, this.RPS_TWEEN_TIME, true));
            return _loc_5;
        }// end function

        public function rpsResponse(param1:Array)
        {
            var _loc_2:Array = null;
            var _loc_3:MovieClip = null;
            var _loc_4:Boolean = false;
            var _loc_5:Boolean = false;
            if (param1.length == 2)
            {
                this.rps_bottom_target = this.rpsStringToTargetBottom(param1[0]);
                _loc_3 = this.rpsStringToTargetTop(param1[1]);
                this.addTweens(this.rpsTweenBottom, param1[0], false);
                this.addTweens(this.rpsTweenTop, param1[1]);
            }
            else if (param1.length == 1)
            {
                _loc_3 = this.rpsStringToTargetTop(param1[0]);
                this.addTweens(this.rpsTweenTop, param1[0]);
            }
            _loc_2 = [this.rps_bottom_target, _loc_3];
            this.addTweens(this.rpsTweenTouch, _loc_2);
            if (this.rps_bottom_target is this.getClass(_loc_3))
            {
                this.rps_stage = 0;
                this.addTweens(this.rpsTweenTie1, _loc_2);
                this.addTweens(this.rpsTweenTie2, _loc_2);
                if (this.duelist)
                {
                    this.addTweens(this.rpsTweenClickable);
                }
            }
            else
            {
                this.rps_stage = 2;
                switch(this.rps_bottom_target)
                {
                    case this.rock1_mc:
                    {
                        _loc_4 = _loc_3 == this.scissors2_mc;
                        break;
                    }
                    case this.paper1_mc:
                    {
                        _loc_4 = _loc_3 == this.rock2_mc;
                        break;
                    }
                    case this.scissors1_mc:
                    {
                        _loc_4 = _loc_3 == this.paper2_mc;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_5 = false;
                if (_loc_4)
                {
                    if (this.duelist)
                    {
                        _loc_5 = true;
                    }
                    this.addTweens(this.rpsTweenWin1, _loc_2);
                    this.addTweens(this.rpsTweenWin2, _loc_2);
                    this.addPause(2000);
                    this.addTweens(this.rpsTweenWin3, _loc_2);
                }
                else
                {
                    this.addTweens(this.rpsTweenLose1, _loc_2);
                    this.addTweens(this.rpsTweenLose2, _loc_2);
                    this.addPause(2000);
                    this.addTweens(this.rpsTweenLose3, _loc_2);
                }
                this.addTurnPickTweens(_loc_5);
            }
            this.rps_bottom_target = null;
            return;
        }// end function

        public function rpsStringToTargetBottom(param1:String) : MovieClip
        {
            switch(param1)
            {
                case "Rock":
                {
                    return this.rock1_mc;
                }
                case "Paper":
                {
                    return this.paper1_mc;
                }
                case "Scissors":
                {
                    return this.scissors1_mc;
                }
                default:
                {
                    break;
                }
            }
            return null;
        }// end function

        public function rpsStringToTargetTop(param1:String) : MovieClip
        {
            switch(param1)
            {
                case "Rock":
                {
                    return this.rock2_mc;
                }
                case "Paper":
                {
                    return this.paper2_mc;
                }
                case "Scissors":
                {
                    return this.scissors2_mc;
                }
                default:
                {
                    break;
                }
            }
            return null;
        }// end function

        public function getClass(param1:Object) : Class
        {
            return Class(getDefinitionByName(getQualifiedClassName(param1)));
        }// end function

        public function rpsTweenTouch(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            var _loc_3:MovieClip = null;
            _loc_2 = param1[0];
            _loc_3 = param1[1];
            return [new Tween(_loc_2, "y", None.easeNone, _loc_2.y, 446.85, this.RPS_TOUCH_TIME, true), new Tween(_loc_3, "y", None.easeNone, _loc_3.y, 193.1, this.RPS_TOUCH_TIME, true)];
        }// end function

        public function rpsTweenWin1(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            var _loc_3:MovieClip = null;
            _loc_2 = param1[0];
            _loc_3 = param1[1];
            return [new Tween(_loc_2, "y", None.easeNone, 446.85, 320, this.RPS_CENTER_TIME, true), new Tween(_loc_3, "y", None.easeNone, 193.1, 66.25, this.RPS_CENTER_TIME, true)];
        }// end function

        public function rpsTweenWin2(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            _loc_2 = param1[1];
            return [new Tween(_loc_2, "y", None.easeNone, 66.25, -126.9, this.RPS_PUSH_TIME, true)];
        }// end function

        public function rpsTweenWin3(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            _loc_2 = param1[0];
            return [new Tween(_loc_2, "y", None.easeNone, 320, 766.9, this.RPS_TWEEN_TIME, true)];
        }// end function

        public function rpsTweenLose1(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            var _loc_3:MovieClip = null;
            _loc_2 = param1[0];
            _loc_3 = param1[1];
            return [new Tween(_loc_2, "y", None.easeNone, 446.85, 573.75, this.RPS_CENTER_TIME, true), new Tween(_loc_3, "y", None.easeNone, 193.1, 320, this.RPS_CENTER_TIME, true)];
        }// end function

        public function rpsTweenLose2(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            _loc_2 = param1[0];
            return [new Tween(_loc_2, "y", None.easeNone, 573.75, 766.9, this.RPS_PUSH_TIME, true)];
        }// end function

        public function rpsTweenLose3(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            _loc_2 = param1[1];
            return [new Tween(_loc_2, "y", None.easeNone, 320, -126.9, this.RPS_TWEEN_TIME, true)];
        }// end function

        public function rpsTweenTie1(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            var _loc_3:MovieClip = null;
            _loc_2 = param1[0];
            _loc_3 = param1[1];
            return [new Tween(_loc_2, "y", None.easeNone, _loc_2.y, 478.1, this.RPS_TOUCH_TIME, true), new Tween(_loc_3, "y", None.easeNone, _loc_3.y, 161.85, this.RPS_TOUCH_TIME, true)];
        }// end function

        public function rpsTweenTie2(param1:Array) : Array
        {
            var _loc_2:MovieClip = null;
            var _loc_3:MovieClip = null;
            var _loc_4:Array = null;
            var _loc_5:MovieClip = null;
            var _loc_6:MovieClip = null;
            var _loc_7:Number = NaN;
            _loc_2 = param1[0];
            _loc_3 = param1[1];
            _loc_4 = [];
            switch(_loc_2)
            {
                case this.rock1_mc:
                {
                    _loc_7 = 319.25;
                    _loc_5 = this.paper1_mc;
                    _loc_6 = this.scissors1_mc;
                    break;
                }
                case this.paper1_mc:
                {
                    _loc_7 = 523;
                    _loc_5 = this.rock1_mc;
                    _loc_6 = this.scissors1_mc;
                    break;
                }
                case this.scissors1_mc:
                {
                    _loc_7 = 726.75;
                    _loc_5 = this.rock1_mc;
                    _loc_6 = this.paper1_mc;
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (_loc_2.x != _loc_7)
            {
                _loc_4.push(new Tween(_loc_2, "x", None.easeNone, _loc_2.x, _loc_7, this.RPS_TWEEN_TIME, true));
            }
            if (!this.duelist)
            {
                _loc_4.push(new Tween(_loc_2, "cardRotationY", None.easeNone, _loc_2.rotationY, 180, this.RPS_TWEEN_TIME, true));
            }
            _loc_4.push(new Tween(_loc_5, "y", None.easeNone, _loc_5.y, 478.1, this.RPS_TWEEN_TIME, true));
            _loc_4.push(new Tween(_loc_6, "y", None.easeNone, _loc_6.y, 478.1, this.RPS_TWEEN_TIME, true));
            switch(_loc_3)
            {
                case this.rock2_mc:
                {
                    _loc_7 = 726.75;
                    _loc_5 = this.paper2_mc;
                    _loc_6 = this.scissors2_mc;
                    break;
                }
                case this.paper2_mc:
                {
                    _loc_7 = 523;
                    _loc_5 = this.rock2_mc;
                    _loc_6 = this.scissors2_mc;
                    break;
                }
                case this.scissors2_mc:
                {
                    _loc_7 = 319.25;
                    _loc_5 = this.rock2_mc;
                    _loc_6 = this.paper2_mc;
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (_loc_3.x != _loc_7)
            {
                _loc_4.push(new Tween(_loc_3, "x", None.easeNone, _loc_3.x, _loc_7, this.RPS_TWEEN_TIME, true));
            }
            _loc_4.push(new Tween(_loc_3, "cardRotationY", None.easeNone, _loc_3.rotationY, 180, this.RPS_TWEEN_TIME, true));
            _loc_4.push(new Tween(_loc_5, "y", None.easeNone, _loc_5.y, 161.85, this.RPS_TWEEN_TIME, true));
            _loc_4.push(new Tween(_loc_6, "y", None.easeNone, _loc_6.y, 161.85, this.RPS_TWEEN_TIME, true));
            return _loc_4;
        }// end function

        public function rpsTweenClickable(param1) : Array
        {
            if (this.duel_over)
            {
                this.rock1_mc.clickHandler = null;
                this.paper1_mc.clickHandler = null;
                this.scissors1_mc.clickHandler = null;
            }
            else
            {
                this.rock1_mc.clickHandler = this.rpsChooseE;
                this.paper1_mc.clickHandler = this.rpsChooseE;
                this.scissors1_mc.clickHandler = this.rpsChooseE;
            }
            return [];
        }// end function

        public function addTweens(param1:Function, param2 = null, param3:Boolean = true)
        {
            var _loc_4:Array = null;
            var _loc_5:* = undefined;
            _loc_4 = [];
            if (this.current_tweens == null)
            {
                try
                {
                    _loc_4 = this.param1(param2);
                }
                catch (e:Error)
                {
                }
                if (_loc_4.length > 0)
                {
                    _loc_5 = 0;
                    while (_loc_5 < _loc_4.length)
                    {
                        
                        _loc_4[_loc_5].addEventListener(TweenEvent.MOTION_FINISH, this.tweenFinishE);
                        _loc_5 = _loc_5 + 1;
                    }
                    this.current_tweens = _loc_4;
                    this.tweens_finished = 0;
                    this.current_tween_block = param3;
                }
            }
            else if (!this.current_tween_block)
            {
                try
                {
                    _loc_4 = this.param1(param2);
                }
                catch (e:Error)
                {
                }
                if (_loc_4.length > 0)
                {
                    _loc_5 = 0;
                    while (_loc_5 < _loc_4.length)
                    {
                        
                        _loc_4[_loc_5].addEventListener(TweenEvent.MOTION_FINISH, this.tweenFinishE);
                        _loc_5 = _loc_5 + 1;
                    }
                    this.current_tweens = this.current_tweens.concat(_loc_4);
                }
                this.current_tween_block = param3;
            }
            else
            {
                this.tween_functions.push(param1);
                this.tween_args.push(param2);
                this.tween_blocks.push(param3);
            }
            return;
        }// end function

        public function addPause(param1:int)
        {
            var _loc_2:Timer = null;
            _loc_2 = new Timer(param1, 1);
            if (this.current_tweens == null)
            {
                _loc_2.addEventListener(TimerEvent.TIMER, this.tweenFinishE);
                this.current_tweens = [_loc_2];
                this.tweens_finished = 0;
                this.current_tween_block = true;
                _loc_2.start();
            }
            else if (!this.current_tween_block)
            {
                _loc_2.addEventListener(TimerEvent.TIMER, this.tweenFinishE);
                this.current_tweens.push(_loc_2);
                this.current_tween_block = true;
                _loc_2.start();
            }
            else
            {
                this.tween_functions.push(_loc_2);
            }
            return;
        }// end function

        public function tweenFinishE(event:Event)
        {
            var _loc_2:* = undefined;
            var _loc_3:* = undefined;
            var _loc_4:Array = null;
            var _loc_5:* = undefined;
            var _loc_6:* = undefined;
            var _loc_7:String = this;
            var _loc_8:* = this.tweens_finished + 1;
            _loc_7.tweens_finished = _loc_8;
            if (this.tweens_finished == this.current_tweens.length)
            {
                if (this.tween_functions.length == 0)
                {
                    this.current_tweens = null;
                }
                else
                {
                    this.current_tweens = [];
                    this.current_tween_block = true;
                    do
                    {
                        
                        if (this.tween_functions.length == 0)
                        {
                            break;
                        }
                        this.tween_functions.reverse();
                        _loc_2 = this.tween_functions.pop();
                        this.tween_functions.reverse();
                        if (_loc_2 is Function)
                        {
                            this.tween_args.reverse();
                            _loc_3 = this.tween_args.pop();
                            this.tween_args.reverse();
                            _loc_4 = [];
                            try
                            {
                                _loc_4 = this._loc_2(_loc_3);
                            }
                            catch (e:Error)
                            {
                            }
                            if (_loc_4.length > 0)
                            {
                                _loc_6 = 0;
                                while (_loc_6 < _loc_4.length)
                                {
                                    
                                    _loc_4[_loc_6].addEventListener(TweenEvent.MOTION_FINISH, this.tweenFinishE);
                                    _loc_6 = _loc_6 + 1;
                                }
                                this.current_tweens = this.current_tweens.concat(_loc_4);
                            }
                            this.tween_blocks.reverse();
                            _loc_5 = this.tween_blocks.pop();
                            this.tween_blocks.reverse();
                            continue;
                        }
                        _loc_2.addEventListener(TimerEvent.TIMER, this.tweenFinishE);
                        this.current_tweens.push(_loc_2);
                        _loc_5 = true;
                        _loc_2.start();
                    }while (!_loc_5 || this.current_tweens.length == 0)
                    if (this.current_tweens.length == 0)
                    {
                        this.current_tweens = null;
                    }
                    else
                    {
                        this.tweens_finished = 0;
                    }
                    this.current_tween_block = _loc_5;
                }
            }
            return;
        }// end function

        public function tweensInit()
        {
            this.stopTweensE(null);
            this.tween_functions = [];
            this.tween_args = [];
            this.tween_blocks = [];
            return;
        }// end function

        public function stopTweensE(event:Event)
        {
            var _loc_2:* = undefined;
            this.tween_functions = null;
            this.tween_args = null;
            this.tween_blocks = null;
            if (this.current_tweens != null)
            {
                _loc_2 = 0;
                while (_loc_2 < this.current_tweens.length)
                {
                    
                    this.current_tweens[_loc_2].stop();
                    _loc_2 = _loc_2 + 1;
                }
                this.current_tweens = null;
            }
            return;
        }// end function

        public function addTurnPickTweens(param1:Boolean)
        {
            this.addTweens(this.tpTweenStart);
            if (!this.duel_over && param1)
            {
                this.addTweens(this.tpTweenClickable);
            }
            return;
        }// end function

        public function tpTweenStart(param1) : Array
        {
            gotoAndStop("tp_start");
            return [new Tween(this.first_mc, "y", None.easeNone, -199.4, this.first_mc.y, this.TP_TWEEN_TIME, true), new Tween(this.second_mc, "y", None.easeNone, 839.4, this.second_mc.y, this.TP_TWEEN_TIME, true)];
        }// end function

        public function tpTweenClickable(param1) : Array
        {
            if (!this.duel_over)
            {
                this.first_mc.clickHandler = this.tpChooseE;
                this.second_mc.clickHandler = this.tpChooseE;
            }
            return [];
        }// end function

        public function tpChooseE(event:MouseEvent)
        {
            var _loc_2:MovieClip = null;
            _loc_2 = MovieClip(event.currentTarget);
            this.tp_going_first = _loc_2 == this.first_mc;
            this.Send(["Turn pick", this.tp_going_first]);
            this.first_mc.clickHandler = null;
            this.second_mc.clickHandler = null;
            return;
        }// end function

        public function tpResponse(param1:Array)
        {
            var _loc_2:String = null;
            _loc_2 = param1[0];
            this.tp_going_first = _loc_2 == this.username1_mc.username_txt.text;
            if (this.tp_going_first)
            {
                this.addTweens(this.tpTweenFirst);
            }
            else
            {
                this.addTweens(this.tpTweenSecond);
            }
            this.addPause(2000);
            this.addTweens(this.tpTweenExit);
            return;
        }// end function

        public function tpTweenFirst(param1) : Array
        {
            return [new Tween(this.first_mc.red_mc, "alpha", None.easeNone, 0, 1, this.TP_TWEEN_TIME, true), new Tween(this.second_mc.blue_mc, "alpha", None.easeNone, 0, 1, this.TP_TWEEN_TIME, true)];
        }// end function

        public function tpTweenSecond(param1) : Array
        {
            return [new Tween(this.first_mc.blue_mc, "alpha", None.easeNone, 0, 1, this.TP_TWEEN_TIME, true), new Tween(this.second_mc.red_mc, "alpha", None.easeNone, 0, 1, this.TP_TWEEN_TIME, true)];
        }// end function

        public function tpTweenExit(param1) : Array
        {
            return [new Tween(this.first_mc, "y", None.easeNone, this.first_mc.y, -299.4, this.TP_TWEEN_TIME, true), new Tween(this.second_mc, "y", None.easeNone, this.second_mc.y, 939.4, this.TP_TWEEN_TIME, true)];
        }// end function

        public function tpDuelPrep(param1:Array)
        {
            this.addTweens(this.gotoDuelScreen, [param1, this.tp_going_first]);
            this.addDuelStartTweens(this.tp_going_first);
            return;
        }// end function

        public function watchDuelStart()
        {
            var _loc_1:Array = null;
            var _loc_2:String = null;
            var _loc_3:Boolean = false;
            var _loc_4:Array = null;
            var _loc_5:DuelCard = null;
            var _loc_6:DuelCard = null;
            var _loc_7:int = 0;
            var _loc_8:String = null;
            var _loc_9:String = null;
            var _loc_10:String = null;
            var _loc_11:Boolean = false;
            var _loc_12:Boolean = false;
            var _loc_13:int = 0;
            var _loc_14:Boolean = false;
            var _loc_15:Boolean = false;
            var _loc_16:DuelCard = null;
            _loc_1 = this.duel_args;
            this.duel_args = null;
            _loc_2 = _loc_1[0];
            this.my_turn = _loc_1[1] == "true";
            this.phase_mc.setPhase(_loc_2, this.my_turn);
            _loc_3 = _loc_1[2] == "true";
            this.lp_bottom_mc.points = _loc_1[3];
            this.lp_top_mc.points = _loc_1[4];
            this.status1_mc.status = _loc_1[5];
            this.status2_mc.status = _loc_1[6];
            _loc_4 = [null, null];
            _loc_5 = null;
            _loc_6 = null;
            _loc_7 = 7;
            while (_loc_7 < _loc_1.length)
            {
                
                _loc_8 = _loc_1[_loc_7];
                _loc_7++;
                _loc_9 = _loc_1[_loc_7];
                _loc_7++;
                _loc_10 = _loc_1[_loc_7];
                _loc_7++;
                _loc_11 = _loc_1[_loc_7] == "true";
                _loc_7++;
                _loc_12 = _loc_1[_loc_7] == "true";
                _loc_7++;
                _loc_13 = _loc_1[_loc_7];
                _loc_7++;
                _loc_14 = _loc_1[_loc_7] == "true";
                _loc_7++;
                _loc_15 = _loc_1[_loc_7] == "true";
                _loc_7++;
                _loc_16 = new DuelCard(_loc_14 ? (this.back_loader1) : (this.back_loader2));
                if (_loc_15)
                {
                    this.initDuelCard(_loc_16, _loc_1.slice(_loc_7, _loc_7 + 16));
                    _loc_7 = _loc_7 + 16;
                }
                _loc_16.counter = _loc_13;
                _loc_16.id = _loc_9;
                if (_loc_8 == "underlay1" || _loc_8 == "underlay2")
                {
                    if (_loc_6 == null)
                    {
                        var _loc_17:* = _loc_16;
                        _loc_6 = _loc_16;
                        _loc_5 = _loc_17;
                    }
                    else
                    {
                        _loc_6.overlayLink(_loc_16);
                        _loc_6 = _loc_16;
                    }
                }
                else if (_loc_6 != null)
                {
                    _loc_16.overlayLink(_loc_5);
                    _loc_6.overlayLink(_loc_16);
                    var _loc_17:String = null;
                    _loc_6 = null;
                    _loc_5 = _loc_17;
                }
                this.cards_mc.addCard(_loc_16, _loc_8, _loc_10, _loc_11, _loc_12);
                if (_loc_8 == "field1")
                {
                    if (_loc_16.position == 5 && !_loc_16.show_back)
                    {
                        _loc_4[0] = _loc_16;
                    }
                    this.cards_mc.finishFieldCard(_loc_16, true, false);
                    continue;
                }
                if (_loc_8 == "field2")
                {
                    if (_loc_16.position == 5 && !_loc_16.show_back)
                    {
                        _loc_4[1] = _loc_16;
                    }
                    this.cards_mc.finishFieldCard(_loc_16, false, false);
                }
            }
            _loc_7 = _loc_3 ? (0) : (1);
            _loc_16 = _loc_4[_loc_7];
            if (_loc_16 == null)
            {
                _loc_7 = _loc_3 ? (1) : (0);
                _loc_16 = _loc_4[_loc_7];
                if (_loc_16 != null)
                {
                    this.cards_mc.loadFieldBackground(_loc_16);
                }
            }
            else
            {
                this.cards_mc.loadFieldBackground(_loc_16);
            }
            this.addTweens(this.duelFadeTween);
            this.addTweens(this.duelInvisibleTween);
            return;
        }// end function

        public function makeAutoDrawWhite()
        {
            var _loc_1:TextFormat = null;
            _loc_1 = new TextFormat();
            _loc_1.font = Constants.COMPONENT_FONT;
            _loc_1.size = Constants.COMPONENT_SIZE;
            _loc_1.color = 39168;
            _loc_1.color = 16777215;
            this.auto_draw_cb.setStyle("textFormat", _loc_1);
            return;
        }// end function

        public function gotoDuelScreen(param1:Array) : Array
        {
            this.duel_screen_args = param1;
            gotoAndStop("duel_start");
            return [];
        }// end function

        public function duelScreenEnter()
        {
            var _loc_1:Array = null;
            var _loc_2:Boolean = false;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:* = undefined;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:int = 0;
            var _loc_11:int = 0;
            var _loc_12:* = undefined;
            var _loc_13:* = undefined;
            var _loc_14:DuelCard = null;
            if (this.duelist)
            {
                this.die_btn.addEventListener(MouseEvent.CLICK, this.dieClickE);
                this.coin_btn.addEventListener(MouseEvent.CLICK, this.coinClickE);
                this.token_btn.addEventListener(MouseEvent.CLICK, this.tokenClickE);
                this.hand_shuffle_btn.addEventListener(MouseEvent.CLICK, this.handShuffleClickE);
                this.show_hand_btn.addEventListener(MouseEvent.CLICK, this.showHandClickE);
                this.enableCounter(this.counter_start_mc);
            }
            else
            {
                this.die_btn.visible = false;
                this.coin_btn.visible = false;
                this.token_btn.visible = false;
                this.life_points_mc.visible = false;
                this.auto_draw_cb.visible = false;
                this.hand_shuffle_btn.visible = false;
                this.show_hand_btn.visible = false;
                this.counter_start_mc.visible = false;
            }
            this.cards_mc.init(this.duelist, this.admin, this.addTweens, this.DUEL_TWEEN_TIME, this.preview_mc, this.cardClickCallback, this.isMyBP, this.Send, this.initDuelCard, this.field_mc, this.enableCounter);
            this.phase_mc.init(this.phaseChange, this.duelist);
            this.die_mc.visible = false;
            this.coin_mc.visible = false;
            if (this.duel_screen_args == null)
            {
                this.watchDuelStart();
            }
            else
            {
                _loc_1 = this.duel_screen_args[0];
                _loc_2 = this.duel_screen_args[1];
                this.duel_screen_args = null;
                _loc_3 = _loc_1[0];
                _loc_4 = _loc_1[1];
                _loc_5 = _loc_1[2];
                _loc_6 = _loc_1[3];
                _loc_7 = _loc_1[4];
                _loc_8 = _loc_1[5];
                _loc_9 = _loc_1[6];
                _loc_10 = _loc_1[7];
                _loc_11 = _loc_2 ? (6) : (5);
                _loc_12 = 8 + 16 * _loc_11;
                _loc_13 = _loc_3 - 1;
                while (_loc_13 >= 0)
                {
                    
                    _loc_14 = new DuelCard(this.back_loader1);
                    _loc_14.id = _loc_4 + _loc_13;
                    if (_loc_13 < _loc_11 && this.duelist)
                    {
                        _loc_12 = _loc_12 - 16;
                        this.initDuelCard(_loc_14, _loc_1.slice(_loc_12, _loc_12 + 16));
                    }
                    this.cards_mc.addCard(_loc_14, "deck1");
                    _loc_13 = _loc_13 - 1;
                }
                _loc_12 = 8 + 16 * _loc_11;
                _loc_13 = 0;
                while (_loc_13 < _loc_5)
                {
                    
                    _loc_14 = new DuelCard(this.back_loader1);
                    _loc_14.id = _loc_6 + _loc_13;
                    if (this.duelist)
                    {
                        this.initDuelCard(_loc_14, _loc_1.slice(_loc_12, _loc_12 + 16));
                        _loc_12 = _loc_12 + 16;
                    }
                    this.cards_mc.addCard(_loc_14, "extra1");
                    _loc_13 = _loc_13 + 1;
                }
                _loc_13 = _loc_7 - 1;
                while (_loc_13 >= 0)
                {
                    
                    _loc_14 = new DuelCard(this.back_loader2);
                    _loc_14.id = _loc_8 + _loc_13;
                    this.cards_mc.addCard(_loc_14, "deck2");
                    _loc_13 = _loc_13 - 1;
                }
                _loc_13 = 0;
                while (_loc_13 < _loc_9)
                {
                    
                    _loc_14 = new DuelCard(this.back_loader2);
                    _loc_14.id = _loc_10 + _loc_13;
                    this.cards_mc.addCard(_loc_14, "extra2");
                    _loc_13 = _loc_13 + 1;
                }
            }
            return;
        }// end function

        public function addDuelStartTweens(param1:Boolean)
        {
            this.addTweens(this.duelFadeTween);
            this.addTweens(this.duelInvisibleTween);
            this.addTweens(this.drawCardTween1, true, false);
            this.addTweens(this.drawCardTween2, false);
            this.addTweens(this.drawCardTween1, true, false);
            this.addTweens(this.drawCardTween2, false);
            this.addTweens(this.drawCardTween1, true, false);
            this.addTweens(this.drawCardTween2, false);
            this.addTweens(this.drawCardTween1, true, false);
            this.addTweens(this.drawCardTween2, false);
            this.addTweens(this.drawCardTween1, true, false);
            this.addTweens(this.drawCardTween2, false);
            this.addTweens(this.phaseTweens, ["dp", param1]);
            if (param1)
            {
                this.addTweens(this.drawCardTween1, true);
            }
            else
            {
                this.addTweens(this.drawCardTween2, true);
            }
            return;
        }// end function

        public function duelFadeTween(param1) : Array
        {
            return [new Tween(this.fade_mc, "alpha", None.easeNone, 1, 0, this.DUEL_TWEEN_TIME, true)];
        }// end function

        public function duelInvisibleTween(param1) : Array
        {
            this.fade_mc.visible = false;
            return [];
        }// end function

        public function drawCardTween1(param1:Boolean) : Array
        {
            var _loc_2:DuelCard = null;
            var _loc_3:Array = null;
            var _loc_4:Sound = null;
            _loc_2 = this.cards_mc.removeCard("deck1");
            _loc_3 = [];
            this.cards_mc.addCard(_loc_2, "hand1", null, false, false, _loc_3);
            if (param1)
            {
                _loc_4 = new DrawSound();
                _loc_4.play();
            }
            return _loc_3;
        }// end function

        public function drawCardTween2(param1:Boolean) : Array
        {
            var _loc_2:Array = null;
            var _loc_3:Sound = null;
            _loc_2 = [];
            this.cards_mc.addCard(this.cards_mc.removeCard("deck2"), "hand2", null, false, false, _loc_2);
            if (param1)
            {
                _loc_3 = new DrawSound();
                _loc_3.play();
            }
            return _loc_2;
        }// end function

        public function cardClickCallback(param1:DuelCard, param2:String)
        {
            var _loc_3:Array = null;
            _loc_3 = ["Duel", param2, param1.id];
            if (param2 == "Show Deck")
            {
                this.confirm_send_arr = _loc_3;
                this.getConfirmation("Show Deck", "Are you sure you want to show your opponent your deck?", this.confirmSend);
            }
            else if (param2 == "Show Extra")
            {
                this.confirm_send_arr = _loc_3;
                this.getConfirmation("Show Extra", "Are you sure you want to show your opponent your extra deck?", this.confirmSend);
            }
            else
            {
                this.Send(_loc_3);
            }
            return;
        }// end function

        public function confirmSend(param1:Boolean)
        {
            if (param1)
            {
                this.Send(this.confirm_send_arr);
            }
            this.confirm_send_arr = null;
            return;
        }// end function

        public function duelAction(param1:Array)
        {
            var _loc_2:String = null;
            var _loc_3:Array = null;
            var _loc_4:Boolean = false;
            var _loc_5:Boolean = false;
            var _loc_6:String = null;
            var _loc_7:int = 0;
            var _loc_8:* = undefined;
            var _loc_9:int = 0;
            var _loc_10:Boolean = false;
            var _loc_11:int = 0;
            var _loc_12:Boolean = false;
            var _loc_13:Boolean = false;
            _loc_2 = param1[0];
            _loc_3 = param1;
            _loc_3.reverse();
            _loc_3.pop();
            _loc_3.reverse();
            _loc_4 = true;
            _loc_5 = true;
            switch(_loc_2)
            {
                case "Life points":
                {
                    _loc_6 = _loc_3[0];
                    _loc_7 = _loc_3[1];
                    _loc_8 = _loc_6 == this.username1_mc.username_txt.text ? (this.lp_bottom_mc) : (this.lp_top_mc);
                    _loc_9 = _loc_8.points;
                    this.addTweens(_loc_8.getTweens, _loc_7);
                    this.addTweens(this.lpDisplayTween, _loc_6);
                    break;
                }
                case "Phase":
                {
                    this.addTweens(this.updatePhaseTweens, _loc_3);
                    break;
                }
                case "Die":
                {
                    _loc_10 = _loc_3[0] == this.username1_mc.username_txt.text;
                    _loc_11 = _loc_3[1];
                    this.addTweens(this.dieTweens1, [_loc_10, _loc_11]);
                    this.addTweens(this.dieTweens2, _loc_3);
                    this.addPause(2000);
                    this.addTweens(this.dieTweens3);
                    break;
                }
                case "Coin":
                {
                    _loc_12 = _loc_3[0] == this.username1_mc.username_txt.text;
                    _loc_13 = _loc_3[1] == "heads";
                    this.addTweens(this.coinTweens1, _loc_12);
                    this.addTweens(this.coinTweens2, [_loc_12, _loc_13]);
                    this.addTweens(this.coinTweens3, _loc_3);
                    this.addPause(2000);
                    this.addTweens(this.coinTweens4);
                    break;
                }
                case "Token":
                {
                    this.addTweens(this.tokenTweens, _loc_3);
                    this.addTweens(this.cards_mc.tokenFinish, _loc_3);
                    break;
                }
                case "MoveNoBlockNoSound":
                {
                    _loc_5 = false;
                }
                case "MoveNoBlock":
                {
                    _loc_4 = false;
                }
                case "Move":
                {
                    this.addTweens(_loc_5 ? (this.moveTweens) : (this.moveTweensNoSound), _loc_3, _loc_4);
                    if (_loc_4)
                    {
                        this.addTweens(this.cards_mc.afterMoveTweens, _loc_3);
                    }
                    break;
                }
                case "MoveNoBlockDone":
                {
                    this.addTweens(this.doNothing, null);
                    this.addTweens(this.cards_mc.afterMoveTweens, _loc_3);
                    break;
                }
                case "Overlay":
                {
                    this.addTweens(this.cards_mc.overlayTweens, _loc_3);
                    this.addTweens(this.cards_mc.afterMoveTweens, _loc_3);
                    break;
                }
                case "Remove":
                {
                    this.addTweens(this.removeTweens, _loc_3);
                    break;
                }
                case "Reveal and move":
                {
                    this.addTweens(this.revealTweens1, _loc_3);
                    this.addPause(1000);
                    this.addTweens(this.revealTweens2, _loc_3);
                    this.addTweens(this.cards_mc.afterMoveTweens, _loc_3);
                    break;
                }
                case "Shuffle":
                {
                    this.cards_mc.shuffle(_loc_3);
                    break;
                }
                case "Status1":
                {
                    this.addTweens(this.setStatus1, _loc_3);
                    break;
                }
                case "Status2":
                {
                    this.addTweens(this.setStatus2, _loc_3[0]);
                    break;
                }
                case "Hand shuffle":
                {
                    this.cards_mc.handShuffle(_loc_3);
                    break;
                }
                case "Card Select":
                {
                    this.addTweens(this.cards_mc.selectCardTween, _loc_3);
                    break;
                }
                case "Attack":
                {
                    this.addTweens(this.cards_mc.attackTween1, _loc_3);
                    this.addPause(1000);
                    this.addTweens(this.cards_mc.attackTween2, _loc_3);
                    break;
                }
                case "Counter":
                {
                    this.addTweens(this.setCounters, _loc_3);
                    this.addPause(100);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function doNothing(param1) : Array
        {
            return [];
        }// end function

        public function lpDisplayTween(param1:String) : Array
        {
            var _loc_2:* = undefined;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            _loc_2 = param1 == this.username1_mc.username_txt.text ? (this.lp_bottom_mc) : (this.lp_top_mc);
            _loc_3 = _loc_2.getLastChange();
            if (_loc_3 > 0)
            {
                _loc_4 = _loc_3;
                this.duelChatAddLine(param1 + " has gained " + _loc_4 + " life point" + (_loc_4 == 1 ? ("") : ("s")));
            }
            else
            {
                _loc_4 = -_loc_3;
                this.duelChatAddLine(param1 + " has lost " + _loc_4 + " life point" + (_loc_4 == 1 ? ("") : ("s")));
            }
            return [];
        }// end function

        public function phaseChange(param1:String)
        {
            var _loc_2:Array = null;
            _loc_2 = ["Duel", "Phase", param1];
            if (param1 == "dp")
            {
                _loc_2.push(this.auto_draw_cb.selected);
            }
            this.Send(_loc_2);
            return;
        }// end function

        public function updatePhaseTweens(param1:Array) : Array
        {
            var _loc_2:String = null;
            var _loc_3:Boolean = false;
            var _loc_4:Boolean = false;
            var _loc_5:Array = null;
            var _loc_6:DuelCard = null;
            var _loc_7:Sound = null;
            _loc_2 = param1[0];
            _loc_3 = param1[1] == this.username1_mc.username_txt.text;
            _loc_4 = param1[2] == "true";
            _loc_5 = this.phaseTweens([_loc_2, _loc_3]);
            if (_loc_4)
            {
                _loc_6 = this.cards_mc.removeCard(this.my_turn ? ("deck1") : ("deck2"));
                if (param1.length > 3)
                {
                    this.initDuelCard(_loc_6, param1.slice(3));
                }
                this.cards_mc.addCard(_loc_6, this.my_turn ? ("hand1") : ("hand2"), null, false, false, _loc_5);
                _loc_7 = new DrawSound();
                _loc_7.play();
            }
            return _loc_5;
        }// end function

        public function phaseTweens(param1:Array) : Array
        {
            var _loc_2:String = null;
            _loc_2 = param1[0];
            this.my_turn = param1[1];
            this.phase_mc.setPhase(_loc_2, this.my_turn);
            return [];
        }// end function

        public function isMyBP() : Boolean
        {
            return this.my_turn && this.phase_mc.isBP();
        }// end function

        public function dieClickE(event:MouseEvent)
        {
            this.Send(["Duel", "Die"]);
            return;
        }// end function

        public function dieTweens1(param1:Array) : Array
        {
            var _loc_2:Boolean = false;
            var _loc_3:Number = NaN;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:Boolean = false;
            var _loc_8:Array = null;
            this.die_mc.visible = true;
            _loc_2 = param1[0];
            _loc_3 = _loc_2 ? (431) : (152);
            _loc_4 = param1[1];
            _loc_7 = false;
            switch(_loc_4)
            {
                case 1:
                {
                    _loc_5 = -720;
                    _loc_6 = -720;
                    break;
                }
                case 2:
                {
                    _loc_5 = -720;
                    _loc_6 = -810;
                    break;
                }
                case 3:
                {
                    _loc_5 = -810;
                    _loc_6 = -720;
                    _loc_7 = true;
                    break;
                }
                case 4:
                {
                    _loc_5 = -630;
                    _loc_6 = -720;
                    break;
                }
                case 5:
                {
                    _loc_5 = -720;
                    _loc_6 = -630;
                    break;
                }
                case 6:
                {
                    _loc_5 = -540;
                    _loc_6 = -720;
                    break;
                }
                default:
                {
                    break;
                }
            }
            _loc_8 = [new Tween(this.die_mc, "dieRotationX", Regular.easeOut, 0, _loc_5, this.DIE_SPIN_TIME, true), new Tween(this.die_mc, "dieRotationY", Regular.easeOut, 0, _loc_6, this.DIE_SPIN_TIME, true), new Tween(this.die_mc, "x", Regular.easeOut, -50, 659, this.DIE_SPIN_TIME, true), new Tween(this.die_mc, "y", Bounce.easeOut, -50, _loc_3, this.DIE_BOUNCE_TIME, true)];
            if (_loc_7)
            {
                _loc_8.push(new Tween(this.die_mc, "dieRotationZ", Regular.easeOut, 0, 90, this.DIE_SPIN_TIME, true));
            }
            else
            {
                this.die_mc.dieRotationZ = 0;
            }
            this.die_timer = new Timer(600, 1);
            this.die_timer.addEventListener(TimerEvent.TIMER, this.playDieSoundE);
            this.die_timer.start();
            return _loc_8;
        }// end function

        public function playDieSoundE(event:TimerEvent)
        {
            var _loc_2:Sound = null;
            _loc_2 = new DieSound();
            _loc_2.play();
            this.die_timer = null;
            return;
        }// end function

        public function dieTweens2(param1:Array) : Array
        {
            var _loc_2:String = null;
            var _loc_3:String = null;
            _loc_2 = param1[0];
            _loc_3 = param1[1];
            this.duelChatAddLine(_loc_2 + "\'s die landed on " + _loc_3);
            return [];
        }// end function

        public function dieTweens3(param1) : Array
        {
            this.die_mc.visible = false;
            return [];
        }// end function

        public function coinClickE(event:MouseEvent)
        {
            this.Send(["Duel", "Coin"]);
            return;
        }// end function

        public function coinTweens1(param1:Boolean) : Array
        {
            var _loc_2:Sound = null;
            var _loc_3:Number = NaN;
            var _loc_4:Number = NaN;
            this.coin_mc.visible = true;
            if (param1)
            {
                _loc_3 = 690;
                _loc_4 = 560.5;
                this.coin_mc.rotationZ = 0;
            }
            else
            {
                _loc_3 = -50;
                _loc_4 = 51;
                this.coin_mc.rotationZ = 180;
            }
            _loc_2 = new CoinFlipSound();
            _loc_2.play();
            return [new Tween(this.coin_mc, "coinRotationX", None.easeNone, 0, -600, this.COIN_UP_TIME, true), new Tween(this.coin_mc, "scaleX", Strong.easeIn, 0.5, 1, this.COIN_UP_TIME, true), new Tween(this.coin_mc, "scaleY", Strong.easeIn, 0.5, 1, this.COIN_UP_TIME, true), new Tween(this.coin_mc, "y", None.easeNone, _loc_3, _loc_4, this.COIN_UP_TIME, true)];
        }// end function

        public function coinTweens2(param1:Array) : Array
        {
            var _loc_2:Boolean = false;
            var _loc_3:Number = NaN;
            var _loc_4:Boolean = false;
            var _loc_5:Number = NaN;
            _loc_2 = param1[0];
            _loc_3 = _loc_2 ? (431) : (152);
            _loc_4 = param1[1];
            _loc_5 = _loc_4 ? (-1440) : (-1620);
            return [new Tween(this.coin_mc, "coinRotationX", None.easeNone, -600, _loc_5, this.COIN_DOWN_TIME, true), new Tween(this.coin_mc, "scaleX", Strong.easeIn, 1, 0.5, this.COIN_DOWN_TIME, true), new Tween(this.coin_mc, "scaleY", Strong.easeIn, 1, 0.5, this.COIN_DOWN_TIME, true), new Tween(this.coin_mc, "y", None.easeNone, this.coin_mc.y, _loc_3, this.COIN_DOWN_TIME, true)];
        }// end function

        public function coinTweens3(param1:Array) : Array
        {
            var _loc_2:String = null;
            var _loc_3:String = null;
            _loc_2 = param1[0];
            _loc_3 = param1[1];
            this.duelChatAddLine(_loc_2 + "\'s coin flip landed on " + _loc_3);
            return [];
        }// end function

        public function coinTweens4(param1) : Array
        {
            this.coin_mc.visible = false;
            return [];
        }// end function

        public function tokenClickE(event:MouseEvent)
        {
            this.Send(["Duel", "Token"]);
            return;
        }// end function

        public function tokenTweens(param1:Array) : Array
        {
            var _loc_2:Array = null;
            var _loc_3:DuelCard = null;
            var _loc_4:Sound = null;
            _loc_2 = [];
            _loc_3 = new DuelCard(param1[0] == "field1" ? (this.back_loader1) : (this.back_loader2));
            _loc_3.initializeToken();
            _loc_3.id = param1[1];
            this.cards_mc.addCard(_loc_3, param1[0], param1[2], false, true, null);
            this.cards_mc.specialTweens(_loc_3, _loc_2);
            _loc_4 = new SummonSound();
            _loc_4.play();
            return _loc_2;
        }// end function

        public function moveTweens(param1:Array, param2:Boolean = true) : Array
        {
            var _loc_3:Array = null;
            var _loc_4:String = null;
            var _loc_5:DuelCard = null;
            var _loc_6:Boolean = false;
            var _loc_7:Boolean = false;
            var _loc_8:String = null;
            var _loc_9:String = null;
            var _loc_10:Boolean = false;
            var _loc_11:Boolean = false;
            var _loc_12:String = null;
            var _loc_13:Boolean = false;
            var _loc_14:Sound = null;
            _loc_3 = [];
            _loc_4 = param1[0];
            _loc_5 = this.cards_mc.removeCard(_loc_4, param1[1], _loc_3);
            _loc_6 = _loc_5.show_back;
            if (param1.length > 8)
            {
                this.initDuelCard(_loc_5, param1.slice(8));
            }
            _loc_7 = param1[7] == "special";
            _loc_8 = param1[2];
            _loc_9 = param1[3];
            _loc_10 = param1[4] == "true";
            _loc_11 = param1[5] == "true";
            this.cards_mc.addCard(_loc_5, _loc_8, _loc_9, _loc_10, _loc_11, _loc_3, _loc_7);
            _loc_12 = param1[6];
            if (_loc_12 != "")
            {
                this.duelChatAddLine(_loc_12);
            }
            if (param2)
            {
                _loc_13 = int(_loc_9) < 6;
                if (_loc_4 == "deck1" && _loc_8 == "hand1" || _loc_4 == "deck2" && _loc_8 == "hand2")
                {
                    _loc_14 = new DrawSound();
                    _loc_14.play();
                }
                else if (_loc_4 == "hand1" && _loc_8 == "field1" || _loc_4 == "hand2" && _loc_8 == "field2")
                {
                    if (_loc_10)
                    {
                        _loc_14 = new SetSound();
                    }
                    else if (_loc_13)
                    {
                        _loc_14 = new ActivateSound();
                    }
                    else
                    {
                        _loc_14 = new SummonHandSound();
                    }
                    _loc_14.play();
                }
                else if (_loc_4 == "field1" && _loc_8 == "field1" || _loc_4 == "field2" && _loc_8 == "field2")
                {
                    if (_loc_6 && !_loc_10)
                    {
                        _loc_14 = _loc_13 ? (new ActivateSound()) : (new FlipSound());
                        _loc_14.play();
                    }
                }
                else if (_loc_8 == "grave1" || _loc_8 == "grave2" || _loc_8 == "rfg1" || _loc_8 == "rfg2")
                {
                    _loc_14 = new DiscardSound();
                    _loc_14.play();
                }
                else if (_loc_7)
                {
                    _loc_14 = new SummonSound();
                    _loc_14.play();
                }
            }
            return _loc_3;
        }// end function

        public function moveTweensNoSound(param1:Array) : Array
        {
            return this.moveTweens(param1, false);
        }// end function

        public function removeTweens(param1:Array) : Array
        {
            var _loc_2:Array = null;
            var _loc_3:DuelCard = null;
            var _loc_4:DisplayObjectContainer = null;
            _loc_2 = [];
            _loc_3 = this.cards_mc.removeCard(param1[0], param1[1], _loc_2);
            _loc_4 = _loc_3.parent;
            if (_loc_4 != null)
            {
                _loc_4.removeChild(_loc_3);
            }
            return _loc_2;
        }// end function

        public function revealTweens1(param1:Array) : Array
        {
            var _loc_2:Array = null;
            _loc_2 = [];
            this.reveal_card = this.cards_mc.removeCard(param1[0], param1[1], _loc_2);
            if (param1.length > 8)
            {
                this.initDuelCard(this.reveal_card, param1.slice(8));
            }
            this.cards_mc.revealCard(this.reveal_card, _loc_2);
            return _loc_2;
        }// end function

        public function revealTweens2(param1:Array) : Array
        {
            var _loc_2:Array = null;
            var _loc_3:Boolean = false;
            var _loc_4:String = null;
            _loc_2 = [];
            _loc_3 = param1[7] == "special";
            this.cards_mc.addCard(this.reveal_card, param1[2], param1[3], param1[4] == "true", param1[5] == "true", _loc_3 ? (null) : (_loc_2));
            if (_loc_3)
            {
                this.cards_mc.specialTweens(this.reveal_card, _loc_2);
            }
            this.reveal_card = null;
            _loc_4 = param1[6];
            if (_loc_4 != "")
            {
                this.duelChatAddLine(_loc_4);
            }
            return _loc_2;
        }// end function

        public function setStatus1(param1:Array) : Array
        {
            var _loc_2:String = null;
            _loc_2 = param1[0];
            this.status1_mc.status = _loc_2;
            if (!this.duelist || _loc_2 == "")
            {
                return [];
            }
            return this.cards_mc.startViewingTween(param1);
        }// end function

        public function setStatus2(param1:String) : Array
        {
            this.status2_mc.status = param1;
            return this.cards_mc.viewing2Tween(param1);
        }// end function

        public function handShuffleClickE(event:MouseEvent)
        {
            this.Send(["Duel", "Hand shuffle"]);
            return;
        }// end function

        public function showHandClickE(event:MouseEvent)
        {
            if (this.status1_mc.status != "" || this.status2_mc.status != "")
            {
                return;
            }
            this.confirm_send_arr = ["Duel", "Show hand"];
            this.getConfirmation("Show Hand", "Are you sure you want to show your opponent your hand?", this.confirmSend);
            return;
        }// end function

        public function counterDrag(param1:Sprite) : MovieClip
        {
            var _loc_2:DuelCard = null;
            var _loc_3:Point = null;
            if (param1 == this.counter_start_mc)
            {
                this.counter_drag_src_id = "";
                this.cards_mc.counter_mc.x = this.counter_start_mc.x;
                this.cards_mc.counter_mc.y = this.counter_start_mc.y;
                this.cards_mc.counter_mc.glow = false;
            }
            else
            {
                _loc_2 = DuelCard(param1.parent);
                if (_loc_2.counter <= 0 || _loc_2.show_back)
                {
                    return null;
                }
                this.counter_drag_src_id = _loc_2.id;
                _loc_3 = param1.parent.localToGlobal(new Point(param1.x, param1.y));
                this.cards_mc.counter_mc.x = _loc_3.x;
                this.cards_mc.counter_mc.y = _loc_3.y;
                this.cards_mc.removeCardMenu();
                this.cards_mc.counter_mc.glow = true;
            }
            this.cards_mc.counter_mc.visible = true;
            return this.cards_mc.counter_mc;
        }// end function

        public function counterDrop(param1:Sprite, param2:MouseEvent)
        {
            var _loc_3:String = null;
            var _loc_4:String = null;
            var _loc_5:DuelCard = null;
            _loc_3 = this.counter_drag_src_id;
            this.counter_drag_src_id = null;
            this.cards_mc.counter_mc.visible = false;
            _loc_4 = "";
            if (param2.target.parent is DuelCard)
            {
                _loc_5 = DuelCard(param2.target.parent);
                this.cards_mc.tryMenuCardMouseOver(_loc_5);
                if (_loc_5.loc == "field1" && !_loc_5.show_back)
                {
                    _loc_4 = _loc_5.id;
                }
            }
            if (_loc_3 == "" && _loc_4 == "")
            {
                return;
            }
            if (_loc_3 == _loc_4)
            {
                return;
            }
            this.Send(["Duel", "Counter", _loc_3, _loc_4]);
            return;
        }// end function

        public function enableCounter(param1:Sprite, param2:Boolean = true)
        {
            if (param2)
            {
                DragManager.enableDragging(param1, this.counterDrag, this.counterDrop);
                param1.buttonMode = true;
                param1.tabEnabled = false;
            }
            else
            {
                DragManager.disableDragging(param1);
                param1.buttonMode = false;
            }
            return;
        }// end function

        public function setCounters(param1:Array) : Array
        {
            var _loc_2:String = null;
            var _loc_3:String = null;
            var _loc_4:String = null;
            var _loc_5:Sound = null;
            _loc_2 = param1[0];
            _loc_3 = _loc_2 == "field1" ? (this.username1_mc.username_txt.text) : (this.username2_mc.username_txt.text);
            _loc_4 = this.cards_mc.setCounters(_loc_2, _loc_3, param1[1], param1[2], param1[3], param1[4]);
            if (_loc_4 != null)
            {
                this.duelChatAddLine(_loc_4);
            }
            _loc_5 = new CounterSound();
            _loc_5.play();
            return [];
        }// end function

        public function gotoSiding(param1:Array)
        {
            this.duel_screen_args = param1;
            gotoAndStop("siding_start");
            return;
        }// end function

        public function sidingEnter()
        {
            var args:Array;
            var i:int;
            var done_username:String;
            var arr_idx:int;
            var sideCleanupE:Function;
            var card:SideCard;
            if (this.duelist)
            {
                this.siding_in_progress_mc.visible = false;
            }
            else
            {
                this.done_siding_btn.visible = false;
                this.swap_btn.visible = false;
                this.reset_btn.visible = false;
                this.sort_btn.visible = false;
            }
            this.siding1_mc.visible = false;
            this.siding2_mc.visible = false;
            if (this.duel_screen_args == null)
            {
                args = this.duel_args;
                this.duel_args = null;
                i;
                while (i < args.length)
                {
                    
                    done_username = args[i];
                    if (done_username == this.username1_mc.username_txt.text)
                    {
                        this.siding1_mc.visible = true;
                    }
                    else if (done_username == this.username2_mc.username_txt.text)
                    {
                        this.siding2_mc.visible = true;
                    }
                    i = (i + 1);
                }
            }
            else
            {
                args = this.duel_screen_args;
                this.duel_screen_args = null;
                if (this.duelist)
                {
                    sideCleanupE = function (event:Event)
            {
                deck = null;
                side = null;
                extra = null;
                siding_deck_orig = null;
                siding_side_orig = null;
                siding_extra_orig = null;
                return;
            }// end function
            ;
                    this.deck = new Array(int(args[0]));
                    arr_idx;
                    i;
                    while (i < this.deck.length)
                    {
                        
                        card = new SideCard();
                        card.area = "deck";
                        card.idx = i;
                        this.initSideCard(card, args.slice(arr_idx, arr_idx + 16));
                        card.tabEnabled = false;
                        card.buttonMode = true;
                        card.addEventListener(MouseEvent.CLICK, this.selectSidingCardE);
                        this.siding_hidden_mc.addChild(card);
                        card.addEventListener(MouseEvent.MOUSE_OVER, this.preview_mc.previewE);
                        card.addEventListener(MouseEvent.MOUSE_OUT, this.preview_mc.previewStopE);
                        this.deck[i] = card;
                        arr_idx = arr_idx + 16;
                        i = (i + 1);
                    }
                    this.siding_deck_orig = this.deck.concat();
                    this.arrangeDeck();
                    this.side = new Array(int(args[arr_idx]));
                    arr_idx = (arr_idx + 1);
                    i;
                    while (i < this.side.length)
                    {
                        
                        card = new SideCard();
                        card.area = "side";
                        card.idx = i;
                        this.initSideCard(card, args.slice(arr_idx, arr_idx + 16));
                        card.tabEnabled = false;
                        card.buttonMode = true;
                        card.addEventListener(MouseEvent.CLICK, this.selectSidingCardE);
                        this.siding_hidden_mc.addChild(card);
                        card.addEventListener(MouseEvent.MOUSE_OVER, this.preview_mc.previewE);
                        card.addEventListener(MouseEvent.MOUSE_OUT, this.preview_mc.previewStopE);
                        this.side[i] = card;
                        arr_idx = arr_idx + 16;
                        i = (i + 1);
                    }
                    this.siding_side_orig = this.side.concat();
                    this.arrangeSide();
                    this.extra = new Array(int(args[arr_idx]));
                    arr_idx = (arr_idx + 1);
                    i;
                    while (i < this.extra.length)
                    {
                        
                        card = new SideCard();
                        card.area = "extra";
                        card.idx = i;
                        this.initSideCard(card, args.slice(arr_idx, arr_idx + 16));
                        card.tabEnabled = false;
                        card.buttonMode = true;
                        card.addEventListener(MouseEvent.CLICK, this.selectSidingCardE);
                        this.siding_hidden_mc.addChild(card);
                        card.addEventListener(MouseEvent.MOUSE_OVER, this.preview_mc.previewE);
                        card.addEventListener(MouseEvent.MOUSE_OUT, this.preview_mc.previewStopE);
                        this.extra[i] = card;
                        arr_idx = arr_idx + 16;
                        i = (i + 1);
                    }
                    this.siding_extra_orig = this.extra.concat();
                    this.arrangeExtra();
                    this.done_siding_btn.useHandCursor = true;
                    this.done_siding_btn.addEventListener(MouseEvent.CLICK, this.doneSidingE);
                    this.swap_btn.useHandCursor = true;
                    this.swap_btn.addEventListener(MouseEvent.CLICK, this.swapSidingE);
                    this.deck_in = 0;
                    this.deck_out = 0;
                    this.extra_in = 0;
                    this.extra_out = 0;
                    this.swap_btn.enabled = false;
                    this.sort_btn.addEventListener(MouseEvent.CLICK, this.sortSidingE);
                    this.reset_btn.useHandCursor = true;
                    this.reset_btn.addEventListener(MouseEvent.CLICK, this.resetSidingE);
                    this.siding_hidden_mc.addEventListener(Event.REMOVED_FROM_STAGE, sideCleanupE);
                }
            }
            return;
        }// end function

        public function arrangeDeck(param1:int = 0)
        {
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:SideCard = null;
            _loc_2 = param1;
            while (_loc_2 < this.deck.length)
            {
                
                _loc_8 = this.deck[_loc_2];
                _loc_8.x = 271 + _loc_2 % 10 * 55;
                _loc_8.y = 43.25 + int(_loc_2 / 10) * 77.5;
                _loc_8.width = 50;
                _loc_8.height = 72.5;
                _loc_2++;
            }
            _loc_3 = 0;
            _loc_4 = 0;
            _loc_5 = 0;
            _loc_6 = 0;
            _loc_7 = 0;
            _loc_2 = 0;
            while (_loc_2 < this.deck.length)
            {
                
                switch(this.deck[_loc_2].front_mc.card)
                {
                    case "normal":
                    {
                        _loc_3++;
                        break;
                    }
                    case "effect":
                    {
                        _loc_4++;
                        break;
                    }
                    case "ritual":
                    {
                        _loc_5++;
                        break;
                    }
                    case "spell":
                    {
                        _loc_6++;
                        break;
                    }
                    case "trap":
                    {
                        _loc_7++;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_2++;
            }
            this.total_count_txt.text = "" + this.deck.length;
            this.normal_count_txt.text = "" + _loc_3;
            this.effect_count_txt.text = "" + _loc_4;
            this.ritual_count_txt.text = "" + _loc_5;
            this.spell_count_txt.text = "" + _loc_6;
            this.trap_count_txt.text = "" + _loc_7;
            return;
        }// end function

        public function arrangeSide(param1:int = 0)
        {
            var _loc_2:int = 0;
            var _loc_3:SideCard = null;
            _loc_2 = param1;
            while (_loc_2 < this.side.length)
            {
                
                _loc_3 = this.side[_loc_2];
                _loc_3.x = 262 + _loc_2 * 36.65;
                _loc_3.y = 513.25;
                _loc_3.width = 33.3;
                _loc_3.height = 48.3;
                _loc_2++;
            }
            return;
        }// end function

        public function arrangeExtra(param1:int = 0)
        {
            var _loc_2:int = 0;
            var _loc_3:SideCard = null;
            _loc_2 = param1;
            while (_loc_2 < this.extra.length)
            {
                
                _loc_3 = this.extra[_loc_2];
                _loc_3.x = 262 + _loc_2 * 36.65;
                _loc_3.y = 595.75;
                _loc_3.width = 33.3;
                _loc_3.height = 48.3;
                _loc_2++;
            }
            return;
        }// end function

        public function selectSidingCardE(event:MouseEvent)
        {
            var _loc_2:SideCard = null;
            var _loc_3:String = null;
            _loc_2 = SideCard(event.currentTarget);
            switch(_loc_2.area)
            {
                case "deck":
                {
                    if (_loc_2.glow == null)
                    {
                        _loc_2.glow = "side";
                        var _loc_4:String = this;
                        var _loc_5:* = this.deck_out + 1;
                        _loc_4.deck_out = _loc_5;
                    }
                    else
                    {
                        _loc_2.glow = null;
                        var _loc_4:String = this;
                        var _loc_5:* = this.deck_out - 1;
                        _loc_4.deck_out = _loc_5;
                    }
                    break;
                }
                case "side":
                {
                    _loc_3 = _loc_2.front_mc.card;
                    if (_loc_3 == "fusion" || _loc_3 == "synchro" || _loc_3 == "xyz")
                    {
                        if (_loc_2.glow == null)
                        {
                            _loc_2.glow = "extra";
                            var _loc_4:String = this;
                            var _loc_5:* = this.extra_in + 1;
                            _loc_4.extra_in = _loc_5;
                        }
                        else
                        {
                            _loc_2.glow = null;
                            var _loc_4:String = this;
                            var _loc_5:* = this.extra_in - 1;
                            _loc_4.extra_in = _loc_5;
                        }
                    }
                    else if (_loc_2.glow == null)
                    {
                        _loc_2.glow = "deck";
                        var _loc_4:String = this;
                        var _loc_5:* = this.deck_in + 1;
                        _loc_4.deck_in = _loc_5;
                    }
                    else
                    {
                        _loc_2.glow = null;
                        var _loc_4:String = this;
                        var _loc_5:* = this.deck_in - 1;
                        _loc_4.deck_in = _loc_5;
                    }
                    break;
                }
                case "extra":
                {
                    if (_loc_2.glow == null)
                    {
                        _loc_2.glow = "side";
                        var _loc_4:String = this;
                        var _loc_5:* = this.extra_out + 1;
                        _loc_4.extra_out = _loc_5;
                    }
                    else
                    {
                        _loc_2.glow = null;
                        var _loc_4:String = this;
                        var _loc_5:* = this.extra_out - 1;
                        _loc_4.extra_out = _loc_5;
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (this.deck_in == 0 && this.extra_in == 0)
            {
                this.swap_btn.enabled = false;
            }
            else
            {
                this.swap_btn.enabled = this.deck_in == this.deck_out && this.extra_in == this.extra_out;
            }
            return;
        }// end function

        public function doneSidingE(event:MouseEvent = null)
        {
            this.getConfirmation("Done Siding", "Are you sure you are done siding? Further siding will not be possible.", this.doneSiding);
            return;
        }// end function

        public function doneSiding(param1:Boolean)
        {
            var _loc_2:Array = null;
            var _loc_3:int = 0;
            if (!param1)
            {
                return;
            }
            _loc_2 = ["Done siding"];
            _loc_2.push(this.deck.length);
            _loc_3 = 0;
            while (_loc_3 < this.deck.length)
            {
                
                _loc_2.push(this.deck[_loc_3].front_mc.id);
                _loc_3++;
            }
            _loc_2.push(this.side.length);
            _loc_3 = 0;
            while (_loc_3 < this.side.length)
            {
                
                _loc_2.push(this.side[_loc_3].front_mc.id);
                _loc_3++;
            }
            _loc_2.push(this.extra.length);
            _loc_3 = 0;
            while (_loc_3 < this.extra.length)
            {
                
                _loc_2.push(this.extra[_loc_3].front_mc.id);
                _loc_3++;
            }
            this.Send(_loc_2);
            this.disableSiding();
            return;
        }// end function

        public function swapSidingE(event:MouseEvent = null)
        {
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:SideCard = null;
            var _loc_6:Boolean = false;
            var _loc_7:SideCard = null;
            var _loc_8:String = null;
            var _loc_9:int = 0;
            _loc_2 = 0;
            _loc_3 = 0;
            _loc_4 = 0;
            while (_loc_4 < this.side.length)
            {
                
                _loc_5 = this.side[_loc_4];
                _loc_6 = false;
                if (_loc_5.glow == "deck")
                {
                    while (_loc_2 < this.deck.length)
                    {
                        
                        _loc_7 = this.deck[_loc_2];
                        if (_loc_7.glow == "side")
                        {
                            _loc_6 = true;
                            _loc_2++;
                            break;
                        }
                        _loc_2++;
                    }
                }
                else if (_loc_5.glow == "extra")
                {
                    while (_loc_3 < this.extra.length)
                    {
                        
                        _loc_7 = this.extra[_loc_3];
                        if (_loc_7.glow == "side")
                        {
                            _loc_6 = true;
                            _loc_3++;
                            break;
                        }
                        _loc_3++;
                    }
                }
                if (_loc_6)
                {
                    _loc_8 = _loc_5.area;
                    _loc_5.area = _loc_7.area;
                    _loc_7.area = _loc_8;
                    _loc_9 = _loc_5.idx;
                    _loc_5.idx = _loc_7.idx;
                    _loc_7.idx = _loc_9;
                    this[_loc_5.area][_loc_5.idx] = _loc_5;
                    this[_loc_7.area][_loc_7.idx] = _loc_7;
                    _loc_5.glow = null;
                    _loc_7.glow = null;
                }
                _loc_4++;
            }
            this.arrangeDeck();
            this.arrangeSide();
            this.arrangeExtra();
            this.deck_in = 0;
            this.deck_out = 0;
            this.extra_in = 0;
            this.extra_out = 0;
            this.swap_btn.enabled = false;
            return;
        }// end function

        public function sortSidingE(event:MouseEvent = null)
        {
            var i:int;
            var comp:Function;
            var e:* = event;
            comp = function (param1:SideCard, param2:SideCard)
            {
                var _loc_3:int = 0;
                var _loc_4:int = 0;
                var _loc_5:String = null;
                var _loc_6:String = null;
                _loc_3 = card_rank(param1.front_mc.card);
                _loc_4 = card_rank(param2.front_mc.card);
                if (_loc_3 < _loc_4)
                {
                    return -1;
                }
                if (_loc_3 > _loc_4)
                {
                    return 1;
                }
                _loc_5 = param1.front_mc.card_name.toUpperCase();
                _loc_6 = param2.front_mc.card_name.toUpperCase();
                if (_loc_5 < _loc_6)
                {
                    return -1;
                }
                if (_loc_5 > _loc_6)
                {
                    return 1;
                }
                if (param1.front_mc.id < param2.front_mc.id)
                {
                    return -1;
                }
                if (param1.front_mc.id > param2.front_mc.id)
                {
                    return 1;
                }
                if (param1.glow == null && param2.glow != null)
                {
                    return -1;
                }
                if (param1.glow != null && param2.glow == null)
                {
                    return 1;
                }
                return 0;
            }// end function
            ;
            var card_rank:* = function (param1:String) : int
            {
                switch(param1)
                {
                    case "normal":
                    {
                        return 0;
                    }
                    case "effect":
                    {
                        return 1;
                    }
                    case "ritual":
                    {
                        return 2;
                    }
                    case "spell":
                    {
                        return 3;
                    }
                    case "trap":
                    {
                        return 4;
                    }
                    case "fusion":
                    {
                        return 5;
                    }
                    case "synchro":
                    {
                        return 6;
                    }
                    case "xyz":
                    {
                        return 7;
                    }
                    default:
                    {
                        return int.MAX_VALUE;
                        ;
                    }
                }
            }// end function
            ;
            this.deck.sort(comp);
            i;
            while (i < this.deck.length)
            {
                
                this.deck[i].idx = i;
                i = (i + 1);
            }
            this.side.sort(comp);
            i;
            while (i < this.side.length)
            {
                
                this.side[i].idx = i;
                i = (i + 1);
            }
            this.extra.sort(comp);
            i;
            while (i < this.extra.length)
            {
                
                this.extra[i].idx = i;
                i = (i + 1);
            }
            this.arrangeDeck();
            this.arrangeSide();
            this.arrangeExtra();
            return;
        }// end function

        public function resetSidingE(event:MouseEvent = null)
        {
            this.getConfirmation("Reset Deck", "Are you sure you want to undo all swaps performed during the current siding?", this.resetSiding);
            return;
        }// end function

        public function resetSiding(param1:Boolean)
        {
            var _loc_2:int = 0;
            var _loc_3:SideCard = null;
            if (!param1)
            {
                return;
            }
            _loc_2 = 0;
            while (_loc_2 < this.siding_deck_orig.length)
            {
                
                _loc_3 = this.siding_deck_orig[_loc_2];
                this.deck[_loc_2] = _loc_3;
                _loc_3.area = "deck";
                _loc_3.idx = _loc_2;
                _loc_3.glow = null;
                _loc_2++;
            }
            _loc_2 = 0;
            while (_loc_2 < this.siding_side_orig.length)
            {
                
                _loc_3 = this.siding_side_orig[_loc_2];
                this.side[_loc_2] = _loc_3;
                _loc_3.area = "side";
                _loc_3.idx = _loc_2;
                _loc_3.glow = null;
                _loc_2++;
            }
            _loc_2 = 0;
            while (_loc_2 < this.siding_extra_orig.length)
            {
                
                _loc_3 = this.siding_extra_orig[_loc_2];
                this.extra[_loc_2] = _loc_3;
                _loc_3.area = "extra";
                _loc_3.idx = _loc_2;
                _loc_3.glow = null;
                _loc_2++;
            }
            this.arrangeDeck();
            this.arrangeSide();
            this.arrangeExtra();
            this.deck_in = 0;
            this.deck_out = 0;
            this.extra_in = 0;
            this.extra_out = 0;
            this.swap_btn.enabled = false;
            return;
        }// end function

        public function disableSiding()
        {
            var _loc_1:int = 0;
            var _loc_2:SideCard = null;
            if (!this.duelist)
            {
                return;
            }
            this.swap_btn.enabled = false;
            this.sort_btn.visible = false;
            this.reset_btn.enabled = false;
            this.done_siding_btn.enabled = false;
            _loc_1 = 0;
            while (_loc_1 < this.deck.length)
            {
                
                _loc_2 = this.deck[_loc_1];
                _loc_2.glow = null;
                _loc_2.buttonMode = false;
                _loc_2.removeEventListener(MouseEvent.CLICK, this.selectSidingCardE);
                _loc_1++;
            }
            _loc_1 = 0;
            while (_loc_1 < this.side.length)
            {
                
                _loc_2 = this.side[_loc_1];
                _loc_2.glow = null;
                _loc_2.buttonMode = false;
                _loc_2.removeEventListener(MouseEvent.CLICK, this.selectSidingCardE);
                _loc_1++;
            }
            _loc_1 = 0;
            while (_loc_1 < this.extra.length)
            {
                
                _loc_2 = this.extra[_loc_1];
                _loc_2.glow = null;
                _loc_2.buttonMode = false;
                _loc_2.removeEventListener(MouseEvent.CLICK, this.selectSidingCardE);
                _loc_1++;
            }
            return;
        }// end function

        public function __setPerspectiveProjection_(event:Event) : void
        {
            root.transform.perspectiveProjection.fieldOfView = 122.012;
            root.transform.perspectiveProjection.projectionCenter = new Point(512, 320);
            return;
        }// end function

        function __setProp_news_txt_dn_news_1(param1:int)
        {
            if (this.news_txt != null && param1 >= 2 && param1 <= 177 && (this.__setPropDict[this.news_txt] == undefined || !(int(this.__setPropDict[this.news_txt]) >= 2 && int(this.__setPropDict[this.news_txt]) <= 177)))
            {
                this.__setPropDict[this.news_txt] = param1;
                try
                {
                    this.news_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.news_txt.condenseWhite = false;
                this.news_txt.editable = false;
                this.news_txt.enabled = true;
                this.news_txt.horizontalScrollPolicy = "auto";
                this.news_txt.htmlText = "";
                this.news_txt.maxChars = 0;
                this.news_txt.restrict = "";
                this.news_txt.text = "";
                this.news_txt.verticalScrollPolicy = "auto";
                this.news_txt.visible = true;
                this.news_txt.wordWrap = true;
                try
                {
                    this.news_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_ar_sp_dn_boxes_188()
        {
            if (this.__setPropDict[this.ar_sp] == undefined || int(this.__setPropDict[this.ar_sp]) != 189)
            {
                this.__setPropDict[this.ar_sp] = 189;
                try
                {
                    this.ar_sp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.ar_sp.enabled = true;
                this.ar_sp.horizontalLineScrollSize = 4;
                this.ar_sp.horizontalPageScrollSize = 0;
                this.ar_sp.horizontalScrollPolicy = "off";
                this.ar_sp.scrollDrag = false;
                this.ar_sp.source = "";
                this.ar_sp.verticalLineScrollSize = 4;
                this.ar_sp.verticalPageScrollSize = 0;
                this.ar_sp.verticalScrollPolicy = "auto";
                this.ar_sp.visible = true;
                try
                {
                    this.ar_sp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_au_sp_dn_boxes_188()
        {
            if (this.__setPropDict[this.au_sp] == undefined || int(this.__setPropDict[this.au_sp]) != 189)
            {
                this.__setPropDict[this.au_sp] = 189;
                try
                {
                    this.au_sp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.au_sp.enabled = true;
                this.au_sp.horizontalLineScrollSize = 4;
                this.au_sp.horizontalPageScrollSize = 0;
                this.au_sp.horizontalScrollPolicy = "off";
                this.au_sp.scrollDrag = false;
                this.au_sp.source = "";
                this.au_sp.verticalLineScrollSize = 4;
                this.au_sp.verticalPageScrollSize = 0;
                this.au_sp.verticalScrollPolicy = "auto";
                this.au_sp.visible = true;
                try
                {
                    this.au_sp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_decklist_cb_dn_room_188()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.decklist_cb] == undefined || int(this.__setPropDict[this.decklist_cb]) != 189)
            {
                this.__setPropDict[this.decklist_cb] = 189;
                try
                {
                    this.decklist_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.decklist_cb.dataProvider = _loc_1;
                this.decklist_cb.editable = false;
                this.decklist_cb.enabled = true;
                this.decklist_cb.prompt = "";
                this.decklist_cb.restrict = "";
                this.decklist_cb.rowCount = 18;
                this.decklist_cb.visible = true;
                try
                {
                    this.decklist_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_default_btn_dn_room_188()
        {
            if (this.__setPropDict[this.default_btn] == undefined || int(this.__setPropDict[this.default_btn]) != 189)
            {
                this.__setPropDict[this.default_btn] = 189;
                try
                {
                    this.default_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.default_btn.emphasized = false;
                this.default_btn.enabled = true;
                this.default_btn.label = "Set as Default";
                this.default_btn.labelPlacement = "right";
                this.default_btn.selected = false;
                this.default_btn.toggle = false;
                this.default_btn.visible = true;
                try
                {
                    this.default_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_duel_rb_dn_room_188()
        {
            if (this.__setPropDict[this.duel_rb] == undefined || int(this.__setPropDict[this.duel_rb]) != 189)
            {
                this.__setPropDict[this.duel_rb] = 189;
                try
                {
                    this.duel_rb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.duel_rb.enabled = false;
                this.duel_rb.groupName = "DuelMode";
                this.duel_rb.label = "                                                                                                    ";
                this.duel_rb.labelPlacement = "right";
                this.duel_rb.selected = false;
                this.duel_rb.value = "";
                this.duel_rb.visible = true;
                try
                {
                    this.duel_rb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_watch_rb_dn_room_188()
        {
            if (this.__setPropDict[this.watch_rb] == undefined || int(this.__setPropDict[this.watch_rb]) != 189)
            {
                this.__setPropDict[this.watch_rb] = 189;
                try
                {
                    this.watch_rb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.watch_rb.enabled = false;
                this.watch_rb.groupName = "DuelMode";
                this.watch_rb.label = "                                                                                                    ";
                this.watch_rb.labelPlacement = "right";
                this.watch_rb.selected = false;
                this.watch_rb.value = "";
                this.watch_rb.visible = true;
                try
                {
                    this.watch_rb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_filter_username_txt_dn_room_188()
        {
            if (this.__setPropDict[this.filter_username_txt] == undefined || int(this.__setPropDict[this.filter_username_txt]) != 189)
            {
                this.__setPropDict[this.filter_username_txt] = 189;
                try
                {
                    this.filter_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.filter_username_txt.displayAsPassword = false;
                this.filter_username_txt.editable = true;
                this.filter_username_txt.enabled = true;
                this.filter_username_txt.maxChars = 20;
                this.filter_username_txt.restrict = " -{}-~";
                this.filter_username_txt.text = "";
                this.filter_username_txt.visible = true;
                try
                {
                    this.filter_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_rating_lower_txt_dn_room_188()
        {
            if (this.__setPropDict[this.rating_lower_txt] == undefined || int(this.__setPropDict[this.rating_lower_txt]) != 189)
            {
                this.__setPropDict[this.rating_lower_txt] = 189;
                try
                {
                    this.rating_lower_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.rating_lower_txt.displayAsPassword = false;
                this.rating_lower_txt.editable = true;
                this.rating_lower_txt.enabled = true;
                this.rating_lower_txt.maxChars = 4;
                this.rating_lower_txt.restrict = "\\-0-9";
                this.rating_lower_txt.text = "";
                this.rating_lower_txt.visible = true;
                try
                {
                    this.rating_lower_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_rating_upper_txt_dn_room_188()
        {
            if (this.__setPropDict[this.rating_upper_txt] == undefined || int(this.__setPropDict[this.rating_upper_txt]) != 189)
            {
                this.__setPropDict[this.rating_upper_txt] = 189;
                try
                {
                    this.rating_upper_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.rating_upper_txt.displayAsPassword = false;
                this.rating_upper_txt.editable = true;
                this.rating_upper_txt.enabled = true;
                this.rating_upper_txt.maxChars = 4;
                this.rating_upper_txt.restrict = "\\-0-9";
                this.rating_upper_txt.text = "";
                this.rating_upper_txt.visible = true;
                try
                {
                    this.rating_upper_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_rep_lower_txt_dn_room_188()
        {
            if (this.__setPropDict[this.rep_lower_txt] == undefined || int(this.__setPropDict[this.rep_lower_txt]) != 189)
            {
                this.__setPropDict[this.rep_lower_txt] = 189;
                try
                {
                    this.rep_lower_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.rep_lower_txt.displayAsPassword = false;
                this.rep_lower_txt.editable = true;
                this.rep_lower_txt.enabled = true;
                this.rep_lower_txt.maxChars = 9;
                this.rep_lower_txt.restrict = "\\-0-9";
                this.rep_lower_txt.text = "";
                this.rep_lower_txt.visible = true;
                try
                {
                    this.rep_lower_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_rep_upper_txt_dn_room_188()
        {
            if (this.__setPropDict[this.rep_upper_txt] == undefined || int(this.__setPropDict[this.rep_upper_txt]) != 189)
            {
                this.__setPropDict[this.rep_upper_txt] = 189;
                try
                {
                    this.rep_upper_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.rep_upper_txt.displayAsPassword = false;
                this.rep_upper_txt.editable = true;
                this.rep_upper_txt.enabled = true;
                this.rep_upper_txt.maxChars = 9;
                this.rep_upper_txt.restrict = "\\-0-9";
                this.rep_upper_txt.text = "";
                this.rep_upper_txt.visible = true;
                try
                {
                    this.rep_upper_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_match_type_cb_dn_room_188()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.match_type_cb] == undefined || int(this.__setPropDict[this.match_type_cb]) != 189)
            {
                this.__setPropDict[this.match_type_cb] = 189;
                try
                {
                    this.match_type_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"", data:""}, {label:"Single (with siding)", data:"s"}, {label:"Single (no siding)", data:"n"}, {label:"2 out of 3 Match", data:"m"}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.match_type_cb.dataProvider = _loc_1;
                this.match_type_cb.editable = false;
                this.match_type_cb.enabled = true;
                this.match_type_cb.prompt = "";
                this.match_type_cb.restrict = "";
                this.match_type_cb.rowCount = 5;
                this.match_type_cb.visible = true;
                try
                {
                    this.match_type_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_room_exit_btn_dn_exit_188()
        {
            if (this.__setPropDict[this.room_exit_btn] == undefined || int(this.__setPropDict[this.room_exit_btn]) != 189)
            {
                this.__setPropDict[this.room_exit_btn] = 189;
                try
                {
                    this.room_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.room_exit_btn.emphasized = false;
                this.room_exit_btn.enabled = true;
                this.room_exit_btn.label = "Exit";
                this.room_exit_btn.labelPlacement = "right";
                this.room_exit_btn.selected = false;
                this.room_exit_btn.toggle = false;
                this.room_exit_btn.visible = true;
                try
                {
                    this.room_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_name_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.name_txt] == undefined || int(this.__setPropDict[this.name_txt]) != 190)
            {
                this.__setPropDict[this.name_txt] = 190;
                try
                {
                    this.name_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.name_txt.displayAsPassword = false;
                this.name_txt.editable = true;
                this.name_txt.enabled = true;
                this.name_txt.maxChars = 0;
                this.name_txt.restrict = " -~";
                this.name_txt.text = "";
                this.name_txt.visible = true;
                try
                {
                    this.name_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_desc_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.desc_txt] == undefined || int(this.__setPropDict[this.desc_txt]) != 190)
            {
                this.__setPropDict[this.desc_txt] = 190;
                try
                {
                    this.desc_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.desc_txt.displayAsPassword = false;
                this.desc_txt.editable = true;
                this.desc_txt.enabled = true;
                this.desc_txt.maxChars = 0;
                this.desc_txt.restrict = " -~";
                this.desc_txt.text = "";
                this.desc_txt.visible = true;
                try
                {
                    this.desc_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_card_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.card_cb] == undefined || int(this.__setPropDict[this.card_cb]) != 190)
            {
                this.__setPropDict[this.card_cb] = 190;
                try
                {
                    this.card_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"", data:""}, {label:"Monster", data:"monster"}, {label:"Spell", data:"spell"}, {label:"Trap", data:"trap"}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.card_cb.dataProvider = _loc_1;
                this.card_cb.editable = false;
                this.card_cb.enabled = true;
                this.card_cb.prompt = "";
                this.card_cb.restrict = "";
                this.card_cb.rowCount = 5;
                this.card_cb.visible = true;
                try
                {
                    this.card_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_card2_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.card2_cb] == undefined || int(this.__setPropDict[this.card2_cb]) != 190)
            {
                this.__setPropDict[this.card2_cb] = 190;
                try
                {
                    this.card2_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"", data:""}, {label:"Normal", data:"normal"}, {label:"Effect", data:"effect"}, {label:"Ritual", data:"ritual"}, {label:"Fusion", data:"fusion"}, {label:"Synchro", data:"synchro"}, {label:"Xyz", data:"xyz"}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.card2_cb.dataProvider = _loc_1;
                this.card2_cb.editable = false;
                this.card2_cb.enabled = false;
                this.card2_cb.prompt = "";
                this.card2_cb.restrict = "";
                this.card2_cb.rowCount = 5;
                this.card2_cb.visible = true;
                try
                {
                    this.card2_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_type_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.type_cb] == undefined || int(this.__setPropDict[this.type_cb]) != 190)
            {
                this.__setPropDict[this.type_cb] = 190;
                try
                {
                    this.type_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"", data:""}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.type_cb.dataProvider = _loc_1;
                this.type_cb.editable = false;
                this.type_cb.enabled = false;
                this.type_cb.prompt = "";
                this.type_cb.restrict = "";
                this.type_cb.rowCount = 5;
                this.type_cb.visible = true;
                try
                {
                    this.type_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_type2_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.type2_cb] == undefined || int(this.__setPropDict[this.type2_cb]) != 190)
            {
                this.__setPropDict[this.type2_cb] = 190;
                try
                {
                    this.type2_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"", data:""}, {label:"Gemini", data:"Gemini"}, {label:"Spirit", data:"Spirit"}, {label:"Toon", data:"Toon"}, {label:"Tuner", data:"Tuner"}, {label:"Union", data:"Union"}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.type2_cb.dataProvider = _loc_1;
                this.type2_cb.editable = false;
                this.type2_cb.enabled = false;
                this.type2_cb.prompt = "";
                this.type2_cb.restrict = "";
                this.type2_cb.rowCount = 5;
                this.type2_cb.visible = true;
                try
                {
                    this.type2_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_attrib_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.attrib_cb] == undefined || int(this.__setPropDict[this.attrib_cb]) != 190)
            {
                this.__setPropDict[this.attrib_cb] = 190;
                try
                {
                    this.attrib_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"", data:""}, {label:"Dark", data:"dark"}, {label:"Divine", data:"divine"}, {label:"Earth", data:"earth"}, {label:"Fire", data:"fire"}, {label:"Light", data:"light"}, {label:"Water", data:"water"}, {label:"Wind", data:"wind"}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.attrib_cb.dataProvider = _loc_1;
                this.attrib_cb.editable = false;
                this.attrib_cb.enabled = false;
                this.attrib_cb.prompt = "";
                this.attrib_cb.restrict = "";
                this.attrib_cb.rowCount = 5;
                this.attrib_cb.visible = true;
                try
                {
                    this.attrib_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_lvll_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.lvll_txt] == undefined || int(this.__setPropDict[this.lvll_txt]) != 190)
            {
                this.__setPropDict[this.lvll_txt] = 190;
                try
                {
                    this.lvll_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.lvll_txt.displayAsPassword = false;
                this.lvll_txt.editable = true;
                this.lvll_txt.enabled = false;
                this.lvll_txt.maxChars = 2;
                this.lvll_txt.restrict = "0-9";
                this.lvll_txt.text = "";
                this.lvll_txt.visible = true;
                try
                {
                    this.lvll_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_lvlh_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.lvlh_txt] == undefined || int(this.__setPropDict[this.lvlh_txt]) != 190)
            {
                this.__setPropDict[this.lvlh_txt] = 190;
                try
                {
                    this.lvlh_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.lvlh_txt.displayAsPassword = false;
                this.lvlh_txt.editable = true;
                this.lvlh_txt.enabled = false;
                this.lvlh_txt.maxChars = 2;
                this.lvlh_txt.restrict = "0-9";
                this.lvlh_txt.text = "";
                this.lvlh_txt.visible = true;
                try
                {
                    this.lvlh_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_atkl_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.atkl_txt] == undefined || int(this.__setPropDict[this.atkl_txt]) != 190)
            {
                this.__setPropDict[this.atkl_txt] = 190;
                try
                {
                    this.atkl_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.atkl_txt.displayAsPassword = false;
                this.atkl_txt.editable = true;
                this.atkl_txt.enabled = false;
                this.atkl_txt.maxChars = 4;
                this.atkl_txt.restrict = "0-9?";
                this.atkl_txt.text = "";
                this.atkl_txt.visible = true;
                try
                {
                    this.atkl_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_atkh_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.atkh_txt] == undefined || int(this.__setPropDict[this.atkh_txt]) != 190)
            {
                this.__setPropDict[this.atkh_txt] = 190;
                try
                {
                    this.atkh_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.atkh_txt.displayAsPassword = false;
                this.atkh_txt.editable = true;
                this.atkh_txt.enabled = false;
                this.atkh_txt.maxChars = 4;
                this.atkh_txt.restrict = "0-9?";
                this.atkh_txt.text = "";
                this.atkh_txt.visible = true;
                try
                {
                    this.atkh_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_defl_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.defl_txt] == undefined || int(this.__setPropDict[this.defl_txt]) != 190)
            {
                this.__setPropDict[this.defl_txt] = 190;
                try
                {
                    this.defl_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.defl_txt.displayAsPassword = false;
                this.defl_txt.editable = true;
                this.defl_txt.enabled = false;
                this.defl_txt.maxChars = 4;
                this.defl_txt.restrict = "0-9?";
                this.defl_txt.text = "";
                this.defl_txt.visible = true;
                try
                {
                    this.defl_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_defh_txt_dn_deck_189()
        {
            if (this.__setPropDict[this.defh_txt] == undefined || int(this.__setPropDict[this.defh_txt]) != 190)
            {
                this.__setPropDict[this.defh_txt] = 190;
                try
                {
                    this.defh_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.defh_txt.displayAsPassword = false;
                this.defh_txt.editable = true;
                this.defh_txt.enabled = false;
                this.defh_txt.maxChars = 4;
                this.defh_txt.restrict = "0-9?";
                this.defh_txt.text = "";
                this.defh_txt.visible = true;
                try
                {
                    this.defh_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_limit_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.limit_cb] == undefined || int(this.__setPropDict[this.limit_cb]) != 190)
            {
                this.__setPropDict[this.limit_cb] = 190;
                try
                {
                    this.limit_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"", data:""}, {label:0, data:0}, {label:1, data:1}, {label:2, data:2}, {label:3, data:3}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.limit_cb.dataProvider = _loc_1;
                this.limit_cb.editable = false;
                this.limit_cb.enabled = true;
                this.limit_cb.prompt = "";
                this.limit_cb.restrict = "";
                this.limit_cb.rowCount = 5;
                this.limit_cb.visible = true;
                try
                {
                    this.limit_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_order_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.order_cb] == undefined || int(this.__setPropDict[this.order_cb]) != 190)
            {
                this.__setPropDict[this.order_cb] = 190;
                try
                {
                    this.order_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [{label:"Alpha", data:"alpha"}, {label:"New First", data:"new"}];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.order_cb.dataProvider = _loc_1;
                this.order_cb.editable = false;
                this.order_cb.enabled = true;
                this.order_cb.prompt = "";
                this.order_cb.restrict = "";
                this.order_cb.rowCount = 5;
                this.order_cb.visible = true;
                try
                {
                    this.order_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_search_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.search_btn] == undefined || int(this.__setPropDict[this.search_btn]) != 190)
            {
                this.__setPropDict[this.search_btn] = 190;
                try
                {
                    this.search_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.search_btn.emphasized = false;
                this.search_btn.enabled = true;
                this.search_btn.label = "Search";
                this.search_btn.labelPlacement = "right";
                this.search_btn.selected = false;
                this.search_btn.toggle = false;
                this.search_btn.visible = true;
                try
                {
                    this.search_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_clear_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.clear_btn] == undefined || int(this.__setPropDict[this.clear_btn]) != 190)
            {
                this.__setPropDict[this.clear_btn] = 190;
                try
                {
                    this.clear_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.clear_btn.emphasized = false;
                this.clear_btn.enabled = true;
                this.clear_btn.label = "Clear Deck";
                this.clear_btn.labelPlacement = "right";
                this.clear_btn.selected = false;
                this.clear_btn.toggle = false;
                this.clear_btn.visible = true;
                try
                {
                    this.clear_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_default_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.default_btn] == undefined || int(this.__setPropDict[this.default_btn]) != 190)
            {
                this.__setPropDict[this.default_btn] = 190;
                try
                {
                    this.default_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.default_btn.emphasized = false;
                this.default_btn.enabled = true;
                this.default_btn.label = "Set as Default";
                this.default_btn.labelPlacement = "right";
                this.default_btn.selected = false;
                this.default_btn.toggle = false;
                this.default_btn.visible = true;
                try
                {
                    this.default_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_decklist_cb_dn_deck_189()
        {
            var _loc_1:DataProvider = null;
            var _loc_2:SimpleCollectionItem = null;
            var _loc_3:Array = null;
            var _loc_4:Object = null;
            var _loc_5:int = 0;
            var _loc_6:* = undefined;
            if (this.__setPropDict[this.decklist_cb] == undefined || int(this.__setPropDict[this.decklist_cb]) != 190)
            {
                this.__setPropDict[this.decklist_cb] = 190;
                try
                {
                    this.decklist_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                _loc_1 = new DataProvider();
                _loc_3 = [];
                _loc_5 = 0;
                while (_loc_5 < _loc_3.length)
                {
                    
                    _loc_2 = new SimpleCollectionItem();
                    _loc_4 = _loc_3[_loc_5];
                    for (_loc_6 in _loc_4)
                    {
                        
                        _loc_2[_loc_6] = _loc_4[_loc_6];
                    }
                    _loc_1.addItem(_loc_2);
                    _loc_5++;
                }
                this.decklist_cb.dataProvider = _loc_1;
                this.decklist_cb.editable = false;
                this.decklist_cb.enabled = true;
                this.decklist_cb.prompt = "";
                this.decklist_cb.restrict = "";
                this.decklist_cb.rowCount = 24;
                this.decklist_cb.visible = true;
                try
                {
                    this.decklist_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_new_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.new_btn] == undefined || int(this.__setPropDict[this.new_btn]) != 190)
            {
                this.__setPropDict[this.new_btn] = 190;
                try
                {
                    this.new_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.new_btn.emphasized = false;
                this.new_btn.enabled = true;
                this.new_btn.label = "New Deck";
                this.new_btn.labelPlacement = "right";
                this.new_btn.selected = false;
                this.new_btn.toggle = false;
                this.new_btn.visible = true;
                try
                {
                    this.new_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_rename_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.rename_btn] == undefined || int(this.__setPropDict[this.rename_btn]) != 190)
            {
                this.__setPropDict[this.rename_btn] = 190;
                try
                {
                    this.rename_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.rename_btn.emphasized = false;
                this.rename_btn.enabled = true;
                this.rename_btn.label = "Rename Deck";
                this.rename_btn.labelPlacement = "right";
                this.rename_btn.selected = false;
                this.rename_btn.toggle = false;
                this.rename_btn.visible = true;
                try
                {
                    this.rename_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_delete_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.delete_btn] == undefined || int(this.__setPropDict[this.delete_btn]) != 190)
            {
                this.__setPropDict[this.delete_btn] = 190;
                try
                {
                    this.delete_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.delete_btn.emphasized = false;
                this.delete_btn.enabled = true;
                this.delete_btn.label = "Delete Deck";
                this.delete_btn.labelPlacement = "right";
                this.delete_btn.selected = false;
                this.delete_btn.toggle = false;
                this.delete_btn.visible = true;
                try
                {
                    this.delete_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_save_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.save_btn] == undefined || int(this.__setPropDict[this.save_btn]) != 190)
            {
                this.__setPropDict[this.save_btn] = 190;
                try
                {
                    this.save_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.save_btn.emphasized = false;
                this.save_btn.enabled = true;
                this.save_btn.label = "Save Deck";
                this.save_btn.labelPlacement = "right";
                this.save_btn.selected = false;
                this.save_btn.toggle = false;
                this.save_btn.visible = true;
                try
                {
                    this.save_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_save_as_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.save_as_btn] == undefined || int(this.__setPropDict[this.save_as_btn]) != 190)
            {
                this.__setPropDict[this.save_as_btn] = 190;
                try
                {
                    this.save_as_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.save_as_btn.emphasized = false;
                this.save_as_btn.enabled = true;
                this.save_as_btn.label = "Save Deck As";
                this.save_as_btn.labelPlacement = "right";
                this.save_as_btn.selected = false;
                this.save_as_btn.toggle = false;
                this.save_as_btn.visible = true;
                try
                {
                    this.save_as_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_deck_exit_btn_dn_deck_189()
        {
            if (this.__setPropDict[this.deck_exit_btn] == undefined || int(this.__setPropDict[this.deck_exit_btn]) != 190)
            {
                this.__setPropDict[this.deck_exit_btn] = 190;
                try
                {
                    this.deck_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.deck_exit_btn.emphasized = false;
                this.deck_exit_btn.enabled = true;
                this.deck_exit_btn.label = "Exit";
                this.deck_exit_btn.labelPlacement = "right";
                this.deck_exit_btn.selected = false;
                this.deck_exit_btn.toggle = false;
                this.deck_exit_btn.visible = true;
                try
                {
                    this.deck_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_bypass_card_limit_cb_dn_check_189()
        {
            if (this.__setPropDict[this.bypass_card_limit_cb] == undefined || int(this.__setPropDict[this.bypass_card_limit_cb]) != 190)
            {
                this.__setPropDict[this.bypass_card_limit_cb] = 190;
                try
                {
                    this.bypass_card_limit_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.bypass_card_limit_cb.enabled = true;
                this.bypass_card_limit_cb.label = "Bypass Card Limit";
                this.bypass_card_limit_cb.labelPlacement = "right";
                this.bypass_card_limit_cb.selected = false;
                this.bypass_card_limit_cb.visible = true;
                try
                {
                    this.bypass_card_limit_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_username_txt_dn_profile_190()
        {
            if (this.__setPropDict[this.username_txt] == undefined || int(this.__setPropDict[this.username_txt]) != 191)
            {
                this.__setPropDict[this.username_txt] = 191;
                try
                {
                    this.username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.username_txt.displayAsPassword = false;
                this.username_txt.editable = true;
                this.username_txt.enabled = true;
                this.username_txt.maxChars = 20;
                this.username_txt.restrict = " -{}-~";
                this.username_txt.text = "";
                this.username_txt.visible = true;
                try
                {
                    this.username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_profile_txt_dn_profile_190()
        {
            if (this.__setPropDict[this.profile_txt] == undefined || int(this.__setPropDict[this.profile_txt]) != 191)
            {
                this.__setPropDict[this.profile_txt] = 191;
                try
                {
                    this.profile_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.profile_txt.condenseWhite = false;
                this.profile_txt.editable = false;
                this.profile_txt.enabled = true;
                this.profile_txt.horizontalScrollPolicy = "auto";
                this.profile_txt.htmlText = "";
                this.profile_txt.maxChars = 0;
                this.profile_txt.restrict = "";
                this.profile_txt.text = "";
                this.profile_txt.verticalScrollPolicy = "auto";
                this.profile_txt.visible = true;
                this.profile_txt.wordWrap = true;
                try
                {
                    this.profile_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_profile_exit_btn_dn_profile_190()
        {
            if (this.__setPropDict[this.profile_exit_btn] == undefined || int(this.__setPropDict[this.profile_exit_btn]) != 191)
            {
                this.__setPropDict[this.profile_exit_btn] = 191;
                try
                {
                    this.profile_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.profile_exit_btn.emphasized = false;
                this.profile_exit_btn.enabled = true;
                this.profile_exit_btn.label = "Exit";
                this.profile_exit_btn.labelPlacement = "right";
                this.profile_exit_btn.selected = false;
                this.profile_exit_btn.toggle = false;
                this.profile_exit_btn.visible = true;
                try
                {
                    this.profile_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_redeem_donation_btn_dn_donation_191()
        {
            if (this.__setPropDict[this.redeem_donation_btn] == undefined || int(this.__setPropDict[this.redeem_donation_btn]) != 192)
            {
                this.__setPropDict[this.redeem_donation_btn] = 192;
                try
                {
                    this.redeem_donation_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.redeem_donation_btn.emphasized = false;
                this.redeem_donation_btn.enabled = true;
                this.redeem_donation_btn.label = "Redeem Donation";
                this.redeem_donation_btn.labelPlacement = "right";
                this.redeem_donation_btn.selected = false;
                this.redeem_donation_btn.toggle = false;
                this.redeem_donation_btn.visible = true;
                try
                {
                    this.redeem_donation_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_profile_txt_dn_profile_191()
        {
            if (this.__setPropDict[this.profile_txt] == undefined || int(this.__setPropDict[this.profile_txt]) != 192)
            {
                this.__setPropDict[this.profile_txt] = 192;
                try
                {
                    this.profile_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.profile_txt.condenseWhite = false;
                this.profile_txt.editable = true;
                this.profile_txt.enabled = true;
                this.profile_txt.horizontalScrollPolicy = "auto";
                this.profile_txt.htmlText = "";
                this.profile_txt.maxChars = 1000;
                this.profile_txt.restrict = " -~";
                this.profile_txt.text = "";
                this.profile_txt.verticalScrollPolicy = "auto";
                this.profile_txt.visible = true;
                this.profile_txt.wordWrap = true;
                try
                {
                    this.profile_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_save_profile_btn_dn_buttons_191()
        {
            if (this.__setPropDict[this.save_profile_btn] == undefined || int(this.__setPropDict[this.save_profile_btn]) != 192)
            {
                this.__setPropDict[this.save_profile_btn] = 192;
                try
                {
                    this.save_profile_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.save_profile_btn.emphasized = false;
                this.save_profile_btn.enabled = true;
                this.save_profile_btn.label = "Save Profile";
                this.save_profile_btn.labelPlacement = "right";
                this.save_profile_btn.selected = false;
                this.save_profile_btn.toggle = false;
                this.save_profile_btn.visible = true;
                try
                {
                    this.save_profile_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_my_profile_exit_btn_dn_buttons_191()
        {
            if (this.__setPropDict[this.my_profile_exit_btn] == undefined || int(this.__setPropDict[this.my_profile_exit_btn]) != 192)
            {
                this.__setPropDict[this.my_profile_exit_btn] = 192;
                try
                {
                    this.my_profile_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.my_profile_exit_btn.emphasized = false;
                this.my_profile_exit_btn.enabled = true;
                this.my_profile_exit_btn.label = "Exit";
                this.my_profile_exit_btn.labelPlacement = "right";
                this.my_profile_exit_btn.selected = false;
                this.my_profile_exit_btn.toggle = false;
                this.my_profile_exit_btn.visible = true;
                try
                {
                    this.my_profile_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_password_exit_btn_dn_password_192()
        {
            if (this.__setPropDict[this.password_exit_btn] == undefined || int(this.__setPropDict[this.password_exit_btn]) != 193)
            {
                this.__setPropDict[this.password_exit_btn] = 193;
                try
                {
                    this.password_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.password_exit_btn.emphasized = false;
                this.password_exit_btn.enabled = true;
                this.password_exit_btn.label = "Exit";
                this.password_exit_btn.labelPlacement = "right";
                this.password_exit_btn.selected = false;
                this.password_exit_btn.toggle = false;
                this.password_exit_btn.visible = true;
                try
                {
                    this.password_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_current_txt_dn_password_192()
        {
            if (this.__setPropDict[this.current_txt] == undefined || int(this.__setPropDict[this.current_txt]) != 193)
            {
                this.__setPropDict[this.current_txt] = 193;
                try
                {
                    this.current_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.current_txt.displayAsPassword = true;
                this.current_txt.editable = true;
                this.current_txt.enabled = true;
                this.current_txt.maxChars = 0;
                this.current_txt.restrict = " -~";
                this.current_txt.text = "";
                this.current_txt.visible = true;
                try
                {
                    this.current_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_new_txt_dn_password_192()
        {
            if (this.__setPropDict[this.new_txt] == undefined || int(this.__setPropDict[this.new_txt]) != 193)
            {
                this.__setPropDict[this.new_txt] = 193;
                try
                {
                    this.new_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.new_txt.displayAsPassword = true;
                this.new_txt.editable = true;
                this.new_txt.enabled = true;
                this.new_txt.maxChars = 0;
                this.new_txt.restrict = " -~";
                this.new_txt.text = "";
                this.new_txt.visible = true;
                try
                {
                    this.new_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_confirm_txt_dn_password_192()
        {
            if (this.__setPropDict[this.confirm_txt] == undefined || int(this.__setPropDict[this.confirm_txt]) != 193)
            {
                this.__setPropDict[this.confirm_txt] = 193;
                try
                {
                    this.confirm_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.confirm_txt.displayAsPassword = true;
                this.confirm_txt.editable = true;
                this.confirm_txt.enabled = true;
                this.confirm_txt.maxChars = 0;
                this.confirm_txt.restrict = " -~";
                this.confirm_txt.text = "";
                this.confirm_txt.visible = true;
                try
                {
                    this.confirm_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_change_btn_dn_password_192()
        {
            if (this.__setPropDict[this.change_btn] == undefined || int(this.__setPropDict[this.change_btn]) != 193)
            {
                this.__setPropDict[this.change_btn] = 193;
                try
                {
                    this.change_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.change_btn.emphasized = false;
                this.change_btn.enabled = true;
                this.change_btn.label = "Change Password";
                this.change_btn.labelPlacement = "right";
                this.change_btn.selected = false;
                this.change_btn.toggle = false;
                this.change_btn.visible = true;
                try
                {
                    this.change_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_status_username_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.status_username_txt] == undefined || int(this.__setPropDict[this.status_username_txt]) != 194)
            {
                this.__setPropDict[this.status_username_txt] = 194;
                try
                {
                    this.status_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.status_username_txt.displayAsPassword = false;
                this.status_username_txt.editable = true;
                this.status_username_txt.enabled = true;
                this.status_username_txt.maxChars = 20;
                this.status_username_txt.restrict = " -{}-~";
                this.status_username_txt.text = "";
                this.status_username_txt.visible = true;
                try
                {
                    this.status_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_get_ban_status_btn_dn_admin_193()
        {
            if (this.__setPropDict[this.get_ban_status_btn] == undefined || int(this.__setPropDict[this.get_ban_status_btn]) != 194)
            {
                this.__setPropDict[this.get_ban_status_btn] = 194;
                try
                {
                    this.get_ban_status_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.get_ban_status_btn.emphasized = false;
                this.get_ban_status_btn.enabled = true;
                this.get_ban_status_btn.label = "Get Ban Status";
                this.get_ban_status_btn.labelPlacement = "right";
                this.get_ban_status_btn.selected = false;
                this.get_ban_status_btn.toggle = false;
                this.get_ban_status_btn.visible = true;
                try
                {
                    this.get_ban_status_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_ban_note_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.ban_note_txt] == undefined || int(this.__setPropDict[this.ban_note_txt]) != 194)
            {
                this.__setPropDict[this.ban_note_txt] = 194;
                try
                {
                    this.ban_note_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.ban_note_txt.condenseWhite = false;
                this.ban_note_txt.editable = false;
                this.ban_note_txt.enabled = true;
                this.ban_note_txt.horizontalScrollPolicy = "auto";
                this.ban_note_txt.htmlText = "";
                this.ban_note_txt.maxChars = 0;
                this.ban_note_txt.restrict = "";
                this.ban_note_txt.text = "";
                this.ban_note_txt.verticalScrollPolicy = "auto";
                this.ban_note_txt.visible = true;
                this.ban_note_txt.wordWrap = true;
                try
                {
                    this.ban_note_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_ban_username_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.ban_username_txt] == undefined || int(this.__setPropDict[this.ban_username_txt]) != 194)
            {
                this.__setPropDict[this.ban_username_txt] = 194;
                try
                {
                    this.ban_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.ban_username_txt.displayAsPassword = false;
                this.ban_username_txt.editable = true;
                this.ban_username_txt.enabled = true;
                this.ban_username_txt.maxChars = 20;
                this.ban_username_txt.restrict = " -{}-~";
                this.ban_username_txt.text = "";
                this.ban_username_txt.visible = true;
                try
                {
                    this.ban_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_days_rb_dn_admin_193()
        {
            if (this.__setPropDict[this.days_rb] == undefined || int(this.__setPropDict[this.days_rb]) != 194)
            {
                this.__setPropDict[this.days_rb] = 194;
                try
                {
                    this.days_rb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.days_rb.enabled = true;
                this.days_rb.groupName = "BanTime";
                this.days_rb.label = "                                                                                                    ";
                this.days_rb.labelPlacement = "right";
                this.days_rb.selected = true;
                this.days_rb.value = "";
                this.days_rb.visible = true;
                try
                {
                    this.days_rb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_forever_rb_dn_admin_193()
        {
            if (this.__setPropDict[this.forever_rb] == undefined || int(this.__setPropDict[this.forever_rb]) != 194)
            {
                this.__setPropDict[this.forever_rb] = 194;
                try
                {
                    this.forever_rb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.forever_rb.enabled = true;
                this.forever_rb.groupName = "BanTime";
                this.forever_rb.label = "                                                                                                    ";
                this.forever_rb.labelPlacement = "right";
                this.forever_rb.selected = false;
                this.forever_rb.value = "";
                this.forever_rb.visible = true;
                try
                {
                    this.forever_rb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_days_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.days_txt] == undefined || int(this.__setPropDict[this.days_txt]) != 194)
            {
                this.__setPropDict[this.days_txt] = 194;
                try
                {
                    this.days_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.days_txt.displayAsPassword = false;
                this.days_txt.editable = true;
                this.days_txt.enabled = true;
                this.days_txt.maxChars = 5;
                this.days_txt.restrict = "0-9";
                this.days_txt.text = "";
                this.days_txt.visible = true;
                try
                {
                    this.days_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_reason_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.reason_txt] == undefined || int(this.__setPropDict[this.reason_txt]) != 194)
            {
                this.__setPropDict[this.reason_txt] = 194;
                try
                {
                    this.reason_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.reason_txt.displayAsPassword = false;
                this.reason_txt.editable = true;
                this.reason_txt.enabled = true;
                this.reason_txt.maxChars = 100;
                this.reason_txt.restrict = " -~";
                this.reason_txt.text = "";
                this.reason_txt.visible = true;
                try
                {
                    this.reason_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_increment_strikes_cb_dn_admin_193()
        {
            if (this.__setPropDict[this.increment_strikes_cb] == undefined || int(this.__setPropDict[this.increment_strikes_cb]) != 194)
            {
                this.__setPropDict[this.increment_strikes_cb] = 194;
                try
                {
                    this.increment_strikes_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.increment_strikes_cb.enabled = true;
                this.increment_strikes_cb.label = "                                                                                                    ";
                this.increment_strikes_cb.labelPlacement = "right";
                this.increment_strikes_cb.selected = true;
                this.increment_strikes_cb.visible = true;
                try
                {
                    this.increment_strikes_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_ban_user_btn_dn_admin_193()
        {
            if (this.__setPropDict[this.ban_user_btn] == undefined || int(this.__setPropDict[this.ban_user_btn]) != 194)
            {
                this.__setPropDict[this.ban_user_btn] = 194;
                try
                {
                    this.ban_user_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.ban_user_btn.emphasized = false;
                this.ban_user_btn.enabled = true;
                this.ban_user_btn.label = "Ban User";
                this.ban_user_btn.labelPlacement = "right";
                this.ban_user_btn.selected = false;
                this.ban_user_btn.toggle = false;
                this.ban_user_btn.visible = true;
                try
                {
                    this.ban_user_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_unban_username_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.unban_username_txt] == undefined || int(this.__setPropDict[this.unban_username_txt]) != 194)
            {
                this.__setPropDict[this.unban_username_txt] = 194;
                try
                {
                    this.unban_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.unban_username_txt.displayAsPassword = false;
                this.unban_username_txt.editable = true;
                this.unban_username_txt.enabled = true;
                this.unban_username_txt.maxChars = 20;
                this.unban_username_txt.restrict = " -{}-~";
                this.unban_username_txt.text = "";
                this.unban_username_txt.visible = true;
                try
                {
                    this.unban_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_decrement_strikes_cb_dn_admin_193()
        {
            if (this.__setPropDict[this.decrement_strikes_cb] == undefined || int(this.__setPropDict[this.decrement_strikes_cb]) != 194)
            {
                this.__setPropDict[this.decrement_strikes_cb] = 194;
                try
                {
                    this.decrement_strikes_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.decrement_strikes_cb.enabled = true;
                this.decrement_strikes_cb.label = "                                                                                                    ";
                this.decrement_strikes_cb.labelPlacement = "right";
                this.decrement_strikes_cb.selected = true;
                this.decrement_strikes_cb.visible = true;
                try
                {
                    this.decrement_strikes_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_unban_user_btn_dn_admin_193()
        {
            if (this.__setPropDict[this.unban_user_btn] == undefined || int(this.__setPropDict[this.unban_user_btn]) != 194)
            {
                this.__setPropDict[this.unban_user_btn] = 194;
                try
                {
                    this.unban_user_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.unban_user_btn.emphasized = false;
                this.unban_user_btn.enabled = true;
                this.unban_user_btn.label = "Unban User";
                this.unban_user_btn.labelPlacement = "right";
                this.unban_user_btn.selected = false;
                this.unban_user_btn.toggle = false;
                this.unban_user_btn.visible = true;
                try
                {
                    this.unban_user_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_kick_username_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.kick_username_txt] == undefined || int(this.__setPropDict[this.kick_username_txt]) != 194)
            {
                this.__setPropDict[this.kick_username_txt] = 194;
                try
                {
                    this.kick_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.kick_username_txt.displayAsPassword = false;
                this.kick_username_txt.editable = true;
                this.kick_username_txt.enabled = true;
                this.kick_username_txt.maxChars = 20;
                this.kick_username_txt.restrict = " -{}-~";
                this.kick_username_txt.text = "";
                this.kick_username_txt.visible = true;
                try
                {
                    this.kick_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_kick_user_btn_dn_admin_193()
        {
            if (this.__setPropDict[this.kick_user_btn] == undefined || int(this.__setPropDict[this.kick_user_btn]) != 194)
            {
                this.__setPropDict[this.kick_user_btn] = 194;
                try
                {
                    this.kick_user_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.kick_user_btn.emphasized = false;
                this.kick_user_btn.enabled = true;
                this.kick_user_btn.label = "Kick User";
                this.kick_user_btn.labelPlacement = "right";
                this.kick_user_btn.selected = false;
                this.kick_user_btn.toggle = false;
                this.kick_user_btn.visible = true;
                try
                {
                    this.kick_user_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_warning_username_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.warning_username_txt] == undefined || int(this.__setPropDict[this.warning_username_txt]) != 194)
            {
                this.__setPropDict[this.warning_username_txt] = 194;
                try
                {
                    this.warning_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.warning_username_txt.displayAsPassword = false;
                this.warning_username_txt.editable = true;
                this.warning_username_txt.enabled = true;
                this.warning_username_txt.maxChars = 20;
                this.warning_username_txt.restrict = " -{}-~";
                this.warning_username_txt.text = "";
                this.warning_username_txt.visible = true;
                try
                {
                    this.warning_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_warning_txt_dn_admin_193()
        {
            if (this.__setPropDict[this.warning_txt] == undefined || int(this.__setPropDict[this.warning_txt]) != 194)
            {
                this.__setPropDict[this.warning_txt] = 194;
                try
                {
                    this.warning_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.warning_txt.displayAsPassword = false;
                this.warning_txt.editable = true;
                this.warning_txt.enabled = true;
                this.warning_txt.maxChars = 100;
                this.warning_txt.restrict = " -~";
                this.warning_txt.text = "";
                this.warning_txt.visible = true;
                try
                {
                    this.warning_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_increment_strikes2_cb_dn_admin_193()
        {
            if (this.__setPropDict[this.increment_strikes2_cb] == undefined || int(this.__setPropDict[this.increment_strikes2_cb]) != 194)
            {
                this.__setPropDict[this.increment_strikes2_cb] = 194;
                try
                {
                    this.increment_strikes2_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.increment_strikes2_cb.enabled = true;
                this.increment_strikes2_cb.label = "                                                                                                    ";
                this.increment_strikes2_cb.labelPlacement = "right";
                this.increment_strikes2_cb.selected = false;
                this.increment_strikes2_cb.visible = true;
                try
                {
                    this.increment_strikes2_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_add_warning_btn_dn_admin_193()
        {
            if (this.__setPropDict[this.add_warning_btn] == undefined || int(this.__setPropDict[this.add_warning_btn]) != 194)
            {
                this.__setPropDict[this.add_warning_btn] = 194;
                try
                {
                    this.add_warning_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.add_warning_btn.emphasized = false;
                this.add_warning_btn.enabled = true;
                this.add_warning_btn.label = "Add Warning";
                this.add_warning_btn.labelPlacement = "right";
                this.add_warning_btn.selected = false;
                this.add_warning_btn.toggle = false;
                this.add_warning_btn.visible = true;
                try
                {
                    this.add_warning_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_admin_exit_btn_dn_admin_193()
        {
            if (this.__setPropDict[this.admin_exit_btn] == undefined || int(this.__setPropDict[this.admin_exit_btn]) != 194)
            {
                this.__setPropDict[this.admin_exit_btn] = 194;
                try
                {
                    this.admin_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.admin_exit_btn.emphasized = false;
                this.admin_exit_btn.enabled = true;
                this.admin_exit_btn.label = "Exit";
                this.admin_exit_btn.labelPlacement = "right";
                this.admin_exit_btn.selected = false;
                this.admin_exit_btn.toggle = false;
                this.admin_exit_btn.visible = true;
                try
                {
                    this.admin_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_ip_username_txt_dn_admin2_194()
        {
            if (this.__setPropDict[this.ip_username_txt] == undefined || int(this.__setPropDict[this.ip_username_txt]) != 195)
            {
                this.__setPropDict[this.ip_username_txt] = 195;
                try
                {
                    this.ip_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.ip_username_txt.displayAsPassword = false;
                this.ip_username_txt.editable = true;
                this.ip_username_txt.enabled = true;
                this.ip_username_txt.maxChars = 20;
                this.ip_username_txt.restrict = " -{}-~";
                this.ip_username_txt.text = "";
                this.ip_username_txt.visible = true;
                try
                {
                    this.ip_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_check_ip_btn_dn_admin2_194()
        {
            if (this.__setPropDict[this.check_ip_btn] == undefined || int(this.__setPropDict[this.check_ip_btn]) != 195)
            {
                this.__setPropDict[this.check_ip_btn] = 195;
                try
                {
                    this.check_ip_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.check_ip_btn.emphasized = false;
                this.check_ip_btn.enabled = true;
                this.check_ip_btn.label = "Check IP";
                this.check_ip_btn.labelPlacement = "right";
                this.check_ip_btn.selected = false;
                this.check_ip_btn.toggle = false;
                this.check_ip_btn.visible = true;
                try
                {
                    this.check_ip_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_alts_txt_dn_admin2_194()
        {
            if (this.__setPropDict[this.alts_txt] == undefined || int(this.__setPropDict[this.alts_txt]) != 195)
            {
                this.__setPropDict[this.alts_txt] = 195;
                try
                {
                    this.alts_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.alts_txt.condenseWhite = false;
                this.alts_txt.editable = false;
                this.alts_txt.enabled = true;
                this.alts_txt.horizontalScrollPolicy = "auto";
                this.alts_txt.htmlText = "";
                this.alts_txt.maxChars = 0;
                this.alts_txt.restrict = "";
                this.alts_txt.text = "";
                this.alts_txt.verticalScrollPolicy = "auto";
                this.alts_txt.visible = true;
                this.alts_txt.wordWrap = true;
                try
                {
                    this.alts_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_comp_username_txt_dn_admin2_194()
        {
            if (this.__setPropDict[this.comp_username_txt] == undefined || int(this.__setPropDict[this.comp_username_txt]) != 195)
            {
                this.__setPropDict[this.comp_username_txt] = 195;
                try
                {
                    this.comp_username_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.comp_username_txt.displayAsPassword = false;
                this.comp_username_txt.editable = true;
                this.comp_username_txt.enabled = true;
                this.comp_username_txt.maxChars = 20;
                this.comp_username_txt.restrict = " -{}-~";
                this.comp_username_txt.text = "";
                this.comp_username_txt.visible = true;
                try
                {
                    this.comp_username_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_check_comp_btn_dn_admin2_194()
        {
            if (this.__setPropDict[this.check_comp_btn] == undefined || int(this.__setPropDict[this.check_comp_btn]) != 195)
            {
                this.__setPropDict[this.check_comp_btn] = 195;
                try
                {
                    this.check_comp_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.check_comp_btn.emphasized = false;
                this.check_comp_btn.enabled = true;
                this.check_comp_btn.label = "Check Comp";
                this.check_comp_btn.labelPlacement = "right";
                this.check_comp_btn.selected = false;
                this.check_comp_btn.toggle = false;
                this.check_comp_btn.visible = true;
                try
                {
                    this.check_comp_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_comp_alts_txt_dn_admin2_194()
        {
            if (this.__setPropDict[this.comp_alts_txt] == undefined || int(this.__setPropDict[this.comp_alts_txt]) != 195)
            {
                this.__setPropDict[this.comp_alts_txt] = 195;
                try
                {
                    this.comp_alts_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.comp_alts_txt.condenseWhite = false;
                this.comp_alts_txt.editable = false;
                this.comp_alts_txt.enabled = true;
                this.comp_alts_txt.horizontalScrollPolicy = "auto";
                this.comp_alts_txt.htmlText = "";
                this.comp_alts_txt.maxChars = 0;
                this.comp_alts_txt.restrict = "";
                this.comp_alts_txt.text = "";
                this.comp_alts_txt.verticalScrollPolicy = "auto";
                this.comp_alts_txt.visible = true;
                this.comp_alts_txt.wordWrap = true;
                try
                {
                    this.comp_alts_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_admin2_exit_btn_dn_admin2_194()
        {
            if (this.__setPropDict[this.admin2_exit_btn] == undefined || int(this.__setPropDict[this.admin2_exit_btn]) != 195)
            {
                this.__setPropDict[this.admin2_exit_btn] = 195;
                try
                {
                    this.admin2_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.admin2_exit_btn.emphasized = false;
                this.admin2_exit_btn.enabled = true;
                this.admin2_exit_btn.label = "Exit";
                this.admin2_exit_btn.labelPlacement = "right";
                this.admin2_exit_btn.selected = false;
                this.admin2_exit_btn.toggle = false;
                this.admin2_exit_btn.visible = true;
                try
                {
                    this.admin2_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_content_sp_dn_content_195()
        {
            if (this.__setPropDict[this.content_sp] == undefined || int(this.__setPropDict[this.content_sp]) != 196)
            {
                this.__setPropDict[this.content_sp] = 196;
                try
                {
                    this.content_sp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.content_sp.enabled = true;
                this.content_sp.horizontalLineScrollSize = 4;
                this.content_sp.horizontalPageScrollSize = 0;
                this.content_sp.horizontalScrollPolicy = "off";
                this.content_sp.scrollDrag = false;
                this.content_sp.source = "";
                this.content_sp.verticalLineScrollSize = 4;
                this.content_sp.verticalPageScrollSize = 0;
                this.content_sp.verticalScrollPolicy = "auto";
                this.content_sp.visible = true;
                try
                {
                    this.content_sp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_rankings_exit_btn_dn_exit_195()
        {
            if (this.__setPropDict[this.rankings_exit_btn] == undefined || int(this.__setPropDict[this.rankings_exit_btn]) != 196)
            {
                this.__setPropDict[this.rankings_exit_btn] = 196;
                try
                {
                    this.rankings_exit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.rankings_exit_btn.emphasized = false;
                this.rankings_exit_btn.enabled = true;
                this.rankings_exit_btn.label = "Exit";
                this.rankings_exit_btn.labelPlacement = "right";
                this.rankings_exit_btn.selected = false;
                this.rankings_exit_btn.toggle = false;
                this.rankings_exit_btn.visible = true;
                try
                {
                    this.rankings_exit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_cin_txt_dn_chat_196(param1:int)
        {
            if (this.cin_txt != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.cin_txt] == undefined || !(int(this.__setPropDict[this.cin_txt]) >= 197 && int(this.__setPropDict[this.cin_txt]) <= 200)))
            {
                this.__setPropDict[this.cin_txt] = param1;
                try
                {
                    this.cin_txt["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.cin_txt.displayAsPassword = false;
                this.cin_txt.editable = true;
                this.cin_txt.enabled = true;
                this.cin_txt.maxChars = 200;
                this.cin_txt.restrict = " -~";
                this.cin_txt.text = "";
                this.cin_txt.visible = true;
                try
                {
                    this.cin_txt["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_loss2_btn_dn_abtns_196(param1:int)
        {
            if (this.loss2_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.loss2_btn] == undefined || !(int(this.__setPropDict[this.loss2_btn]) >= 197 && int(this.__setPropDict[this.loss2_btn]) <= 200)))
            {
                this.__setPropDict[this.loss2_btn] = param1;
                try
                {
                    this.loss2_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.loss2_btn.emphasized = false;
                this.loss2_btn.enabled = true;
                this.loss2_btn.label = "Opponent Loss";
                this.loss2_btn.labelPlacement = "right";
                this.loss2_btn.selected = false;
                this.loss2_btn.toggle = false;
                this.loss2_btn.visible = true;
                try
                {
                    this.loss2_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_loss1_btn_dn_abtns_196(param1:int)
        {
            if (this.loss1_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.loss1_btn] == undefined || !(int(this.__setPropDict[this.loss1_btn]) >= 197 && int(this.__setPropDict[this.loss1_btn]) <= 200)))
            {
                this.__setPropDict[this.loss1_btn] = param1;
                try
                {
                    this.loss1_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.loss1_btn.emphasized = false;
                this.loss1_btn.enabled = true;
                this.loss1_btn.label = "Host Loss";
                this.loss1_btn.labelPlacement = "right";
                this.loss1_btn.selected = false;
                this.loss1_btn.toggle = false;
                this.loss1_btn.visible = true;
                try
                {
                    this.loss1_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_cancel_duel_btn_dn_abtns_196(param1:int)
        {
            if (this.cancel_duel_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.cancel_duel_btn] == undefined || !(int(this.__setPropDict[this.cancel_duel_btn]) >= 197 && int(this.__setPropDict[this.cancel_duel_btn]) <= 200)))
            {
                this.__setPropDict[this.cancel_duel_btn] = param1;
                try
                {
                    this.cancel_duel_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.cancel_duel_btn.emphasized = false;
                this.cancel_duel_btn.enabled = true;
                this.cancel_duel_btn.label = "Cancel";
                this.cancel_duel_btn.labelPlacement = "right";
                this.cancel_duel_btn.selected = false;
                this.cancel_duel_btn.toggle = false;
                this.cancel_duel_btn.visible = true;
                try
                {
                    this.cancel_duel_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_defeat_btn_dn_buttons_196(param1:int)
        {
            if (this.defeat_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.defeat_btn] == undefined || !(int(this.__setPropDict[this.defeat_btn]) >= 197 && int(this.__setPropDict[this.defeat_btn]) <= 200)))
            {
                this.__setPropDict[this.defeat_btn] = param1;
                try
                {
                    this.defeat_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.defeat_btn.emphasized = false;
                this.defeat_btn.enabled = true;
                this.defeat_btn.label = "Admit Defeat";
                this.defeat_btn.labelPlacement = "right";
                this.defeat_btn.selected = false;
                this.defeat_btn.toggle = false;
                this.defeat_btn.visible = true;
                try
                {
                    this.defeat_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_draw_btn_dn_buttons_196(param1:int)
        {
            if (this.draw_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.draw_btn] == undefined || !(int(this.__setPropDict[this.draw_btn]) >= 197 && int(this.__setPropDict[this.draw_btn]) <= 200)))
            {
                this.__setPropDict[this.draw_btn] = param1;
                try
                {
                    this.draw_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.draw_btn.emphasized = false;
                this.draw_btn.enabled = true;
                this.draw_btn.label = "Offer Draw";
                this.draw_btn.labelPlacement = "right";
                this.draw_btn.selected = false;
                this.draw_btn.toggle = false;
                this.draw_btn.visible = true;
                try
                {
                    this.draw_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_call_admin_btn_dn_buttons_196(param1:int)
        {
            if (this.call_admin_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.call_admin_btn] == undefined || !(int(this.__setPropDict[this.call_admin_btn]) >= 197 && int(this.__setPropDict[this.call_admin_btn]) <= 200)))
            {
                this.__setPropDict[this.call_admin_btn] = param1;
                try
                {
                    this.call_admin_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.call_admin_btn.emphasized = false;
                this.call_admin_btn.enabled = true;
                this.call_admin_btn.label = "Call Admin";
                this.call_admin_btn.labelPlacement = "right";
                this.call_admin_btn.selected = false;
                this.call_admin_btn.toggle = false;
                this.call_admin_btn.visible = true;
                try
                {
                    this.call_admin_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_rematch_btn_dn_buttons_196(param1:int)
        {
            if (this.rematch_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.rematch_btn] == undefined || !(int(this.__setPropDict[this.rematch_btn]) >= 197 && int(this.__setPropDict[this.rematch_btn]) <= 200)))
            {
                this.__setPropDict[this.rematch_btn] = param1;
                try
                {
                    this.rematch_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.rematch_btn.emphasized = false;
                this.rematch_btn.enabled = true;
                this.rematch_btn.label = "Offer Rematch";
                this.rematch_btn.labelPlacement = "right";
                this.rematch_btn.selected = false;
                this.rematch_btn.toggle = false;
                this.rematch_btn.visible = true;
                try
                {
                    this.rematch_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_duel_quit_btn_dn_buttons_196(param1:int)
        {
            if (this.duel_quit_btn != null && param1 >= 197 && param1 <= 200 && (this.__setPropDict[this.duel_quit_btn] == undefined || !(int(this.__setPropDict[this.duel_quit_btn]) >= 197 && int(this.__setPropDict[this.duel_quit_btn]) <= 200)))
            {
                this.__setPropDict[this.duel_quit_btn] = param1;
                try
                {
                    this.duel_quit_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.duel_quit_btn.emphasized = false;
                this.duel_quit_btn.enabled = true;
                this.duel_quit_btn.label = "Quit";
                this.duel_quit_btn.labelPlacement = "right";
                this.duel_quit_btn.selected = false;
                this.duel_quit_btn.toggle = false;
                this.duel_quit_btn.visible = true;
                try
                {
                    this.duel_quit_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_auto_draw_cb_dn_field_198()
        {
            if (this.__setPropDict[this.auto_draw_cb] == undefined || int(this.__setPropDict[this.auto_draw_cb]) != 199)
            {
                this.__setPropDict[this.auto_draw_cb] = 199;
                try
                {
                    this.auto_draw_cb["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.auto_draw_cb.enabled = true;
                this.auto_draw_cb.label = "Auto-Draw";
                this.auto_draw_cb.labelPlacement = "right";
                this.auto_draw_cb.selected = true;
                this.auto_draw_cb.visible = true;
                try
                {
                    this.auto_draw_cb["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_done_siding_btn_dn_deck_199()
        {
            if (this.__setPropDict[this.done_siding_btn] == undefined || int(this.__setPropDict[this.done_siding_btn]) != 200)
            {
                this.__setPropDict[this.done_siding_btn] = 200;
                try
                {
                    this.done_siding_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.done_siding_btn.emphasized = false;
                this.done_siding_btn.enabled = true;
                this.done_siding_btn.label = "Done Siding";
                this.done_siding_btn.labelPlacement = "right";
                this.done_siding_btn.selected = false;
                this.done_siding_btn.toggle = false;
                this.done_siding_btn.visible = true;
                try
                {
                    this.done_siding_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_swap_btn_dn_sbtns_199()
        {
            if (this.__setPropDict[this.swap_btn] == undefined || int(this.__setPropDict[this.swap_btn]) != 200)
            {
                this.__setPropDict[this.swap_btn] = 200;
                try
                {
                    this.swap_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.swap_btn.emphasized = false;
                this.swap_btn.enabled = true;
                this.swap_btn.label = "Swap Cards";
                this.swap_btn.labelPlacement = "right";
                this.swap_btn.selected = false;
                this.swap_btn.toggle = false;
                this.swap_btn.visible = true;
                try
                {
                    this.swap_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_reset_btn_dn_sbtns_199()
        {
            if (this.__setPropDict[this.reset_btn] == undefined || int(this.__setPropDict[this.reset_btn]) != 200)
            {
                this.__setPropDict[this.reset_btn] = 200;
                try
                {
                    this.reset_btn["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                }
                this.reset_btn.emphasized = false;
                this.reset_btn.enabled = true;
                this.reset_btn.label = "Reset Deck";
                this.reset_btn.labelPlacement = "right";
                this.reset_btn.selected = false;
                this.reset_btn.toggle = false;
                this.reset_btn.visible = true;
                try
                {
                    this.reset_btn["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                }
            }
            return;
        }// end function

        function __setProp_handler(param1:Object)
        {
            var _loc_2:int = 0;
            _loc_2 = currentFrame;
            if (this.__lastFrameProp == _loc_2)
            {
                return;
            }
            this.__lastFrameProp = _loc_2;
            this.__setProp_news_txt_dn_news_1(_loc_2);
            this.__setProp_cin_txt_dn_chat_196(_loc_2);
            this.__setProp_loss2_btn_dn_abtns_196(_loc_2);
            this.__setProp_loss1_btn_dn_abtns_196(_loc_2);
            this.__setProp_cancel_duel_btn_dn_abtns_196(_loc_2);
            this.__setProp_defeat_btn_dn_buttons_196(_loc_2);
            this.__setProp_draw_btn_dn_buttons_196(_loc_2);
            this.__setProp_call_admin_btn_dn_buttons_196(_loc_2);
            this.__setProp_rematch_btn_dn_buttons_196(_loc_2);
            this.__setProp_duel_quit_btn_dn_buttons_196(_loc_2);
            return;
        }// end function

        function frame1()
        {
            this.dn_id = this.getDnId();
            this.black_mc.visible = false;
            this.invalid_load_context_mc.visible = false;
            this.fp_out_of_date_mc.visible = false;
            stop();
            if (loaderInfo.url.indexOf("http://www.duelingnetwork.com/") != 0)
            {
                this.invalid_load_context_mc.visible = true;
            }
            else if (!this.hasUpdatedFlashPlayer())
            {
                this.fp_out_of_date_mc.visible = true;
            }
            else
            {
                this.URL_START = "http://www.duelingnetwork.com:8080/Dueling_Network/";
                this.HOSTNAME = "duelingnetwork.com";
                this.CARD_START = this.URL_START + "images/cards/";
                this.AVATAR_START = this.URL_START + "images/avatars/";
                this.BACK_START = this.URL_START + "images/backs/";
                this.bgmusic = new Sound();
                this.bgmusic.load(new URLRequest(this.URL_START + "teardrop.mp3"), new SoundLoaderContext());
                this.bgmusic.addEventListener(IOErrorEvent.IO_ERROR, this.bufferFailE);
                addEventListener(Event.ENTER_FRAME, this.doneBufferingE);
            }
            this.setStyleManager();
            this.rc_menu = new ContextMenu();
            this.rc_menu.hideBuiltInItems();
            this.rc_menu.builtInItems.quality = true;
            contextMenu = this.rc_menu;
            return;
        }// end function

        function frame2()
        {
            this.msg_mc.visible = false;
            this.msg_mc.OK_btn.addEventListener(MouseEvent.CLICK, this.msgOK);
            this.input_mc.visible = false;
            this.input_mc.OK_btn.addEventListener(MouseEvent.CLICK, this.inputOK);
            this.input_mc.cancel_btn.addEventListener(MouseEvent.CLICK, this.inputCancel);
            this.input_callback = null;
            this.combo_mc.visible = false;
            this.combo_mc.OK_btn.addEventListener(MouseEvent.CLICK, this.comboOK);
            this.combo_mc.cancel_btn.addEventListener(MouseEvent.CLICK, this.comboCancel);
            this.combo_mc.combo_cb.addEventListener(KeyboardEvent.KEY_DOWN, this.comboKeyDownListener);
            this.combo_callback = null;
            this.confirm_mc.visible = false;
            this.confirm_mc.yes_btn.addEventListener(MouseEvent.CLICK, this.confirmYes);
            this.confirm_mc.no_btn.addEventListener(MouseEvent.CLICK, this.confirmNo);
            this.confirm_callback = null;
            this.dim_mc.visible = false;
            this.lock_has_saved_focus = false;
            this.skip_intro_btn.visible = false;
            this.skip_intro_btn.addEventListener(MouseEvent.CLICK, this.skipIntroE);
            this.username = null;
            this.password = null;
            this.show_admin_arrow = false;
            this.bgchannel = null;
            if (this.bgmusic != null)
            {
                this.bgchannel = this.bgmusic.play();
                this.bgtrans = this.bgchannel.soundTransform;
            }
            addEventListener(Event.ENTER_FRAME, this.loading);
            this.start_btn.visible = false;
            this.admin_admin_btn.visible = false;
            this.admin_duel_btn.visible = false;
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.keyDownListener);
            this.override_enter_handler = null;
            this.enter_handler = null;
            this.disable_tabbing = false;
            this.init_mouse_listeners();
            this.bg_tween = null;
            this.playing_intro = true;
            this.hideBoxes();
            this.logged_in();
            this.loadNews();
            this.tat_leaderboard = new AdLoader("http://www.duelingnetwork.com/trollandtoad/leaderboard/");
            this.tat_banner = new AdLoader("http://www.duelingnetwork.com/trollandtoad/banner/");
            this.loadAds();
            return;
        }// end function

        function frame3()
        {
            return;
        }// end function

        function frame142()
        {
            this.title_mc.stop();
            return;
        }// end function

        function frame177()
        {
            this.title_mc.play();
            stop();
            if (!this.playing_intro)
            {
                stage.focus = null;
                this.init_mouse_listeners();
                this.progress_mc.visible = false;
                this.showLoggedIn();
                this.loadNews();
                this.loadAds();
                this.setAd(true);
            }
            return;
        }// end function

        function frame178()
        {
            this.camera_flash_mc.visible = false;
            Object(getChildByName("screenshot_btn")).camera_flash_mc = this.camera_flash_mc;
            Object(getChildByName("screenshot_btn")).username = this.username;
            stage.focus = null;
            this.enter_handler = null;
            this.heartbeat_timer = new Timer(30000);
            this.heartbeat_timer.addEventListener(TimerEvent.TIMER, this.sendHeartbeat);
            this.socket = new XMLSocket();
            this.socket.timeout = 5000;
            this.socket.addEventListener(Event.CONNECT, this.connectHandler);
            this.socket.addEventListener(Event.CLOSE, this.reconnectE);
            this.socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.reconnectE);
            this.socket.addEventListener(IOErrorEvent.IO_ERROR, this.reconnectE);
            if (this.session_id == null)
            {
                this.session_id = this.randomHex();
            }
            this.connection_success = false;
            this.Connect();
            this.incoming_handler = null;
            this.socket.addEventListener(DataEvent.DATA, this.dataHandler);
            return;
        }// end function

        function frame186()
        {
            this.online_btn.setIcon(this.online_icon_mc);
            if (this.admin)
            {
                this.call_btn.setIcon(this.call_icon_mc);
            }
            else
            {
                this.call_btn.visible = false;
                this.call_icon_mc.visible = false;
            }
            this.public_btn.setIcon(this.public_icon_mc);
            this.private_btn.setIcon(this.private_icon_mc);
            this.watch_btn.setIcon(this.watch_icon_mc);
            this.watch_btn.visible = false;
            this.watch_icon_mc.visible = false;
            this.public_btn.addEventListener(MouseEvent.CLICK, this.togglePublicE);
            this.public_chat_mc.minimize_btn.addEventListener(MouseEvent.CLICK, this.togglePublicE);
            this.online_btn.addEventListener(MouseEvent.CLICK, this.toggleOnlineE);
            this.online_users_mc.minimize_btn.addEventListener(MouseEvent.CLICK, this.toggleOnlineE);
            this.online_users_mc.users_mc.addEventListener(MouseEvent.DOUBLE_CLICK, this.startPrivateE);
            this.online_users_mc.users_mc.addEventListener(KeyboardEvent.KEY_DOWN, this.userListKeyboardHandlerE);
            this.call_btn.addEventListener(MouseEvent.CLICK, this.toggleCallsE);
            this.calls_mc.minimize_btn.addEventListener(MouseEvent.CLICK, this.toggleCallsE);
            this.calls_mc.calls_mc.addEventListener(MouseEvent.DOUBLE_CLICK, this.answerCallE);
            this.calls_mc.calls_mc.addEventListener(KeyboardEvent.KEY_DOWN, this.callListKeyboardHandlerE);
            this.calls_mc.tools_mc.init(this.username, this.admin, this.Send, this.lock, this.unlock, this.displayError);
            this.calls_mc.log_mc.init(this.Send);
            this.private_btn.addEventListener(MouseEvent.CLICK, this.togglePrivateE);
            this.private_chat_mc.minimize_btn.addEventListener(MouseEvent.CLICK, this.togglePrivateE);
            this.private_chat_prev_idx = -1;
            this.private_chat_mc.exit_btn.addEventListener(MouseEvent.CLICK, this.removeCurrentPrivateE);
            this.private_chat_mc.user_mc.addEventListener(Event.CHANGE, this.changePrivateE);
            this.private_chat_mc.user_mc.addEventListener(KeyboardEvent.KEY_DOWN, this.changePrivateKeypressE);
            this.num_new_msgs = 0;
            this.chat_lock = false;
            this.public_chat_mc.cin_txt.drawNow();
            this.chatLock();
            this.title_usernames = new Object();
            this.tuser_start = null;
            this.tuser_end = null;
            this.tuser_current = null;
            this.title_timer = new Timer(2000);
            this.title_timer.addEventListener(TimerEvent.TIMER, this.setNextTitle);
            this.chat_hidden_mc.addEventListener(Event.REMOVED_FROM_STAGE, this.clearChatE);
            this.online_users_tooltip_mc.visible = false;
            this.call_tooltip_mc.visible = false;
            this.watch_chat_tooltip_mc.visible = false;
            this.public_chat_tooltip_mc.visible = false;
            this.private_chat_tooltip_mc.visible = false;
            this.online_btn.addEventListener(MouseEvent.MOUSE_OVER, this.showOnlineTooltipE);
            this.online_btn.addEventListener(MouseEvent.MOUSE_OUT, this.hideOnlineTooltipE);
            if (this.admin)
            {
                this.call_btn.addEventListener(MouseEvent.MOUSE_OVER, this.showCallTooltipE);
                this.call_btn.addEventListener(MouseEvent.MOUSE_OUT, this.hideCallTooltipE);
            }
            this.public_btn.addEventListener(MouseEvent.MOUSE_OVER, this.showPublicTooltipE);
            this.public_btn.addEventListener(MouseEvent.MOUSE_OUT, this.hidePublicTooltipE);
            this.private_btn.addEventListener(MouseEvent.MOUSE_OVER, this.showPrivateTooltipE);
            this.private_btn.addEventListener(MouseEvent.MOUSE_OUT, this.hidePrivateTooltipE);
            this.online_users_mc.addEventListener(MouseEvent.MOUSE_DOWN, this.moveChatWindowToFrontE);
            this.calls_mc.addEventListener(MouseEvent.MOUSE_DOWN, this.moveChatWindowToFrontE);
            this.public_chat_mc.addEventListener(MouseEvent.MOUSE_DOWN, this.moveChatWindowToFrontE);
            this.private_chat_mc.addEventListener(MouseEvent.MOUSE_DOWN, this.moveChatWindowToFrontE);
            this.chat_hidden_mc.addChild(this.online_users_mc);
            this.chat_hidden_mc.addChild(this.calls_mc);
            this.chat_hidden_mc.addChild(this.public_chat_mc);
            this.chat_hidden_mc.addChild(this.private_chat_mc);
            if (this.admin)
            {
                this.public_chat_mc.cin_txt.maxChars = 500;
            }
            this.initMain();
            return;
        }// end function

        function frame187()
        {
            this.initMain();
            return;
        }// end function

        function frame189()
        {
            this.__setProp_room_exit_btn_dn_exit_188();
            this.__setProp_match_type_cb_dn_room_188();
            this.__setProp_rep_upper_txt_dn_room_188();
            this.__setProp_rep_lower_txt_dn_room_188();
            this.__setProp_rating_upper_txt_dn_room_188();
            this.__setProp_rating_lower_txt_dn_room_188();
            this.__setProp_filter_username_txt_dn_room_188();
            this.__setProp_watch_rb_dn_room_188();
            this.__setProp_duel_rb_dn_room_188();
            this.__setProp_default_btn_dn_room_188();
            this.__setProp_decklist_cb_dn_room_188();
            this.__setProp_au_sp_dn_boxes_188();
            this.__setProp_ar_sp_dn_boxes_188();
            stage.focus = null;
            this.track("duel_room");
            this.banner_mc.tat = this.tat_banner.hasAd() && Math.random() <= 0.75;
            this.banner_mc.showAd(this.banner_mc.tat ? (this.tat_banner.getAd()) : (new CoretcgBanner()));
            this.banner_mc.addEventListener(MouseEvent.CLICK, this.bannerClickE);
            this.enter_handler = this.roomEnterHandler;
            this.incoming_handler = this.roomIncomingHandler;
            this.room_init = false;
            this.enable_dueling = false;
            this.room_exit_btn.addEventListener(MouseEvent.CLICK, this.roomExitE);
            this.room_exit_btn.useHandCursor = true;
            this.decklist_cb.dropdown.addEventListener(ScrollEvent.SCROLL, this.updateDropdownFont);
            this.duelroom_rbg = new RadioButtonGroup("DuelMode");
            this.duel_rb.group = this.duelroom_rbg;
            this.watch_rb.group = this.duelroom_rbg;
            this.duelroom_rbg.addEventListener(Event.CHANGE, this.toggleModeE);
            this.duel_rb.addEventListener(Event.REMOVED_FROM_STAGE, this.removeModeListenerE);
            this.host_mc.host_btn.addEventListener(MouseEvent.CLICK, this.hostDuelE);
            this.hosting_mc.cancel_btn.addEventListener(MouseEvent.CLICK, this.cancelDuelE);
            this.hosting_mc.visible = false;
            this.joining_mc.leave_btn.addEventListener(MouseEvent.CLICK, this.leaveDuelE);
            this.joining_mc.visible = false;
            this.ar_sp.source = new JoinList();
            this.au_sp.source = new JoinList();
            this.trad_mc.tu_sp.source = new JoinList();
            this.unl_mc.uu_sp.source = new JoinList();
            this.ar_sp.source.setClickHandler(this.joinAdvancedRatedE);
            this.au_sp.source.setClickHandler(this.joinAdvancedUnratedE);
            this.trad_mc.tu_sp.source.setClickHandler(this.joinTraditionalUnratedE);
            this.unl_mc.uu_sp.source.setClickHandler(this.joinUnlimitedUnratedE);
            this.decklist_cb.addEventListener(Event.CHANGE, this.updateAdvancedE);
            this.hosting_mc.joinlist_mc.addEventListener(MouseEvent.DOUBLE_CLICK, this.joinListDoubleClickE);
            this.hosting_mc.joinlist_mc.addEventListener(KeyboardEvent.KEY_DOWN, this.joinListKeyboardHandlerE);
            this.hosting_mc.accept_btn.addEventListener(MouseEvent.CLICK, this.acceptJoinerE);
            this.hosting_mc.reject_btn.addEventListener(MouseEvent.CLICK, this.rejectJoinerE);
            this.filter_username_txt.addEventListener(Event.CHANGE, this.setFilterE);
            this.rating_lower_txt.addEventListener(Event.CHANGE, this.setFilterE);
            this.rating_upper_txt.addEventListener(Event.CHANGE, this.setFilterE);
            this.rep_lower_txt.addEventListener(Event.CHANGE, this.setFilterE);
            this.rep_upper_txt.addEventListener(Event.CHANGE, this.setFilterE);
            this.match_type_cb.addEventListener(Event.CHANGE, this.setFilterE);
            this.duelRoom();
            this.default_btn.addEventListener(MouseEvent.CLICK, this.setDefaultDeckE);
            this.default_btn.useHandCursor = true;
            this.show_tu_btn.addEventListener(MouseEvent.CLICK, this.showTradE);
            this.show_uu_btn.addEventListener(MouseEvent.CLICK, this.showUnlE);
            this.showTradE(null);
            this.decklist_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.match_type_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            return;
        }// end function

        function frame190()
        {
            this.__setProp_bypass_card_limit_cb_dn_check_189();
            this.__setProp_deck_exit_btn_dn_deck_189();
            this.__setProp_save_as_btn_dn_deck_189();
            this.__setProp_save_btn_dn_deck_189();
            this.__setProp_delete_btn_dn_deck_189();
            this.__setProp_rename_btn_dn_deck_189();
            this.__setProp_new_btn_dn_deck_189();
            this.__setProp_decklist_cb_dn_deck_189();
            this.__setProp_default_btn_dn_deck_189();
            this.__setProp_clear_btn_dn_deck_189();
            this.__setProp_search_btn_dn_deck_189();
            this.__setProp_order_cb_dn_deck_189();
            this.__setProp_limit_cb_dn_deck_189();
            this.__setProp_defh_txt_dn_deck_189();
            this.__setProp_defl_txt_dn_deck_189();
            this.__setProp_atkh_txt_dn_deck_189();
            this.__setProp_atkl_txt_dn_deck_189();
            this.__setProp_lvlh_txt_dn_deck_189();
            this.__setProp_lvll_txt_dn_deck_189();
            this.__setProp_attrib_cb_dn_deck_189();
            this.__setProp_type2_cb_dn_deck_189();
            this.__setProp_type_cb_dn_deck_189();
            this.__setProp_card2_cb_dn_deck_189();
            this.__setProp_card_cb_dn_deck_189();
            this.__setProp_desc_txt_dn_deck_189();
            this.__setProp_name_txt_dn_deck_189();
            stage.focus = null;
            this.track("deck_constructor");
            this.enter_handler = this.deckEnterHandler;
            this.incoming_handler = this.deckIncomingHandler;
            this.deck_init = false;
            this.initCards();
            this.default_deck_idx = -1;
            this.deck_hidden_mc.addEventListener(Event.REMOVED_FROM_STAGE, this.deckCleanupE);
            this.decklist_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.card_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.card2_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.type_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.type2_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.attrib_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.limit_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            this.order_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            return;
        }// end function

        function frame191()
        {
            this.__setProp_profile_exit_btn_dn_profile_190();
            this.__setProp_profile_txt_dn_profile_190();
            this.__setProp_username_txt_dn_profile_190();
            stage.focus = null;
            this.track("profile_viewer");
            this.enter_handler = this.profileEnterHandler;
            this.incoming_handler = this.profileIncomingHandler;
            this.profile_init = false;
            this.ranking_calc_btn.addEventListener(MouseEvent.CLICK, this.getRankingE);
            this.ranking_calc2_btn.addEventListener(MouseEvent.CLICK, this.getRanking2E);
            this.profile_exit_btn.addEventListener(MouseEvent.CLICK, this.returnToMainE);
            this.profile_exit_btn.useHandCursor = true;
            this.tf = new TextFormat();
            this.tf.size = 25;
            this.tf.font = "Arial Rounded MT Bold";
            this.username_txt.setStyle("textFormat", this.tf);
            this.username_txt.setStyle("embedFonts", true);
            this.send_pm_btn.visible = false;
            this.send_pm_btn.addEventListener(MouseEvent.CLICK, this.profileSendPmE);
            this.add_friend_btn.visible = false;
            this.add_friend_btn.addEventListener(MouseEvent.CLICK, this.addFriendE);
            this.delete_friend_btn.visible = false;
            this.delete_friend_btn.addEventListener(MouseEvent.CLICK, this.deleteFriendE);
            this.watch_duel_btn.visible = false;
            this.key_mc.visible = false;
            this.watch_duel_btn.addEventListener(MouseEvent.CLICK, this.profileWatchDuelE);
            this.puzzleInit();
            this.username_txt.text = this.username;
            this.username_txt.setFocus();
            this.getProfile();
            this.ranking_calc_btn.visible = false;
            this.ranking_calc2_btn.visible = false;
            return;
        }// end function

        function frame192()
        {
            this.__setProp_my_profile_exit_btn_dn_buttons_191();
            this.__setProp_save_profile_btn_dn_buttons_191();
            this.__setProp_profile_txt_dn_profile_191();
            this.__setProp_redeem_donation_btn_dn_donation_191();
            stage.focus = null;
            this.track("my_profile");
            this.enter_handler = this.myProfileEnterHandler;
            this.incoming_handler = this.myProfileIncomingHandler;
            this.avatar_gallery = [this.icon1_mc, this.icon2_mc, this.icon3_mc, this.icon4_mc, this.icon5_mc, this.icon6_mc, this.icon7_mc];
            this.avatarsAndProfile();
            this.my_profile_init = false;
            this.left_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.avatarStartLeftE);
            this.left_btn.addEventListener(MouseEvent.MOUSE_UP, this.avatarStopLeftE);
            this.left_btn.addEventListener(MouseEvent.MOUSE_OUT, this.avatarStopLeftE);
            this.right_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.avatarStartRightE);
            this.right_btn.addEventListener(MouseEvent.MOUSE_UP, this.avatarStopRightE);
            this.right_btn.addEventListener(MouseEvent.MOUSE_OUT, this.avatarStopRightE);
            this.redeem_donation_btn.addEventListener(MouseEvent.CLICK, this.redeemDonationE);
            this.redeem_donation_btn.useHandCursor = true;
            this.save_profile_btn.addEventListener(MouseEvent.CLICK, this.saveAvatarAndProfileE);
            this.save_profile_btn.useHandCursor = true;
            this.my_profile_exit_btn.addEventListener(MouseEvent.CLICK, this.myProfileExitE);
            this.my_profile_exit_btn.useHandCursor = true;
            this.avatar_browse_mc.avatar_browse_btn.addEventListener(MouseEvent.CLICK, this.avatarBrowseE);
            this.avatar_browse_mc.avatar_browse_btn.useHandCursor = true;
            this.avatar_browse_mc.visible = false;
            this.back_browse_mc.back_browse_btn.addEventListener(MouseEvent.CLICK, this.backBrowseE);
            this.back_browse_mc.back_browse_btn.useHandCursor = true;
            this.back_browse_mc.visible = false;
            this.GALLERY_LEFT_JUSTIFY = 360.75;
            this.GALLERY_RIGHT_JUSTIFY = -299.25;
            this.GALLERY_CENTER_JUSTIFY = 30.75;
            this.GALLERY_GAP = 185;
            this.SCROLL_AMOUNT = 30;
            this.outlined_avatar = null;
            this.back_left_btn.addEventListener(MouseEvent.CLICK, this.backLeftE);
            this.back_right_btn.addEventListener(MouseEvent.CLICK, this.backRightE);
            this.color1_cp.addEventListener(Event.CHANGE, this.color1ChangeE);
            this.color2_cp.addEventListener(Event.CHANGE, this.color2ChangeE);
            this.puzzleInit();
            return;
        }// end function

        function frame193()
        {
            this.__setProp_change_btn_dn_password_192();
            this.__setProp_confirm_txt_dn_password_192();
            this.__setProp_new_txt_dn_password_192();
            this.__setProp_current_txt_dn_password_192();
            this.__setProp_password_exit_btn_dn_password_192();
            stage.focus = null;
            this.track("password");
            this.enter_handler = this.changePasswordEnterHandler;
            this.incoming_handler = this.passwordIncomingHandler;
            this.current_txt.setFocus();
            this.change_btn.addEventListener(MouseEvent.CLICK, this.changePasswordE);
            this.change_btn.useHandCursor = true;
            this.password_exit_btn.addEventListener(MouseEvent.CLICK, this.returnToMainE);
            this.password_exit_btn.useHandCursor = true;
            return;
        }// end function

        function frame194()
        {
            this.__setProp_admin_exit_btn_dn_admin_193();
            this.__setProp_add_warning_btn_dn_admin_193();
            this.__setProp_increment_strikes2_cb_dn_admin_193();
            this.__setProp_warning_txt_dn_admin_193();
            this.__setProp_warning_username_txt_dn_admin_193();
            this.__setProp_kick_user_btn_dn_admin_193();
            this.__setProp_kick_username_txt_dn_admin_193();
            this.__setProp_unban_user_btn_dn_admin_193();
            this.__setProp_decrement_strikes_cb_dn_admin_193();
            this.__setProp_unban_username_txt_dn_admin_193();
            this.__setProp_ban_user_btn_dn_admin_193();
            this.__setProp_increment_strikes_cb_dn_admin_193();
            this.__setProp_reason_txt_dn_admin_193();
            this.__setProp_days_txt_dn_admin_193();
            this.__setProp_forever_rb_dn_admin_193();
            this.__setProp_days_rb_dn_admin_193();
            this.__setProp_ban_username_txt_dn_admin_193();
            this.__setProp_ban_note_txt_dn_admin_193();
            this.__setProp_get_ban_status_btn_dn_admin_193();
            this.__setProp_status_username_txt_dn_admin_193();
            stage.focus = null;
            this.track("admin");
            this.enter_handler = this.adminEnterHandler;
            this.incoming_handler = this.adminIncomingHandler;
            this.status_username_txt.setFocus();
            this.get_ban_status_btn.addEventListener(MouseEvent.CLICK, this.banStatusE);
            this.get_ban_status_btn.useHandCursor = true;
            this.ban_user_btn.addEventListener(MouseEvent.CLICK, this.banUserE);
            this.ban_user_btn.useHandCursor = true;
            this.unban_user_btn.addEventListener(MouseEvent.CLICK, this.unbanUserE);
            this.unban_user_btn.useHandCursor = true;
            this.kick_user_btn.addEventListener(MouseEvent.CLICK, this.kickUserE);
            this.kick_user_btn.useHandCursor = true;
            this.add_warning_btn.addEventListener(MouseEvent.CLICK, this.addWarningE);
            this.add_warning_btn.useHandCursor = true;
            this.admin_exit_btn.addEventListener(MouseEvent.CLICK, this.returnToMainE);
            this.admin_exit_btn.useHandCursor = true;
            if (this.admin >= 2)
            {
                this.next_btn.addEventListener(MouseEvent.CLICK, this.adminNextE);
            }
            else
            {
                this.next_btn.visible = false;
            }
            this.setBanTimeGroup();
            this.days_rb.selected = true;
            this.days_txt.enabled = true;
            this.days_rb.group.addEventListener(Event.CHANGE, this.banTimeChangeE);
            this.days_txt.addEventListener(MouseEvent.CLICK, this.daysSwitchE);
            this.decklist_cb.addEventListener(Event.REMOVED_FROM_STAGE, EventListeners.comboRemoveFromStageE);
            return;
        }// end function

        function frame195()
        {
            this.__setProp_admin2_exit_btn_dn_admin2_194();
            this.__setProp_comp_alts_txt_dn_admin2_194();
            this.__setProp_check_comp_btn_dn_admin2_194();
            this.__setProp_comp_username_txt_dn_admin2_194();
            this.__setProp_alts_txt_dn_admin2_194();
            this.__setProp_check_ip_btn_dn_admin2_194();
            this.__setProp_ip_username_txt_dn_admin2_194();
            stage.focus = null;
            this.track("admin2");
            this.enter_handler = this.admin2EnterHandler;
            this.incoming_handler = this.admin2IncomingHandler;
            this.ip_username_txt.setFocus();
            this.check_ip_btn.addEventListener(MouseEvent.CLICK, this.ipCheckE);
            this.check_ip_btn.useHandCursor = true;
            this.check_comp_btn.addEventListener(MouseEvent.CLICK, this.computerCheckE);
            this.check_comp_btn.useHandCursor = true;
            this.admin_status_mc.save_btn.addEventListener(MouseEvent.CLICK, this.setAdminE);
            this.admin_status_mc.save_btn.useHandCursor = true;
            this.reset_stats_mc.reset_btn.addEventListener(MouseEvent.CLICK, this.resetStatsE);
            this.reset_stats_mc.reset_btn.useHandCursor = true;
            this.super_ban_mc.ban_btn.addEventListener(MouseEvent.CLICK, this.superBanE);
            this.super_ban_mc.ban_btn.useHandCursor = true;
            this.admin2_exit_btn.addEventListener(MouseEvent.CLICK, this.returnToMainE);
            this.admin2_exit_btn.useHandCursor = true;
            this.prev_btn.addEventListener(MouseEvent.CLICK, this.adminPrevE);
            this.admin_username = null;
            this.admin_status_mc.username_txt.addEventListener(Event.CHANGE, this.adminStatusUsernameChangeE);
            if (this.admin < 3)
            {
                this.admin_status_mc.visible = false;
                this.reset_stats_mc.visible = false;
                this.super_ban_mc.visible = false;
            }
            this.admin_status_mc.status_cb.enabled = false;
            this.admin_status_mc.status_cb.prompt = " ";
            this.admin_status_mc.status_cb.selectedIndex = -1;
            this.admin_status_mc.save_btn.enabled = false;
            return;
        }// end function

        function frame196()
        {
            this.__setProp_rankings_exit_btn_dn_exit_195();
            this.__setProp_content_sp_dn_content_195();
            stage.focus = null;
            this.track("ranking");
            this.enter_handler = this.rankingsEnterHandler;
            this.incoming_handler = this.rankingsIncomingHandler;
            this.rankings_init = false;
            this.by_rating_mc.button_btn.addEventListener(MouseEvent.CLICK, this.rankingByRatingE);
            this.by_wins_mc.button_btn.addEventListener(MouseEvent.CLICK, this.rankingByWinsE);
            this.by_reputation_mc.button_btn.addEventListener(MouseEvent.CLICK, this.rankingByReputationE);
            this.by_total_reputation_mc.button_btn.addEventListener(MouseEvent.CLICK, this.rankingByTotalReputationE);
            this.match_select_mc.initRadioButtonGroup().addEventListener(Event.CHANGE, this.changeMatchE);
            this.rankings_exit_btn.addEventListener(MouseEvent.CLICK, this.returnToMainE);
            this.rankings_exit_btn.useHandCursor = true;
            this.content_sp.source = new RankingChart();
            this.rankingByRatingE();
            return;
        }// end function

        function frame197()
        {
            if (this.duel_starting)
            {
                this.duelCommonInitialize();
            }
            this.defeat_btn.visible = false;
            this.draw_btn.visible = false;
            this.loss1_btn.visible = false;
            this.loss2_btn.visible = false;
            this.cancel_duel_btn.visible = false;
            this.RPS_TWEEN_TIME = 0.5;
            this.RPS_TOUCH_TIME = 0.2;
            this.RPS_CENTER_TIME = 0.2;
            this.RPS_PUSH_TIME = 0.4;
            this.rps_stage = 0;
            if (!this.duelist)
            {
                this.rock1_mc.cardRotationY = 180;
                this.paper1_mc.cardRotationY = 180;
                this.scissors1_mc.cardRotationY = 180;
            }
            this.rock2_mc.cardRotationY = 180;
            this.rock2_mc.cardRotationZ = 180;
            this.paper2_mc.cardRotationY = 180;
            this.paper2_mc.cardRotationZ = 180;
            this.scissors2_mc.cardRotationY = 180;
            this.scissors2_mc.cardRotationZ = 180;
            this.addTweens(this.rpsTweenStart);
            if (this.duelist)
            {
                this.addTweens(this.rpsTweenClickable);
            }
            this.back_loader1.addEventListener(Event.COMPLETE, this.rock1_mc.switchBackE);
            this.back_loader1.addEventListener(Event.COMPLETE, this.paper1_mc.switchBackE);
            this.back_loader1.addEventListener(Event.COMPLETE, this.scissors1_mc.switchBackE);
            this.back_loader2.addEventListener(Event.COMPLETE, this.rock2_mc.switchBackE);
            this.back_loader2.addEventListener(Event.COMPLETE, this.paper2_mc.switchBackE);
            this.back_loader2.addEventListener(Event.COMPLETE, this.scissors2_mc.switchBackE);
            return;
        }// end function

        function frame198()
        {
            if (this.duel_starting)
            {
                this.duelCommonInitialize();
            }
            this.defeat_btn.visible = this.duelist;
            this.draw_btn.visible = this.duelist;
            this.loss1_btn.visible = !this.duelist && this.admin;
            this.loss2_btn.visible = !this.duelist && this.admin;
            this.cancel_duel_btn.visible = !this.duelist && this.admin;
            this.TP_TWEEN_TIME = 0.5;
            return;
        }// end function

        function frame199()
        {
            this.__setProp_auto_draw_cb_dn_field_198();
            if (this.duel_starting)
            {
                this.duel_screen_args = null;
                this.duel_args = this.duelCommonInitialize();
            }
            this.defeat_btn.visible = this.duelist;
            this.draw_btn.visible = this.duelist;
            this.loss1_btn.visible = !this.duelist && this.admin;
            this.loss2_btn.visible = !this.duelist && this.admin;
            this.cancel_duel_btn.visible = !this.duelist && this.admin;
            this.DUEL_TWEEN_TIME = 0.5;
            this.COIN_UP_TIME = 1;
            this.COIN_DOWN_TIME = 1.5;
            this.DIE_SPIN_TIME = 2.5;
            this.DIE_BOUNCE_TIME = 1.5;
            this.makeAutoDrawWhite();
            this.duelScreenEnter();
            if (this.duelist || this.admin)
            {
                this.preview_mc.skip_hml = true;
            }
            return;
        }// end function

        function frame200()
        {
            this.__setProp_reset_btn_dn_sbtns_199();
            this.__setProp_swap_btn_dn_sbtns_199();
            this.__setProp_done_siding_btn_dn_deck_199();
            if (this.duel_starting)
            {
                this.duel_screen_args = null;
                this.duel_args = this.duelCommonInitialize();
            }
            this.defeat_btn.visible = false;
            this.draw_btn.visible = false;
            this.loss1_btn.visible = false;
            this.loss2_btn.visible = false;
            this.cancel_duel_btn.visible = false;
            this.sidingEnter();
            if (this.duelist || this.admin)
            {
                this.preview_mc.skip_hml = true;
            }
            return;
        }// end function

    }
}
