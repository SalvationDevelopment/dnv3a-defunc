package fl.events
{
    import flash.display.*;
    import flash.events.*;

    public class ProLoaderRSLPreloaderSandboxEvent extends Event
    {
        public var loaderInfo:LoaderInfo;
        public var shape:Shape;
        public static const PROLOADER_RSLPRELOADER_SANDBOX:String = "__proLoaderRSLPreloaderSandbox";

        public function ProLoaderRSLPreloaderSandboxEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:LoaderInfo = null, param5:Shape = null)
        {
            super(param1, param2, param3);
            this.loaderInfo = param4;
            this.shape = param5;
            return;
        }// end function

        override public function clone() : Event
        {
            return new ProLoaderRSLPreloaderSandboxEvent(type, bubbles, cancelable, this.loaderInfo, this.shape);
        }// end function

        override public function toString() : String
        {
            return formatToString("ProLoaderRSLPreloaderSandboxEvent", "type", "bubbles", "cancelable", "eventPhase", "loaderInfo", "shape");
        }// end function

    }
}
