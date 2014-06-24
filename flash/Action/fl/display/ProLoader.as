package fl.display
{
    import fl.events.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;

    public class ProLoader extends Sprite
    {
        private var _cli:ProLoaderInfo;
        private var _loader:Loader;
        private var _realContentLoader:Loader;
        private var _loading:Boolean;
        private var _hasRequestedContentParentProp:Boolean;

        public function ProLoader()
        {
            this._loader = new Loader();
            this._loader.contentLoaderInfo.sharedEvents.addEventListener(ProLoaderRSLPreloaderSandboxEvent.PROLOADER_RSLPRELOADER_SANDBOX, this.handleProLoaderRSLPreloaderSandboxEvent, false, 0, true);
            super.addChild(this._loader);
            this._realContentLoader = null;
            this._cli = new ProLoaderInfo(this);
            this._loading = false;
            this._hasRequestedContentParentProp = false;
            return;
        }// end function

        private function handleProLoaderRSLPreloaderSandboxEvent(param1:Object) : void
        {
            var content:DisplayObjectContainer;
            var e:* = param1;
            if (e.loaderInfo != null)
            {
                try
                {
                    this._realContentLoader = e.loaderInfo.loader;
                }
                catch (se:SecurityError)
                {
                    _realContentLoader = null;
                }
                this._cli.realContentLoaderInfo = e.loaderInfo;
            }
            else if (e.shape != null && getQualifiedClassName(e.shape) == "flash.display::Shape")
            {
                try
                {
                    content = e.shape.parent;
                    if (content != null)
                    {
                        content.removeChild(e.shape);
                        if (super.numChildren < 2)
                        {
                            super.addChild(content);
                        }
                    }
                }
                catch (se:SecurityError)
                {
                }
            }
            return;
        }// end function

        function loadDoneCallback(param1:DisplayObject) : Boolean
        {
            var p:DisplayObjectContainer;
            var d:* = param1;
            if (!this._loading)
            {
                this._loader.unload();
                return false;
            }
            this._loading = false;
            if (d != null)
            {
                try
                {
                    if (this._cli.realContentLoaderInfo == null)
                    {
                        if (d.loaderInfo.loader != this._loader)
                        {
                            this._realContentLoader = d.loaderInfo.loader;
                            this._cli.realContentLoaderInfo = this._realContentLoader.contentLoaderInfo;
                            if (this._hasRequestedContentParentProp)
                            {
                                p = this._loader.content.parent as DisplayObjectContainer;
                                if (p == this || p == null)
                                {
                                    while (super.numChildren > 1)
                                    {
                                        
                                        super.removeChildAt(1);
                                    }
                                    super.addChild(d);
                                }
                                else
                                {
                                    p.addChildAt(d, p.getChildIndex(this._loader.content));
                                    p.removeChild(this._loader.content);
                                }
                            }
                            else
                            {
                                super.addChild(d);
                            }
                        }
                        else if (!this._hasRequestedContentParentProp || this._cli._lcRequestedContentParentSet && d.parent != this)
                        {
                            super.addChild(d);
                        }
                    }
                    else if (this._hasRequestedContentParentProp)
                    {
                        if (d.parent == this)
                        {
                            while (super.numChildren > 2)
                            {
                                
                                super.removeChildAt(1);
                            }
                        }
                    }
                    else
                    {
                        super.addChild(d);
                    }
                }
                catch (se:SecurityError)
                {
                }
            }
            return true;
        }// end function

        public function get realLoader() : Loader
        {
            return this._loader.contentLoaderInfo.loader;
        }// end function

        public function get realContentLoader() : Loader
        {
            return this._realContentLoader == null ? (null) : (this._realContentLoader.contentLoaderInfo.loader);
        }// end function

        public function get content() : DisplayObject
        {
            if (super.numChildren > 1)
            {
                return super.getChildAt(1);
            }
            if (this._realContentLoader)
            {
                return this._realContentLoader.content;
            }
            return this._loader.content;
        }// end function

        public function get contentLoaderInfo() : ProLoaderInfo
        {
            return this._cli;
        }// end function

        public function close() : void
        {
            if (this._loading)
            {
                this._loading = false;
                try
                {
                    this._loader.close();
                }
                catch (err:Error)
                {
                }
            }
            else
            {
                this._loader.close();
            }
            return;
        }// end function

        public function load(param1:URLRequest, param2:LoaderContext = null) : void
        {
            var _loc_3:DisplayObjectContainer = null;
            while (super.numChildren > 1)
            {
                
                super.removeChildAt(1);
            }
            this._realContentLoader = null;
            this._hasRequestedContentParentProp = false;
            this._cli.reset();
            if (param2 == null)
            {
                param2 = new LoaderContext();
            }
            if (param2.hasOwnProperty("requestedContentParent"))
            {
                this._hasRequestedContentParentProp = true;
                _loc_3 = param2["requestedContentParent"];
                if (_loc_3 == null)
                {
                    param2["requestedContentParent"] = this;
                    this._cli._lcRequestedContentParentSet = true;
                }
            }
            this._loader.load(param1, param2);
            this._loading = true;
            return;
        }// end function

        public function loadBytes(param1:ByteArray, param2:LoaderContext = null) : void
        {
            var _loc_3:DisplayObjectContainer = null;
            while (super.numChildren > 1)
            {
                
                super.removeChildAt(1);
            }
            this._realContentLoader = null;
            this._hasRequestedContentParentProp = false;
            this._cli.reset();
            if (param2 == null)
            {
                param2 = new LoaderContext();
            }
            if (param2.hasOwnProperty("requestedContentParent"))
            {
                this._hasRequestedContentParentProp = true;
                _loc_3 = param2["requestedContentParent"];
                if (_loc_3 == null)
                {
                    param2["requestedContentParent"] = this;
                    this._cli._lcRequestedContentParentSet = true;
                }
            }
            this._loader.loadBytes(param1, param2);
            this._loading = true;
            return;
        }// end function

        public function loadFilePromise(param1:Object, param2:LoaderContext = null) : void
        {
            var _loc_3:DisplayObjectContainer = null;
            while (super.numChildren > 1)
            {
                
                super.removeChildAt(1);
            }
            this._realContentLoader = null;
            this._hasRequestedContentParentProp = false;
            this._cli.reset();
            if (param2 == null)
            {
                param2 = new LoaderContext();
            }
            if (param2.hasOwnProperty("requestedContentParent"))
            {
                this._hasRequestedContentParentProp = true;
                _loc_3 = param2["requestedContentParent"];
                if (_loc_3 == null)
                {
                    param2["requestedContentParent"] = this;
                    this._cli._lcRequestedContentParentSet = true;
                }
            }
            var _loc_4:* = this._loader;
            _loc_4.this._loader["loadFilePromise"](param1, param2);
            this._loading = true;
            return;
        }// end function

        public function unload() : void
        {
            if (!this._loading)
            {
                while (super.numChildren > 1)
                {
                    
                    super.removeChildAt(1);
                }
                this._loader.unload();
            }
            return;
        }// end function

        public function unloadAndStop(param1:Boolean = true) : void
        {
            if (!this._loading)
            {
                while (super.numChildren > 1)
                {
                    
                    super.removeChildAt(1);
                }
                var _loc_2:* = this._loader;
                _loc_2.this._loader["unloadAndStop"](param1);
            }
            return;
        }// end function

        override public function addChild(param1:DisplayObject) : DisplayObject
        {
            if (this._realContentLoader != null && this._realContentLoader.content == param1 || this._loader.content == param1)
            {
                return super.addChild(param1);
            }
            throw new Error("Error #2069: The ProLoader class does not implement this method.");
        }// end function

        override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
        {
            throw new Error("Error #2069: The ProLoader class does not implement this method.");
        }// end function

        override public function removeChild(param1:DisplayObject) : DisplayObject
        {
            throw new Error("Error #2069: The ProLoader class does not implement this method.");
        }// end function

        override public function removeChildAt(param1:int) : DisplayObject
        {
            throw new Error("Error #2069: The ProLoader class does not implement this method.");
        }// end function

        override public function setChildIndex(param1:DisplayObject, param2:int) : void
        {
            throw new Error("Error #2069: The ProLoader class does not implement this method.");
        }// end function

        override public function get numChildren() : int
        {
            return (super.numChildren - 1);
        }// end function

        override public function getChildAt(param1:int) : DisplayObject
        {
            if (param1 >= 0)
            {
                param1++;
            }
            return super.getChildAt(param1);
        }// end function

        override public function getChildIndex(param1:DisplayObject) : int
        {
            return (super.getChildIndex(param1) - 1);
        }// end function

        public function get uncaughtErrorEvents() : EventDispatcher
        {
            return this._loader["uncaughtErrorEvents"];
        }// end function

    }
}
