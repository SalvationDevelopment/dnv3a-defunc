package 
{
    import fl.controls.listClasses.*;
    import flash.text.*;

    public class DropdownCellRenderer extends CellRenderer
    {

        public function DropdownCellRenderer()
        {
            var _loc_1:* = new TextFormat();
            _loc_1.size = 25;
            _loc_1.font = "Arial Rounded MT Bold";
            setStyle("textFormat", _loc_1);
            setStyle("embedFonts", true);
            return;
        }// end function

    }
}
