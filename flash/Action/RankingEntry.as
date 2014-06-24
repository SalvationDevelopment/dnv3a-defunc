package 
{
    import flash.display.*;
    import flash.text.*;

    dynamic public class RankingEntry extends MovieClip
    {
        public var item1_txt:TextField;
        public var item4_txt:TextField;
        public var item5_txt:TextField;
        public var rank_txt:TextField;
        public var username_txt:TextField;
        public var item2_txt:TextField;
        public var item3_txt:TextField;

        public function RankingEntry()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function initialize(param1:int, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String)
        {
            this.rank_txt.text = param1 + ".";
            this.username_txt.text = param2;
            this.item1_txt.text = param3;
            this.item2_txt.text = param4;
            this.item3_txt.text = param5;
            this.item4_txt.text = param6;
            this.item5_txt.text = param7;
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
