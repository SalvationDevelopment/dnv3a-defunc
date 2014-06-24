package org.bytearray.gif.events
{
    import flash.events.*;

    public class TimeoutEvent extends Event
    {
        public static const TIME_OUT:String = "timeout";

        public function TimeoutEvent(param1:String)
        {
            super(param1, false, false);
            return;
        }// end function

    }
}
