package 
{
    import flash.display.*;

    dynamic public class RankingChart extends MovieClip
    {
        public var entries:Array;

        public function RankingChart()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function addEntry(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String)
        {
            var _loc_7:* = new RankingEntry();
            new RankingEntry().initialize((this.entries.length + 1), param1, param2, param3, param4, param5, param6);
            _loc_7.y = this.entries.length * 30;
            this.entries.push(_loc_7);
            addChild(_loc_7);
            return;
        }// end function

        public function clear()
        {
            var _loc_1:* = 0;
            while (_loc_1 < this.entries.length)
            {
                
                removeChild(this.entries[_loc_1]);
                _loc_1 = _loc_1 + 1;
            }
            this.entries = [];
            return;
        }// end function

        function frame1()
        {
            this.entries = [];
            return;
        }// end function

    }
}
