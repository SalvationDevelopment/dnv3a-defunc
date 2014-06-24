package org.bytearray.gif.events
{
    import flash.events.*;
    import org.bytearray.gif.frames.*;

    public class FrameEvent extends Event
    {
        public var frame:GIFFrame;
        public static const FRAME_RENDERED:String = "rendered";

        public function FrameEvent(param1:String, param2:GIFFrame)
        {
            super(param1, false, false);
            this.frame = param2;
            return;
        }// end function

    }
}
