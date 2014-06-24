package dn_fla
{
    import flash.display.*;

    dynamic public class RatingTable_249 extends MovieClip
    {
        public var red_table_mc:MovieClip;
        public var teal_table_mc:MovieClip;

        public function RatingTable_249()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setTable(param1:Boolean)
        {
            this.teal_table_mc.visible = param1;
            this.red_table_mc.visible = !param1;
            return;
        }// end function

        function frame1()
        {
            this.setTable(true);
            return;
        }// end function

    }
}
