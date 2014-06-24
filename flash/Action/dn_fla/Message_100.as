package dn_fla
{
    import flash.display.*;
    import flash.text.*;

    dynamic public class Message_100 extends MovieClip
    {
        public var text_txt:TextField;
        public var title_txt:TextField;
        public var OK_btn:SimpleButton;

        public function Message_100()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setText(param1:String)
        {
            var _loc_5:int = 0;
            var _loc_2:int = 25;
            var _loc_3:Number = 130;
            this.text_txt.text = param1;
            var _loc_4:* = new TextFormat();
            new TextFormat().size = 25;
            this.text_txt.setTextFormat(_loc_4);
            this.text_txt.height = _loc_3;
            this.text_txt.autoSize = "left";
            if (this.text_txt.height > _loc_3)
            {
                _loc_5 = _loc_2;
                do
                {
                    
                    _loc_5 = _loc_5 - 1;
                    _loc_4.size = _loc_5;
                    this.text_txt.setTextFormat(_loc_4);
                }while (this.text_txt.height > _loc_3 && _loc_5 > 0)
            }
            return;
        }// end function

        function frame1()
        {
            return;
        }// end function

    }
}
