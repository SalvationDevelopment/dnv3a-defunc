package dn_fla
{
    import flash.display.*;
    import flash.events.*;

    dynamic public class PublicChatButton_179 extends MovieClip
    {
        public var mouse_down:Boolean;
        public var icon:MovieClip;

        public function PublicChatButton_179()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setIcon(param1:MovieClip)
        {
            this.icon = param1;
            return;
        }// end function

        public function downE(event:MouseEvent)
        {
            this.mouse_down = true;
            if (this.icon == null)
            {
                return;
            }
            this.icon.gotoAndStop("down");
            return;
        }// end function

        public function upE(event:MouseEvent)
        {
            this.mouse_down = false;
            if (this.icon == null)
            {
                return;
            }
            this.icon.gotoAndStop("over");
            return;
        }// end function

        public function overE(event:MouseEvent)
        {
            if (this.icon == null)
            {
                return;
            }
            if (this.mouse_down)
            {
                this.icon.gotoAndStop("down");
            }
            else
            {
                this.icon.gotoAndStop("over");
            }
            return;
        }// end function

        public function outE(event:MouseEvent)
        {
            if (this.icon == null)
            {
                return;
            }
            this.icon.gotoAndStop("up");
            return;
        }// end function

        function frame1()
        {
            tabEnabled = false;
            buttonMode = true;
            mouseChildren = false;
            this.mouse_down = false;
            addEventListener(MouseEvent.MOUSE_DOWN, this.downE);
            addEventListener(MouseEvent.MOUSE_UP, this.upE);
            addEventListener(MouseEvent.MOUSE_OVER, this.overE);
            addEventListener(MouseEvent.MOUSE_OUT, this.outE);
            return;
        }// end function

    }
}
