package org.bytearray.gif.events
{
    import flash.events.*;
    import flash.geom.*;

    public class GIFPlayerEvent extends Event
    {
        public var rect:Rectangle;
        public static const COMPLETE:String = "complete";

        public function GIFPlayerEvent(param1:String, param2:Rectangle)
        {
            super(param1, false, false);
            this.rect = param2;
            return;
        }// end function

    }
}
