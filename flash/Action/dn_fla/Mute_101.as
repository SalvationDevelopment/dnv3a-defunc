package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
    import flash.net.*;

    dynamic public class Mute_101 extends MovieClip
    {
        public var speaker_mc:MovieClip;
        public var cross_mc:MovieClip;
        public var init:Boolean;
        public var mouse_down:Boolean;
        public var mute_so:SharedObject;

        public function Mute_101()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function downE(event:MouseEvent)
        {
            this.mouse_down = true;
            gotoAndStop("down");
            return;
        }// end function

        public function upE(event:MouseEvent)
        {
            this.mouse_down = false;
            gotoAndStop("over");
            return;
        }// end function

        public function overE(event:MouseEvent)
        {
            if (this.mouse_down)
            {
                gotoAndStop("down");
            }
            else
            {
                gotoAndStop("over");
            }
            return;
        }// end function

        public function outE(event:MouseEvent)
        {
            gotoAndStop("normal");
            return;
        }// end function

        public function muteInitialize()
        {
            this.mute_so = SharedObject.getLocal("dn_mute");
            if (this.mute_so.data.mute == undefined)
            {
                this.mute_so.data.mute = false;
            }
            var _loc_1:* = this.mute_so.data.mute;
            this.cross_mc.visible = _loc_1;
            if (_loc_1)
            {
                this.mute();
            }
            addEventListener(MouseEvent.CLICK, this.toggleMuteE);
            return;
        }// end function

        public function toggleMuteE(event:MouseEvent)
        {
            if (this.cross_mc.visible)
            {
                this.unmute();
                this.cross_mc.visible = false;
                this.mute_so.data.mute = false;
            }
            else
            {
                this.mute();
                this.cross_mc.visible = true;
                this.mute_so.data.mute = true;
            }
            return;
        }// end function

        public function mute()
        {
            var _loc_1:* = new SoundTransform(1, 0);
            _loc_1.volume = 0;
            SoundMixer.soundTransform = _loc_1;
            return;
        }// end function

        public function unmute()
        {
            var _loc_1:* = new SoundTransform(1, 0);
            _loc_1.volume = 1;
            SoundMixer.soundTransform = _loc_1;
            return;
        }// end function

        function frame1()
        {
            stop();
            if (this.init == false)
            {
                tabEnabled = false;
                buttonMode = true;
                mouseChildren = false;
                this.mouse_down = false;
                addEventListener(MouseEvent.MOUSE_DOWN, this.downE);
                addEventListener(MouseEvent.MOUSE_UP, this.upE);
                addEventListener(MouseEvent.MOUSE_OVER, this.overE);
                addEventListener(MouseEvent.MOUSE_OUT, this.outE);
                this.muteInitialize();
                this.init = true;
            }
            return;
        }// end function

    }
}
