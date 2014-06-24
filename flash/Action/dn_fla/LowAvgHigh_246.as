package dn_fla
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.text.*;

    dynamic public class LowAvgHigh_246 extends MovieClip
    {
        public var buy2_mc:MovieClip;
        public var avg_txt:TextField;
        public var buy1_mc:MovieClip;
        public var high_txt:TextField;
        public var low_txt:TextField;
        public var click_link:String;
        public var hml_loader:URLLoader;
        public var completeHandler:Function;

        public function LowAvgHigh_246()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function mouseOverHandler(event:MouseEvent)
        {
            this.buy1_mc.visible = false;
            this.buy2_mc.visible = true;
            return;
        }// end function

        public function mouseOutHandler(event:MouseEvent)
        {
            this.buy1_mc.visible = true;
            this.buy2_mc.visible = false;
            return;
        }// end function

        public function clickHandler(event:MouseEvent)
        {
            var _loc_2:* = new URLRequest(this.click_link);
            navigateToURL(_loc_2, "_blank");
            return;
        }// end function

        public function loadHML(param1:String)
        {
            visible = false;
            if (param1 == null || param1 == "")
            {
                if (this.hml_loader != null)
                {
                    try
                    {
                        this.hml_loader.close();
                    }
                    catch (e)
                    {
                    }
                }
                return;
            }
            if (this.hml_loader == null)
            {
                this.hml_loader = new URLLoader();
                this.hml_loader.addEventListener(Event.COMPLETE, this.loadHMLComplete);
            }
            var _loc_2:* = new URLRequest("http://partner.tcgplayer.com/x2/ygophl.asmx/p");
            _loc_2.method = URLRequestMethod.GET;
            var _loc_3:* = new URLVariables();
            _loc_3.pk = "DLNGNTWRK";
            _loc_3.s = "";
            _loc_3.p = param1;
            _loc_3.n = "";
            var _loc_4:* = new Date();
            _loc_3.date = (_loc_4.month + 1) + "/" + _loc_4.date + "/" + _loc_4.fullYear;
            _loc_2.data = _loc_3;
            this.hml_loader.load(_loc_2);
            return;
        }// end function

        public function loadHMLComplete(event:Event)
        {
            var _loc_2:* = new XML(this.hml_loader.data);
            this.click_link = _loc_2.product.link;
            if (this.click_link == "")
            {
                return;
            }
            var _loc_3:* = _loc_2.product.lowprice;
            var _loc_4:* = _loc_2.product.avgprice;
            var _loc_5:* = _loc_2.product.hiprice;
            this.low_txt.text = _loc_3 == "" ? ("") : ("$" + _loc_3);
            this.avg_txt.text = _loc_4 == "" ? ("") : ("$" + _loc_4);
            this.high_txt.text = _loc_5 == "" ? ("") : ("$" + _loc_5);
            visible = true;
            if (this.completeHandler != null)
            {
                this.completeHandler();
            }
            return;
        }// end function

        function frame1()
        {
            visible = false;
            mouseChildren = false;
            buttonMode = true;
            addEventListener(MouseEvent.MOUSE_OVER, this.mouseOverHandler);
            this.buy2_mc.visible = false;
            addEventListener(MouseEvent.MOUSE_OUT, this.mouseOutHandler);
            addEventListener(MouseEvent.CLICK, this.clickHandler);
            return;
        }// end function

    }
}
