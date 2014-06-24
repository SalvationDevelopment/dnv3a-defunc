package fl.containers
{
    import fl.core.*;
    import fl.display.*;
    import fl.events.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;

    public class UILoader extends UIComponent
    {
        protected var _scaleContent:Boolean = true;
        protected var _autoLoad:Boolean = true;
        protected var contentInited:Boolean = false;
        protected var _source:Object;
        protected var loader:ProLoader;
        protected var _maintainAspectRatio:Boolean = true;
        protected var contentClip:Sprite;
        private static var defaultStyles:Object = {};

        public function UILoader()
        {
            return;
        }// end function

        override public function setSize(param1:Number, param2:Number) : void
        {
            if (!_scaleContent && _width > 0)
            {
                return;
            }
            super.setSize(param1, param2);
            return;
        }// end function

        public function get autoLoad() : Boolean
        {
            return _autoLoad;
        }// end function

        public function set autoLoad(param1:Boolean) : void
        {
            _autoLoad = param1;
            if (_autoLoad && loader == null && _source != null && _source != "")
            {
                load();
            }
            return;
        }// end function

        public function get scaleContent() : Boolean
        {
            return _scaleContent;
        }// end function

        public function set scaleContent(param1:Boolean) : void
        {
            if (_scaleContent == param1)
            {
                return;
            }
            _scaleContent = param1;
            invalidate(InvalidationType.SIZE);
            return;
        }// end function

        public function get maintainAspectRatio() : Boolean
        {
            return _maintainAspectRatio;
        }// end function

        public function set maintainAspectRatio(param1:Boolean) : void
        {
            _maintainAspectRatio = param1;
            invalidate(InvalidationType.SIZE);
            return;
        }// end function

        public function get bytesLoaded() : uint
        {
            return loader == null || loader.contentLoaderInfo == null ? (0) : (loader.contentLoaderInfo.bytesLoaded);
        }// end function

        public function get bytesTotal() : uint
        {
            return loader == null || loader.contentLoaderInfo == null ? (0) : (loader.contentLoaderInfo.bytesTotal);
        }// end function

        public function loadBytes(param1:ByteArray, param2:LoaderContext = null) : void
        {
            var bytes:* = param1;
            var context:* = param2;
            _unload();
            initLoader();
            try
            {
                loader.loadBytes(bytes, context);
            }
            catch (error)
            {
                throw error;
            }
            return;
        }// end function

        public function get content() : DisplayObject
        {
            if (loader != null)
            {
                return loader.content;
            }
            if (contentClip.numChildren)
            {
                return contentClip.getChildAt(0);
            }
            return null;
        }// end function

        public function get source() : Object
        {
            return _source;
        }// end function

        public function set source(param1:Object) : void
        {
            if (param1 == "")
            {
                return;
            }
            _source = param1;
            _unload();
            if (_autoLoad && _source != null)
            {
                load();
            }
            return;
        }// end function

        public function get percentLoaded() : Number
        {
            return bytesTotal <= 0 ? (0) : (bytesLoaded / bytesTotal * 100);
        }// end function

        public function load(param1:URLRequest = null, param2:LoaderContext = null) : void
        {
            _unload();
            if ((param1 == null || param1.url == null) && (_source == null || _source == ""))
            {
                return;
            }
            var _loc_3:* = getDisplayObjectInstance(source);
            if (_loc_3 != null)
            {
                contentClip.addChild(_loc_3);
                contentInited = true;
                invalidate(InvalidationType.SIZE);
                return;
            }
            param1 = param1;
            if (param1 == null)
            {
                param1 = new URLRequest(_source.toString());
            }
            if (param2 == null)
            {
                param2 = new LoaderContext(false, ApplicationDomain.currentDomain);
            }
            initLoader();
            loader.load(param1, param2);
            return;
        }// end function

        public function unload() : void
        {
            _source = null;
            _unload(true);
            return;
        }// end function

        public function close() : void
        {
            try
            {
                loader.close();
            }
            catch (error)
            {
                throw error;
            }
            return;
        }// end function

        protected function _unload(param1:Boolean = false) : void
        {
            var throwError:* = param1;
            if (loader != null)
            {
                clearLoadEvents();
                contentClip.removeChild(loader);
                try
                {
                    loader.close();
                }
                catch (e:Error)
                {
                    try
                    {
                    }
                    loader.unload();
                }
                catch (e)
                {
                    if (throwError)
                    {
                        throw e;
                    }
                }
                loader = null;
                return;
            }
            contentInited = false;
            if (contentClip.numChildren)
            {
                contentClip.removeChildAt(0);
            }
            return;
        }// end function

        protected function initLoader() : void
        {
            loader = new ProLoader();
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, handleError, false, 0, true);
            loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, handleError, false, 0, true);
            loader.contentLoaderInfo.addEventListener(Event.OPEN, passEvent, false, 0, true);
            loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, passEvent, false, 0, true);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete, false, 0, true);
            loader.contentLoaderInfo.addEventListener(Event.INIT, handleInit, false, 0, true);
            loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS, passEvent, false, 0, true);
            contentClip.addChild(loader);
            return;
        }// end function

        protected function handleComplete(event:Event) : void
        {
            clearLoadEvents();
            passEvent(event);
            return;
        }// end function

        protected function passEvent(event:Event) : void
        {
            dispatchEvent(event);
            return;
        }// end function

        protected function handleError(event:Event) : void
        {
            passEvent(event);
            clearLoadEvents();
            loader.contentLoaderInfo.removeEventListener(Event.INIT, handleInit);
            return;
        }// end function

        protected function handleInit(event:Event) : void
        {
            loader.contentLoaderInfo.removeEventListener(Event.INIT, handleInit);
            contentInited = true;
            passEvent(event);
            invalidate(InvalidationType.SIZE);
            return;
        }// end function

        protected function clearLoadEvents() : void
        {
            loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, handleError);
            loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, handleError);
            loader.contentLoaderInfo.removeEventListener(Event.OPEN, passEvent);
            loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, passEvent);
            loader.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS, passEvent);
            loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, handleComplete);
            return;
        }// end function

        override protected function draw() : void
        {
            if (isInvalid(InvalidationType.SIZE))
            {
                drawLayout();
            }
            super.draw();
            return;
        }// end function

        protected function drawLayout() : void
        {
            var _loc_2:Number = NaN;
            var _loc_3:Number = NaN;
            var _loc_6:ProLoaderInfo = null;
            if (!contentInited)
            {
                return;
            }
            var _loc_1:Boolean = false;
            if (loader)
            {
                _loc_6 = loader.contentLoaderInfo;
                _loc_2 = _loc_6.width;
                _loc_3 = _loc_6.height;
            }
            else
            {
                _loc_2 = contentClip.width;
                _loc_3 = contentClip.height;
            }
            var _loc_4:* = _width;
            var _loc_5:* = _height;
            if (!_scaleContent)
            {
                _width = contentClip.width;
                _height = contentClip.height;
            }
            else
            {
                sizeContent(contentClip, _loc_2, _loc_3, _width, _height);
            }
            if (_loc_4 != _width || _loc_5 != _height)
            {
                dispatchEvent(new ComponentEvent(ComponentEvent.RESIZE, true));
            }
            return;
        }// end function

        protected function sizeContent(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:Number) : void
        {
            var _loc_8:Number = NaN;
            var _loc_9:Number = NaN;
            var _loc_6:* = param4;
            var _loc_7:* = param5;
            if (_maintainAspectRatio)
            {
                _loc_8 = param4 / param5;
                _loc_9 = param2 / param3;
                if (_loc_8 < _loc_9)
                {
                    _loc_7 = _loc_6 / _loc_9;
                }
                else
                {
                    _loc_6 = _loc_7 * _loc_9;
                }
            }
            param1.width = _loc_6;
            param1.height = _loc_7;
            param1.x = param4 / 2 - _loc_6 / 2;
            param1.y = param5 / 2 - _loc_7 / 2;
            return;
        }// end function

        override protected function configUI() : void
        {
            super.configUI();
            contentClip = new Sprite();
            addChild(contentClip);
            return;
        }// end function

        public static function getStyleDefinition() : Object
        {
            return defaultStyles;
        }// end function

    }
}
