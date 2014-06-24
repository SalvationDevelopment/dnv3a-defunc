package fl.containers
{
    import fl.controls.*;
    import fl.core.*;
    import fl.display.*;
    import fl.events.*;
    import fl.managers.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.ui.*;

    public class ScrollPane extends BaseScrollPane implements IFocusManagerComponent
    {
        protected var _source:Object = "";
        protected var _scrollDrag:Boolean = false;
        protected var contentClip:Sprite;
        protected var loader:ProLoader;
        protected var xOffset:Number;
        protected var yOffset:Number;
        protected var scrollDragHPos:Number;
        protected var scrollDragVPos:Number;
        protected var currentContent:Object;
        private static var defaultStyles:Object = {upSkin:"ScrollPane_upSkin", disabledSkin:"ScrollPane_disabledSkin", focusRectSkin:null, focusRectPadding:null, contentPadding:0};

        public function ScrollPane()
        {
            return;
        }// end function

        public function get scrollDrag() : Boolean
        {
            return _scrollDrag;
        }// end function

        public function set scrollDrag(param1:Boolean) : void
        {
            _scrollDrag = param1;
            invalidate(InvalidationType.STATE);
            return;
        }// end function

        public function get percentLoaded() : Number
        {
            if (loader != null)
            {
                return Math.round(bytesLoaded / bytesTotal * 100);
            }
            return 0;
        }// end function

        public function get bytesLoaded() : Number
        {
            return loader == null || loader.contentLoaderInfo == null ? (0) : (loader.contentLoaderInfo.bytesLoaded);
        }// end function

        public function get bytesTotal() : Number
        {
            return loader == null || loader.contentLoaderInfo == null ? (0) : (loader.contentLoaderInfo.bytesTotal);
        }// end function

        public function refreshPane() : void
        {
            if (_source is URLRequest)
            {
                _source = _source.url;
            }
            source = _source;
            return;
        }// end function

        public function update() : void
        {
            var _loc_1:* = contentClip.getChildAt(0);
            setContentSize(_loc_1.width, _loc_1.height);
            return;
        }// end function

        public function get content() : DisplayObject
        {
            var _loc_1:* = currentContent;
            if (_loc_1 is URLRequest)
            {
                _loc_1 = loader.content;
            }
            return _loc_1 as DisplayObject;
        }// end function

        public function get source() : Object
        {
            return _source;
        }// end function

        public function set source(param1:Object) : void
        {
            var _loc_2:* = undefined;
            clearContent();
            if (isLivePreview)
            {
                return;
            }
            _source = param1;
            if (_source == "" || _source == null)
            {
                return;
            }
            currentContent = getDisplayObjectInstance(param1);
            if (currentContent != null)
            {
                _loc_2 = contentClip.addChild(currentContent as DisplayObject);
                dispatchEvent(new Event(Event.INIT));
                update();
            }
            else
            {
                load(new URLRequest(_source.toString()));
            }
            return;
        }// end function

        public function load(param1:URLRequest, param2:LoaderContext = null) : void
        {
            if (param2 == null)
            {
                param2 = new LoaderContext(false, ApplicationDomain.currentDomain);
            }
            clearContent();
            initLoader();
            var _loc_3:* = param1;
            _source = param1;
            currentContent = _loc_3;
            loader.load(param1, param2);
            return;
        }// end function

        override protected function setVerticalScrollPosition(param1:Number, param2:Boolean = false) : void
        {
            var _loc_3:* = contentClip.scrollRect;
            _loc_3.y = param1;
            contentClip.scrollRect = _loc_3;
            return;
        }// end function

        override protected function setHorizontalScrollPosition(param1:Number, param2:Boolean = false) : void
        {
            var _loc_3:* = contentClip.scrollRect;
            _loc_3.x = param1;
            contentClip.scrollRect = _loc_3;
            return;
        }// end function

        override protected function drawLayout() : void
        {
            super.drawLayout();
            contentScrollRect = contentClip.scrollRect;
            contentScrollRect.width = availableWidth;
            contentScrollRect.height = availableHeight;
            contentClip.cacheAsBitmap = useBitmapScrolling;
            contentClip.scrollRect = contentScrollRect;
            var _loc_1:* = contentPadding;
            contentClip.y = contentPadding;
            contentClip.x = _loc_1;
            return;
        }// end function

        protected function onContentLoad(event:Event) : void
        {
            update();
            var _loc_2:* = calculateAvailableHeight();
            calculateAvailableSize();
            horizontalScrollBar.setScrollProperties(availableWidth, 0, useFixedHorizontalScrolling ? (_maxHorizontalScrollPosition) : (contentWidth - availableWidth), availableWidth);
            verticalScrollBar.setScrollProperties(_loc_2, 0, contentHeight - _loc_2, _loc_2);
            passEvent(event);
            return;
        }// end function

        protected function passEvent(event:Event) : void
        {
            dispatchEvent(event);
            return;
        }// end function

        protected function initLoader() : void
        {
            loader = new ProLoader();
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, handleError, false, 0, true);
            loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, handleError, false, 0, true);
            loader.contentLoaderInfo.addEventListener(Event.OPEN, passEvent, false, 0, true);
            loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, passEvent, false, 0, true);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onContentLoad, false, 0, true);
            loader.contentLoaderInfo.addEventListener(Event.INIT, passEvent, false, 0, true);
            loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS, passEvent, false, 0, true);
            contentClip.addChild(loader);
            return;
        }// end function

        override protected function handleScroll(event:ScrollEvent) : void
        {
            passEvent(event);
            super.handleScroll(event);
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
            loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, onContentLoad);
            return;
        }// end function

        protected function doDrag(event:MouseEvent) : void
        {
            var _loc_2:* = scrollDragVPos - (mouseY - yOffset);
            _verticalScrollBar.setScrollPosition(_loc_2);
            setVerticalScrollPosition(_verticalScrollBar.scrollPosition, true);
            var _loc_3:* = scrollDragHPos - (mouseX - xOffset);
            _horizontalScrollBar.setScrollPosition(_loc_3);
            setHorizontalScrollPosition(_horizontalScrollBar.scrollPosition, true);
            return;
        }// end function

        protected function doStartDrag(event:MouseEvent) : void
        {
            if (!enabled)
            {
                return;
            }
            xOffset = mouseX;
            yOffset = mouseY;
            scrollDragHPos = horizontalScrollPosition;
            scrollDragVPos = verticalScrollPosition;
            focusManager.form.addEventListener(MouseEvent.MOUSE_MOVE, doDrag, false, 0, true);
            return;
        }// end function

        protected function endDrag(event:MouseEvent) : void
        {
            focusManager.form.removeEventListener(MouseEvent.MOUSE_MOVE, doDrag);
            return;
        }// end function

        protected function setScrollDrag() : void
        {
            if (_scrollDrag)
            {
                contentClip.addEventListener(MouseEvent.MOUSE_DOWN, doStartDrag, false, 0, true);
                focusManager.form.addEventListener(MouseEvent.MOUSE_UP, endDrag, false, 0, true);
            }
            else
            {
                contentClip.removeEventListener(MouseEvent.MOUSE_DOWN, doStartDrag);
                focusManager.form.removeEventListener(MouseEvent.MOUSE_UP, endDrag);
                removeEventListener(MouseEvent.MOUSE_MOVE, doDrag);
            }
            contentClip.buttonMode = _scrollDrag;
            return;
        }// end function

        override protected function draw() : void
        {
            if (isInvalid(InvalidationType.STYLES))
            {
                drawBackground();
            }
            if (isInvalid(InvalidationType.STATE))
            {
                setScrollDrag();
            }
            super.draw();
            return;
        }// end function

        override protected function drawBackground() : void
        {
            var _loc_1:* = background;
            background = getDisplayObjectInstance(getStyleValue(enabled ? ("upSkin") : ("disabledSkin")));
            background.width = width;
            background.height = height;
            addChildAt(background, 0);
            if (_loc_1 != null && _loc_1 != background)
            {
                removeChild(_loc_1);
            }
            return;
        }// end function

        protected function clearContent() : void
        {
            if (contentClip.numChildren == 0)
            {
                return;
            }
            contentClip.removeChildAt(0);
            currentContent = null;
            if (loader != null)
            {
                try
                {
                    loader.close();
                }
                catch (e)
                {
                    try
                    {
                    }
                    loader.unload();
                }
                catch (e)
                {
                }
                loader = null;
            }
            return;
        }// end function

        override protected function keyDownHandler(event:KeyboardEvent) : void
        {
            var _loc_2:* = calculateAvailableHeight();
            switch(event.keyCode)
            {
                case Keyboard.DOWN:
                {
                    var _loc_4:* = verticalScrollPosition + 1;
                    verticalScrollPosition = _loc_4;
                    break;
                }
                case Keyboard.UP:
                {
                    var _loc_4:* = verticalScrollPosition - 1;
                    verticalScrollPosition = _loc_4;
                    break;
                }
                case Keyboard.RIGHT:
                {
                    var _loc_4:* = horizontalScrollPosition + 1;
                    horizontalScrollPosition = _loc_4;
                    break;
                }
                case Keyboard.LEFT:
                {
                    var _loc_4:* = horizontalScrollPosition - 1;
                    horizontalScrollPosition = _loc_4;
                    break;
                }
                case Keyboard.END:
                {
                    verticalScrollPosition = maxVerticalScrollPosition;
                    break;
                }
                case Keyboard.HOME:
                {
                    verticalScrollPosition = 0;
                    break;
                }
                case Keyboard.PAGE_UP:
                {
                    verticalScrollPosition = verticalScrollPosition - _loc_2;
                    break;
                }
                case Keyboard.PAGE_DOWN:
                {
                    verticalScrollPosition = verticalScrollPosition + _loc_2;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        protected function calculateAvailableHeight() : Number
        {
            var _loc_1:* = Number(getStyleValue("contentPadding"));
            return height - _loc_1 * 2 - (_horizontalScrollPolicy == ScrollPolicy.ON || _horizontalScrollPolicy == ScrollPolicy.AUTO && _maxHorizontalScrollPosition > 0 ? (15) : (0));
        }// end function

        override protected function configUI() : void
        {
            super.configUI();
            contentClip = new Sprite();
            addChild(contentClip);
            contentClip.scrollRect = contentScrollRect;
            _horizontalScrollPolicy = ScrollPolicy.AUTO;
            _verticalScrollPolicy = ScrollPolicy.AUTO;
            return;
        }// end function

        public static function getStyleDefinition() : Object
        {
            return mergeStyles(defaultStyles, BaseScrollPane.getStyleDefinition());
        }// end function

    }
}
