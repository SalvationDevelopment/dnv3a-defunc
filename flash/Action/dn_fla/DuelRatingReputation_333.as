package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;

    dynamic public class DuelRatingReputation_333 extends MovieClip
    {
        public var rating_rep_txt:TextField;
        public var rating:Object;
        public var reputation:Object;
        public var rr_scaleX:Object;
        public var rr_width:Object;

        public function DuelRatingReputation_333()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setRatingRep(param1, param2)
        {
            this.rating = param1;
            this.reputation = param2;
            this.rating_rep_txt.text = param1 + "/" + param2;
            if (this.rr_scaleX == undefined)
            {
                this.rr_scaleX = this.rating_rep_txt.scaleX;
                this.rr_width = this.rating_rep_txt.width;
            }
            this.rating_rep_txt.scaleX = this.rr_scaleX;
            this.rating_rep_txt.autoSize = "left";
            if (this.rating_rep_txt.width > this.rr_width)
            {
                this.rating_rep_txt.scaleX = this.rr_scaleX * this.rr_width / this.rating_rep_txt.width;
            }
            else
            {
                this.rating_rep_txt.autoSize = "none";
                this.rating_rep_txt.width = this.rr_width;
            }
            return;
        }// end function

        public function mouseOverE(event:MouseEvent)
        {
            this.rating_rep_txt.visible = true;
            return;
        }// end function

        public function mouseOutE(event:MouseEvent)
        {
            this.rating_rep_txt.visible = false;
            return;
        }// end function

        function frame1()
        {
            this.rating_rep_txt.visible = false;
            addEventListener(MouseEvent.MOUSE_OVER, this.mouseOverE);
            addEventListener(MouseEvent.MOUSE_OUT, this.mouseOutE);
            return;
        }// end function

    }
}
