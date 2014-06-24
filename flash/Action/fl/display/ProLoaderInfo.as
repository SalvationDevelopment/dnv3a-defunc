package fl.display
{
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.system.*;
    import flash.utils.*;

    public class ProLoaderInfo extends EventDispatcher
    {
        private var _proLoader:ProLoader;
        private var _realLI:LoaderInfo;
        private var _realContentLI:LoaderInfo;
        private var _rslPreloaderLoaded:Boolean;
        private var _doneProgressStalling:Boolean;
        private var _numAdded:int;
        var _lcRequestedContentParentSet:Boolean;

        public function ProLoaderInfo(param1:ProLoader)
        {
            this._realContentLI = null;
            this._lcRequestedContentParentSet = false;
            this._rslPreloaderLoaded = false;
            this._doneProgressStalling = false;
            this._numAdded = 0;
            this._proLoader = param1;
            this._realLI = param1.realLoader.contentLoaderInfo;
            this._realLI.addEventListener(AsyncErrorEvent.ASYNC_ERROR, this.handleAsyncErrorEvent, false, 0, true);
            this._realLI.addEventListener(Event.COMPLETE, this.handleLoaderInfoEvent, false, 0, true);
            this._realLI.addEventListener(HTTPStatusEvent.HTTP_STATUS, this.handleLoaderInfoEvent, false, 0, true);
            this._realLI.addEventListener(Event.INIT, this.handleLoaderInfoEvent, false, 0, true);
            this._realLI.addEventListener(IOErrorEvent.IO_ERROR, this.handleLoaderInfoEvent, false, 0, true);
            this._realLI.addEventListener(Event.OPEN, this.handleLoaderInfoEvent, false, 0, true);
            this._realLI.addEventListener(ProgressEvent.PROGRESS, this.handleProgressEvent, false, 0, true);
            this._realLI.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.handleSecurityErrorEvent, false, 0, true);
            this._realLI.addEventListener(Event.UNLOAD, this.handleLoaderInfoEvent, false, 0, true);
            return;
        }// end function

        function reset() : void
        {
            this._realContentLI = null;
            this._rslPreloaderLoaded = false;
            this._doneProgressStalling = false;
            this._lcRequestedContentParentSet = false;
            return;
        }// end function

        public function get actionScriptVersion() : uint
        {
            return this._realLI.actionScriptVersion;
        }// end function

        public function get applicationDomain() : ApplicationDomain
        {
            return this._realLI.applicationDomain;
        }// end function

        public function get bytes() : ByteArray
        {
            return this._realLI.bytes;
        }// end function

        public function get bytesLoaded() : uint
        {
            if (this._realLI.bytesLoaded >= this._realLI.bytesTotal && this._proLoader.content == null)
            {
                return (this._realLI.bytesTotal - 1);
            }
            return this._realLI.bytesLoaded;
        }// end function

        public function get bytesTotal() : uint
        {
            return this._realLI.bytesTotal;
        }// end function

        public function get childAllowsParent() : Boolean
        {
            return this._realLI.childAllowsParent;
        }// end function

        public function get childSandboxBridge() : Object
        {
            if (this._realContentLI != null)
            {
                return this._realContentLI["childSandboxBridge"];
            }
            return this._realLI["childSandboxBridge"];
        }// end function

        public function set childSandboxBridge(param1:Object) : void
        {
            if (this._realContentLI != null)
            {
                this._realContentLI["childSandboxBridge"] = param1;
            }
            else
            {
                this._realLI["childSandboxBridge"] = param1;
            }
            return;
        }// end function

        public function get content() : DisplayObject
        {
            return this._proLoader.content;
        }// end function

        public function get contentType() : String
        {
            return this._realLI.contentType;
        }// end function

        public function get frameRate() : Number
        {
            return this._realLI.frameRate;
        }// end function

        public function get height() : int
        {
            return this._realLI.height;
        }// end function

        public function get isURLInaccessible() : Boolean
        {
            return this._realLI.isURLInaccessible;
        }// end function

        public function get loader() : ProLoader
        {
            return this._proLoader;
        }// end function

        public function get loaderURL() : String
        {
            return this._realLI.loaderURL;
        }// end function

        public function get parameters() : Object
        {
            return this._realLI.parameters;
        }// end function

        public function get parentAllowsChild() : Boolean
        {
            return this._realLI.parentAllowsChild;
        }// end function

        public function get parentSandboxBridge() : Object
        {
            if (this._realContentLI != null)
            {
                return this._realContentLI["parentSandboxBridge"];
            }
            return this._realLI["parentSandboxBridge"];
        }// end function

        public function set parentSandboxBridge(param1:Object)
        {
            if (this._realContentLI != null)
            {
                this._realContentLI["parentSandboxBridge"] = param1;
            }
            else
            {
                this._realLI["parentSandboxBridge"] = param1;
            }
            return;
        }// end function

        public function get sameDomain() : Boolean
        {
            return this._realLI.sameDomain;
        }// end function

        public function get sharedEvents() : EventDispatcher
        {
            if (this._realContentLI != null)
            {
                return this._realContentLI.sharedEvents;
            }
            return this._realLI.sharedEvents;
        }// end function

        public function get swfVersion() : uint
        {
            return this._realLI.swfVersion;
        }// end function

        public function get url() : String
        {
            return this._realLI.url;
        }// end function

        public function get width() : int
        {
            return this._realLI.width;
        }// end function

        override public function dispatchEvent(event:Event) : Boolean
        {
            Error.throwError(IllegalOperationError, 2118);
            return false;
        }// end function

        private function handleAsyncErrorEvent(event:AsyncErrorEvent) : void
        {
            if (!this._lcRequestedContentParentSet)
            {
                super.dispatchEvent(event);
            }
            return;
        }// end function

        private function handleLoaderInfoEvent(event:Event) : void
        {
            var theContent:DisplayObject;
            var theName:String;
            var rslPreloader:Object;
            var e:* = event;
            switch(e.type)
            {
                case HTTPStatusEvent.HTTP_STATUS:
                case IOErrorEvent.IO_ERROR:
                case Event.OPEN:
                case Event.UNLOAD:
                {
                    super.dispatchEvent(e);
                    break;
                }
                case Event.INIT:
                {
                    if (!this._rslPreloaderLoaded)
                    {
                        try
                        {
                            theContent = this._realLI.content;
                            theName = getQualifiedClassName(theContent);
                            if (theName.substr(-13) == "__Preloader__")
                            {
                                rslPreloader = theContent["__rslPreloader"];
                                if (rslPreloader != null)
                                {
                                    theName = getQualifiedClassName(rslPreloader);
                                    if (theName == "fl.rsl::RSLPreloader")
                                    {
                                        this._rslPreloaderLoaded = true;
                                        this._numAdded = 0;
                                        theContent.addEventListener(Event.ADDED, this.handleAddedEvent, false, 0, true);
                                    }
                                }
                            }
                        }
                        catch (err:Error)
                        {
                            _rslPreloaderLoaded = false;
                        }
                    }
                    if (!this._rslPreloaderLoaded)
                    {
                        this._proLoader.loadDoneCallback(theContent);
                        if (!this._doneProgressStalling && this._realLI.bytesLoaded >= this._realLI.bytesTotal)
                        {
                            this._doneProgressStalling = true;
                            super.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, this._realLI.bytesLoaded, this._realLI.bytesTotal));
                        }
                        super.dispatchEvent(e);
                    }
                    break;
                }
                case Event.COMPLETE:
                {
                    if (!this._rslPreloaderLoaded)
                    {
                        super.dispatchEvent(e);
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function handleProgressEvent(event:ProgressEvent) : void
        {
            if (this._doneProgressStalling || event.bytesLoaded < event.bytesTotal)
            {
                super.dispatchEvent(event);
            }
            return;
        }// end function

        private function handleSecurityErrorEvent(event:SecurityErrorEvent) : void
        {
            if (!this._lcRequestedContentParentSet || event.errorID != 2047)
            {
                super.dispatchEvent(event);
            }
            return;
        }// end function

        private function handleAddedEvent(event:Event) : void
        {
            var _loc_2:* = event.target as DisplayObject;
            var _loc_3:* = event.currentTarget as DisplayObjectContainer;
            if (_loc_2 != null && _loc_3 != null && _loc_2.parent == _loc_3)
            {
                var _loc_4:String = this;
                var _loc_5:* = this._numAdded + 1;
                _loc_4._numAdded = _loc_5;
            }
            if (this._numAdded > 1)
            {
                event.currentTarget.removeEventListener(Event.ADDED, this.handleAddedEvent);
                if (this._proLoader.loadDoneCallback(_loc_2))
                {
                    if (!this._doneProgressStalling && this._realLI.bytesLoaded >= this._realLI.bytesTotal)
                    {
                        this._doneProgressStalling = true;
                        super.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, this._realLI.bytesLoaded, this._realLI.bytesTotal));
                    }
                    super.dispatchEvent(new Event(Event.INIT, false, false));
                    super.dispatchEvent(new Event(Event.COMPLETE, false, false));
                }
            }
            return;
        }// end function

        function set realContentLoaderInfo(param1:LoaderInfo) : void
        {
            var obj:Object;
            var value:* = param1;
            this._realContentLI = value;
            this._realContentLI.addEventListener(Event.COMPLETE, this.handleRealContentEvent, false, 0, true);
            this._realContentLI.addEventListener(Event.INIT, this.handleRealContentEvent, false, 0, true);
            this._realContentLI.addEventListener(IOErrorEvent.IO_ERROR, this.handleLoaderInfoEvent, false, 0, true);
            this._realContentLI.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.handleSecurityErrorEvent, false, 0, true);
            this._rslPreloaderLoaded = true;
            if (this._realContentLI.hasOwnProperty("childSandboxBridge"))
            {
                try
                {
                    obj = this._realLI["childSandboxBridge"];
                    if (obj != null)
                    {
                        this._realContentLI["childSandboxBridge"] = obj;
                    }
                }
                catch (se:SecurityError)
                {
                    try
                    {
                    }
                    obj = this._realLI["parentSandboxBridge"];
                    if (obj != null)
                    {
                        this._realContentLI["parentSandboxBridge"] = obj;
                    }
                }
                catch (se:SecurityError)
                {
                }
            }
            return;
        }// end function

        function get realContentLoaderInfo() : LoaderInfo
        {
            return this._realContentLI;
        }// end function

        private function handleRealContentEvent(event:Event) : void
        {
            var d:DisplayObject;
            var e:* = event;
            if (e.type == Event.INIT)
            {
                try
                {
                    d = this._realContentLI.content;
                }
                catch (se:SecurityError)
                {
                    d;
                }
                this._proLoader.loadDoneCallback(d);
                if (!this._doneProgressStalling && this._realLI.bytesLoaded >= this._realLI.bytesTotal)
                {
                    this._doneProgressStalling = true;
                    super.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, this._realLI.bytesLoaded, this._realLI.bytesTotal));
                }
            }
            super.dispatchEvent(e);
            return;
        }// end function

    }
}
