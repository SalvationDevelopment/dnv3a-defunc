package fl.controls
{
    import fl.controls.progressBarClasses.*;
    import fl.core.*;
    import flash.display.*;
    import flash.events.*;

    public class ProgressBar extends UIComponent
    {
        protected var track:DisplayObject;
        protected var determinateBar:DisplayObject;
        protected var indeterminateBar:UIComponent;
        protected var _direction:String = "right";
        protected var _indeterminate:Boolean = true;
        protected var _mode:String = "event";
        protected var _minimum:Number = 0;
        protected var _maximum:Number = 0;
        protected var _value:Number = 0;
        protected var _source:Object;
        protected var _loaded:Number;
        private static var defaultStyles:Object = {trackSkin:"ProgressBar_trackSkin", barSkin:"ProgressBar_barSkin", indeterminateSkin:"ProgressBar_indeterminateSkin", indeterminateBar:IndeterminateBar, barPadding:0};

        public function ProgressBar()
        {
            return;
        }// end function

        public function get direction() : String
        {
            return _direction;
        }// end function

        public function set direction(param1:String) : void
        {
            _direction = param1;
            invalidate(InvalidationType.DATA);
            return;
        }// end function

        public function get indeterminate() : Boolean
        {
            return _indeterminate;
        }// end function

        public function set indeterminate(param1:Boolean) : void
        {
            if (_mode != ProgressBarMode.MANUAL || _indeterminate == param1)
            {
                return;
            }
            setIndeterminate(param1);
            return;
        }// end function

        public function get minimum() : Number
        {
            return _minimum;
        }// end function

        public function set minimum(param1:Number) : void
        {
            if (_mode != ProgressBarMode.MANUAL)
            {
                return;
            }
            _minimum = param1;
            invalidate(InvalidationType.DATA);
            return;
        }// end function

        public function get maximum() : Number
        {
            return _maximum;
        }// end function

        public function set maximum(param1:Number) : void
        {
            setProgress(_value, param1);
            return;
        }// end function

        public function get value() : Number
        {
            return _value;
        }// end function

        public function set value(param1:Number) : void
        {
            setProgress(param1, _maximum);
            return;
        }// end function

        public function setProgress(param1:Number, param2:Number) : void
        {
            if (_mode != ProgressBarMode.MANUAL)
            {
                return;
            }
            _setProgress(param1, param2);
            return;
        }// end function

        public function set sourceName(param1:String) : void
        {
            if (!componentInspectorSetting)
            {
                return;
            }
            if (param1 == "")
            {
                return;
            }
            var _loc_2:* = parent.getChildByName(param1) as DisplayObject;
            if (_loc_2 == null)
            {
                throw new Error("Source clip \'" + param1 + "\' not found on parent.");
            }
            source = _loc_2;
            return;
        }// end function

        public function get source() : Object
        {
            return _source;
        }// end function

        public function set source(param1:Object) : void
        {
            if (_source == param1)
            {
                return;
            }
            if (_mode != ProgressBarMode.MANUAL)
            {
                resetProgress();
            }
            _source = param1;
            if (_source == null)
            {
                return;
            }
            if (_mode == ProgressBarMode.EVENT)
            {
                setupSourceEvents();
            }
            else if (_mode == ProgressBarMode.POLLED)
            {
                addEventListener(Event.ENTER_FRAME, pollSource, false, 0, true);
            }
            return;
        }// end function

        public function get percentComplete() : Number
        {
            return _maximum <= _minimum || _value <= _minimum ? (0) : (Math.max(0, Math.min(100, (_value - _minimum) / (_maximum - _minimum) * 100)));
        }// end function

        public function get mode() : String
        {
            return _mode;
        }// end function

        public function set mode(param1:String) : void
        {
            if (_mode == param1)
            {
                return;
            }
            resetProgress();
            _mode = param1;
            if (param1 == ProgressBarMode.EVENT && _source != null)
            {
                setupSourceEvents();
            }
            else if (param1 == ProgressBarMode.POLLED)
            {
                addEventListener(Event.ENTER_FRAME, pollSource, false, 0, true);
            }
            setIndeterminate(_mode != ProgressBarMode.MANUAL);
            return;
        }// end function

        public function reset() : void
        {
            _setProgress(0, 0);
            var _loc_1:* = _source;
            _source = null;
            source = _loc_1;
            return;
        }// end function

        protected function _setProgress(param1:Number, param2:Number, param3:Boolean = false) : void
        {
            if (param1 == _value && param2 == _maximum)
            {
                return;
            }
            _value = param1;
            _maximum = param2;
            if (_value != _loaded && param3)
            {
                dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, _value, _maximum));
                _loaded = _value;
            }
            if (_mode != ProgressBarMode.MANUAL)
            {
                setIndeterminate(param2 == 0);
            }
            invalidate(InvalidationType.DATA);
            return;
        }// end function

        protected function setIndeterminate(param1:Boolean) : void
        {
            if (_indeterminate == param1)
            {
                return;
            }
            _indeterminate = param1;
            invalidate(InvalidationType.STATE);
            return;
        }// end function

        protected function resetProgress() : void
        {
            if (_mode == ProgressBarMode.EVENT && _source != null)
            {
                cleanupSourceEvents();
            }
            else if (_mode == ProgressBarMode.POLLED)
            {
                removeEventListener(Event.ENTER_FRAME, pollSource);
            }
            else if (_source != null)
            {
                _source = null;
            }
            var _loc_1:int = 0;
            _value = 0;
            var _loc_1:* = _loc_1;
            _maximum = _loc_1;
            _minimum = _loc_1;
            return;
        }// end function

        protected function setupSourceEvents() : void
        {
            _source.addEventListener(ProgressEvent.PROGRESS, handleProgress, false, 0, true);
            _source.addEventListener(Event.COMPLETE, handleComplete, false, 0, true);
            return;
        }// end function

        protected function cleanupSourceEvents() : void
        {
            _source.removeEventListener(ProgressEvent.PROGRESS, handleProgress);
            _source.removeEventListener(Event.COMPLETE, handleComplete);
            return;
        }// end function

        protected function pollSource(event:Event) : void
        {
            if (_source == null)
            {
                return;
            }
            _setProgress(_source.bytesLoaded, _source.bytesTotal, true);
            if (_maximum > 0 && _maximum == _value)
            {
                removeEventListener(Event.ENTER_FRAME, pollSource);
                dispatchEvent(new Event(Event.COMPLETE));
            }
            return;
        }// end function

        protected function handleProgress(event:ProgressEvent) : void
        {
            _setProgress(event.bytesLoaded, event.bytesTotal, true);
            return;
        }// end function

        protected function handleComplete(event:Event) : void
        {
            _setProgress(_maximum, _maximum, true);
            dispatchEvent(event);
            return;
        }// end function

        override protected function draw() : void
        {
            if (isInvalid(InvalidationType.STYLES))
            {
                drawTrack();
                drawBars();
                invalidate(InvalidationType.STATE, false);
                invalidate(InvalidationType.SIZE, false);
            }
            if (isInvalid(InvalidationType.STATE))
            {
                indeterminateBar.visible = _indeterminate;
                determinateBar.visible = !_indeterminate;
                invalidate(InvalidationType.DATA, false);
            }
            if (isInvalid(InvalidationType.SIZE))
            {
                drawLayout();
                invalidate(InvalidationType.DATA, false);
            }
            if (isInvalid(InvalidationType.DATA) && !_indeterminate)
            {
                drawDeterminateBar();
            }
            super.draw();
            return;
        }// end function

        protected function drawTrack() : void
        {
            var _loc_1:* = track;
            track = getDisplayObjectInstance(getStyleValue("trackSkin"));
            addChildAt(track, 0);
            if (_loc_1 != null && _loc_1 != track)
            {
                removeChild(_loc_1);
            }
            return;
        }// end function

        protected function drawBars() : void
        {
            var _loc_1:* = determinateBar;
            var _loc_2:* = indeterminateBar;
            determinateBar = getDisplayObjectInstance(getStyleValue("barSkin"));
            addChild(determinateBar);
            indeterminateBar = getDisplayObjectInstance(getStyleValue("indeterminateBar")) as UIComponent;
            indeterminateBar.setStyle("indeterminateSkin", getStyleValue("indeterminateSkin"));
            addChild(indeterminateBar);
            if (_loc_1 != null && _loc_1 != determinateBar)
            {
                removeChild(_loc_1);
            }
            if (_loc_2 != null && _loc_2 != determinateBar)
            {
                removeChild(_loc_2);
            }
            return;
        }// end function

        protected function drawDeterminateBar() : void
        {
            var _loc_1:* = percentComplete / 100;
            var _loc_2:* = Number(getStyleValue("barPadding"));
            determinateBar.width = Math.round((width - _loc_2 * 2) * _loc_1);
            determinateBar.x = _direction == ProgressBarDirection.LEFT ? (width - _loc_2 - determinateBar.width) : (_loc_2);
            return;
        }// end function

        protected function drawLayout() : void
        {
            var _loc_1:* = Number(getStyleValue("barPadding"));
            track.width = width;
            track.height = height;
            indeterminateBar.setSize(width - _loc_1 * 2, height - _loc_1 * 2);
            indeterminateBar.move(_loc_1, _loc_1);
            indeterminateBar.drawNow();
            determinateBar.height = height - _loc_1 * 2;
            determinateBar.y = _loc_1;
            return;
        }// end function

        override protected function configUI() : void
        {
            super.configUI();
            return;
        }// end function

        public static function getStyleDefinition() : Object
        {
            return defaultStyles;
        }// end function

    }
}
