package 
{
    import fl.controls.*;
    import flash.events.*;

    public class EventListeners extends Object
    {

        public function EventListeners()
        {
            return;
        }// end function

        public static function comboRemoveFromStageE(event:Event)
        {
            if (!(event.currentTarget is ComboBox))
            {
                return;
            }
            var _loc_2:* = ComboBox(event.currentTarget);
            _loc_2.close();
            return;
        }// end function

    }
}
