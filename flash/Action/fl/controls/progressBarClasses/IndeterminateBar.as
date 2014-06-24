package fl.controls.progressBarClasses
{
    import fl.core.*;
    import flash.display.*;
    import flash.events.*;

    public class IndeterminateBar extends UIComponent
    {
        protected var animationCount:uint = 0;
        protected var bar:Sprite;
        protected var barMask:Sprite;
        protected var patternBmp:BitmapData;
        private static var defaultStyles:Object = {indeterminateSkin:"ProgressBar_indeterminateSkin"};

        public function IndeterminateBar()
        {
            setSize(0, 0);
            startAnimation();
            return;
        }// end function

        override public function get visible() : Boolean
        {
            return super.visible;
        }// end function

        override public function set visible(param1:Boolean) : void
        {
            if (param1)
            {
                startAnimation();
            }
            else
            {
                stopAnimation();
            }
            super.visible = param1;
            return;
        }// end function

        protected function startAnimation() : void
        {
            addEventListener(Event.ENTER_FRAME, handleEnterFrame, false, 0, true);
            return;
        }// end function

        protected function stopAnimation() : void
        {
            removeEventListener(Event.ENTER_FRAME, handleEnterFrame);
            return;
        }// end function

        protected function handleEnterFrame(event:Event) : void
        {
            if (patternBmp == null)
            {
                return;
            }
            animationCount = (animationCount + 2) % patternBmp.width;
            bar.x = -animationCount;
            return;
        }// end function

        override protected function configUI() : void
        {
            bar = new Sprite();
            addChild(bar);
            barMask = new Sprite();
            addChild(barMask);
            bar.mask = barMask;
            return;
        }// end function

        override protected function draw() : void
        {
            if (isInvalid(InvalidationType.STYLES))
            {
                drawPattern();
                invalidate(InvalidationType.SIZE, false);
            }
            if (isInvalid(InvalidationType.SIZE))
            {
                drawBar();
                drawMask();
            }
            super.draw();
            return;
        }// end function

        protected function drawPattern() : void
        {
            var _loc_1:* = getDisplayObjectInstance(getStyleValue("indeterminateSkin"));
            if (patternBmp)
            {
                patternBmp.dispose();
            }
            patternBmp = new BitmapData(_loc_1.width << 0, _loc_1.height << 0, true, 0);
            patternBmp.draw(_loc_1);
            return;
        }// end function

        protected function drawMask() : void
        {
            var _loc_1:* = barMask.graphics;
            _loc_1.clear();
            _loc_1.beginFill(0, 0);
            _loc_1.drawRect(0, 0, _width, _height);
            _loc_1.endFill();
            return;
        }// end function

        protected function drawBar() : void
        {
            if (patternBmp == null)
            {
                return;
            }
            var _loc_1:* = bar.graphics;
            _loc_1.clear();
            _loc_1.beginBitmapFill(patternBmp);
            _loc_1.drawRect(0, 0, _width + patternBmp.width, _height);
            _loc_1.endFill();
            return;
        }// end function

        public static function getStyleDefinition() : Object
        {
            return defaultStyles;
        }// end function

    }
}
