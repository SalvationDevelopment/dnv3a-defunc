package fl.controls
{
    import fl.core.*;
    import fl.events.*;
    import flash.display.*;
    import flash.events.*;

    public class UIScrollBar extends ScrollBar
    {
        protected var _scrollTarget:DisplayObject;
        protected var inEdit:Boolean = false;
        protected var inScroll:Boolean = false;
        protected var _targetScrollProperty:String;
        protected var _targetMaxScrollProperty:String;
        private static var defaultStyles:Object = {};

        public function UIScrollBar()
        {
            return;
        }// end function

        override public function set minScrollPosition(param1:Number) : void
        {
            super.minScrollPosition = param1 < 0 ? (0) : (param1);
            return;
        }// end function

        override public function set maxScrollPosition(param1:Number) : void
        {
            var _loc_2:* = param1;
            if (_scrollTarget != null)
            {
                _loc_2 = Math.min(_loc_2, _scrollTarget[_targetMaxScrollProperty]);
            }
            super.maxScrollPosition = _loc_2;
            return;
        }// end function

        public function get scrollTarget() : DisplayObject
        {
            return _scrollTarget;
        }// end function

        public function set scrollTarget(param1:DisplayObject) : void
        {
            var target:* = param1;
            if (_scrollTarget != null)
            {
                _scrollTarget.removeEventListener(Event.CHANGE, handleTargetChange, false);
                _scrollTarget.removeEventListener(TextEvent.TEXT_INPUT, handleTargetChange, false);
                _scrollTarget.removeEventListener(Event.SCROLL, handleTargetScroll, false);
            }
            _scrollTarget = target;
            var blockProg:String;
            var textDir:String;
            var hasPixelVS:Boolean;
            if (_scrollTarget != null)
            {
                try
                {
                    if (_scrollTarget.hasOwnProperty("blockProgression"))
                    {
                        blockProg = _scrollTarget["blockProgression"];
                    }
                    if (_scrollTarget.hasOwnProperty("direction"))
                    {
                        textDir = _scrollTarget["direction"];
                    }
                    if (_scrollTarget.hasOwnProperty("pixelScrollV"))
                    {
                        hasPixelVS;
                    }
                }
                catch (e:Error)
                {
                    blockProg;
                    textDir;
                }
            }
            var scrollHoriz:* = this.direction == ScrollBarDirection.HORIZONTAL;
            var rot:* = Math.abs(this.rotation);
            if (scrollHoriz && (blockProg == "rl" || textDir == "rtl"))
            {
                if (getScaleY() > 0 && rotation == 90)
                {
                    x = x + width;
                }
                setScaleY(-1);
            }
            else if (!scrollHoriz && blockProg == "rl" && textDir == "rtl")
            {
                if (getScaleY() > 0 && rotation != 90)
                {
                    y = y + height;
                }
                setScaleY(-1);
            }
            else
            {
                if (getScaleY() < 0)
                {
                    if (scrollHoriz)
                    {
                        if (rotation == 90)
                        {
                            x = x - width;
                        }
                    }
                    else if (rotation != 90)
                    {
                        y = y - height;
                    }
                }
                setScaleY(1);
            }
            setTargetScrollProperties(scrollHoriz, blockProg, hasPixelVS);
            if (_scrollTarget != null)
            {
                _scrollTarget.addEventListener(Event.CHANGE, handleTargetChange, false, 0, true);
                _scrollTarget.addEventListener(TextEvent.TEXT_INPUT, handleTargetChange, false, 0, true);
                _scrollTarget.addEventListener(Event.SCROLL, handleTargetScroll, false, 0, true);
            }
            invalidate(InvalidationType.DATA);
            return;
        }// end function

        public function get scrollTargetName() : String
        {
            return _scrollTarget.name;
        }// end function

        public function set scrollTargetName(param1:String) : void
        {
            var target:* = param1;
            try
            {
                scrollTarget = parent.getChildByName(target);
            }
            catch (error:Error)
            {
                throw new Error("ScrollTarget not found, or is not a valid target");
            }
            return;
        }// end function

        override public function get direction() : String
        {
            return super.direction;
        }// end function

        override public function set direction(param1:String) : void
        {
            var _loc_2:DisplayObject = null;
            if (isLivePreview)
            {
                return;
            }
            if (!componentInspectorSetting && _scrollTarget != null)
            {
                _loc_2 = _scrollTarget;
                scrollTarget = null;
            }
            super.direction = param1;
            if (_loc_2 != null)
            {
                scrollTarget = _loc_2;
            }
            else
            {
                updateScrollTargetProperties();
            }
            return;
        }// end function

        public function update() : void
        {
            inEdit = true;
            updateScrollTargetProperties();
            inEdit = false;
            return;
        }// end function

        override protected function draw() : void
        {
            if (isInvalid(InvalidationType.DATA))
            {
                updateScrollTargetProperties();
            }
            super.draw();
            return;
        }// end function

        protected function updateScrollTargetProperties() : void
        {
            var blockProg:String;
            var hasPixelVS:Boolean;
            var pageSize:Number;
            var minScroll:Number;
            var minScrollVValue:*;
            if (_scrollTarget == null)
            {
                setScrollProperties(pageSize, minScrollPosition, maxScrollPosition);
                scrollPosition = 0;
            }
            else
            {
                blockProg;
                hasPixelVS;
                try
                {
                    if (_scrollTarget.hasOwnProperty("blockProgression"))
                    {
                        blockProg = _scrollTarget["blockProgression"];
                    }
                    if (_scrollTarget.hasOwnProperty("pixelScrollV"))
                    {
                        hasPixelVS;
                    }
                }
                catch (e1:Error)
                {
                }
                setTargetScrollProperties(this.direction == ScrollBarDirection.HORIZONTAL, blockProg, hasPixelVS);
                if (_targetScrollProperty == "scrollH")
                {
                    minScroll;
                    try
                    {
                        if (_scrollTarget.hasOwnProperty("controller") && _scrollTarget["controller"].hasOwnProperty("compositionWidth"))
                        {
                            pageSize = _scrollTarget["controller"]["compositionWidth"];
                        }
                        else
                        {
                            pageSize = _scrollTarget.width;
                        }
                    }
                    catch (e2:Error)
                    {
                        pageSize = _scrollTarget.width;
                    }
                }
                else
                {
                    try
                    {
                        if (blockProg != null)
                        {
                            minScrollVValue = _scrollTarget["pixelMinScrollV"];
                            if (minScrollVValue is int)
                            {
                                minScroll = minScrollVValue;
                            }
                            else
                            {
                                minScroll;
                            }
                        }
                        else
                        {
                            minScroll;
                        }
                    }
                    catch (e3:Error)
                    {
                        minScroll;
                    }
                    pageSize;
                }
                setScrollProperties(pageSize, minScroll, scrollTarget[_targetMaxScrollProperty]);
                scrollPosition = _scrollTarget[_targetScrollProperty];
            }
            return;
        }// end function

        override public function setScrollProperties(param1:Number, param2:Number, param3:Number, param4:Number = 0) : void
        {
            var _loc_5:* = param3;
            var _loc_6:* = param2 < 0 ? (0) : (param2);
            if (_scrollTarget != null)
            {
                _loc_5 = Math.min(param3, _scrollTarget[_targetMaxScrollProperty]);
            }
            super.setScrollProperties(param1, _loc_6, _loc_5, param4);
            return;
        }// end function

        override public function setScrollPosition(param1:Number, param2:Boolean = true) : void
        {
            super.setScrollPosition(param1, param2);
            if (!_scrollTarget)
            {
                inScroll = false;
                return;
            }
            updateTargetScroll();
            return;
        }// end function

        protected function updateTargetScroll(event:ScrollEvent = null) : void
        {
            if (inEdit)
            {
                return;
            }
            _scrollTarget[_targetScrollProperty] = scrollPosition;
            return;
        }// end function

        protected function handleTargetChange(event:Event) : void
        {
            inEdit = true;
            setScrollPosition(_scrollTarget[_targetScrollProperty], true);
            updateScrollTargetProperties();
            inEdit = false;
            return;
        }// end function

        protected function handleTargetScroll(event:Event) : void
        {
            if (inDrag)
            {
                return;
            }
            if (!enabled)
            {
                return;
            }
            inEdit = true;
            updateScrollTargetProperties();
            scrollPosition = _scrollTarget[_targetScrollProperty];
            inEdit = false;
            return;
        }// end function

        private function setTargetScrollProperties(param1:Boolean, param2:String, param3:Boolean = false) : void
        {
            if (param2 == "rl")
            {
                if (param1)
                {
                    _targetScrollProperty = param3 ? ("pixelScrollV") : ("scrollV");
                    _targetMaxScrollProperty = param3 ? ("pixelMaxScrollV") : ("maxScrollV");
                }
                else
                {
                    _targetScrollProperty = "scrollH";
                    _targetMaxScrollProperty = "maxScrollH";
                }
            }
            else if (param1)
            {
                _targetScrollProperty = "scrollH";
                _targetMaxScrollProperty = "maxScrollH";
            }
            else
            {
                _targetScrollProperty = param3 ? ("pixelScrollV") : ("scrollV");
                _targetMaxScrollProperty = param3 ? ("pixelMaxScrollV") : ("maxScrollV");
            }
            return;
        }// end function

        public static function getStyleDefinition() : Object
        {
            return UIComponent.mergeStyles(defaultStyles, ScrollBar.getStyleDefinition());
        }// end function

    }
}
