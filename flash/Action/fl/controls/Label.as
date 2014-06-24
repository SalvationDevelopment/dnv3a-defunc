package fl.controls
{
    import fl.core.*;
    import fl.events.*;
    import flash.text.*;

    public class Label extends UIComponent
    {
        public var textField:TextField;
        protected var actualWidth:Number;
        protected var actualHeight:Number;
        protected var defaultLabel:String = "Label";
        protected var _savedHTML:String;
        protected var _html:Boolean = false;
        private static var defaultStyles:Object = {textFormat:null, embedFonts:false};

        public function Label()
        {
            text = defaultLabel;
            actualWidth = _width;
            actualHeight = _height;
            return;
        }// end function

        public function get text() : String
        {
            return textField.text;
        }// end function

        public function set text(param1:String) : void
        {
            if (param1 == text)
            {
                return;
            }
            if (componentInspectorSetting && param1 == defaultLabel)
            {
                return;
            }
            _html = false;
            textField.text = param1;
            if (textField.autoSize != TextFieldAutoSize.NONE)
            {
                invalidate(InvalidationType.SIZE);
            }
            return;
        }// end function

        public function get htmlText() : String
        {
            return textField.htmlText;
        }// end function

        public function set htmlText(param1:String) : void
        {
            if (param1 == htmlText)
            {
                return;
            }
            if (componentInspectorSetting && param1 == "")
            {
                return;
            }
            _html = true;
            _savedHTML = param1;
            textField.htmlText = param1;
            if (textField.autoSize != TextFieldAutoSize.NONE)
            {
                invalidate(InvalidationType.SIZE);
            }
            return;
        }// end function

        public function get condenseWhite() : Boolean
        {
            return textField.condenseWhite;
        }// end function

        public function set condenseWhite(param1:Boolean) : void
        {
            textField.condenseWhite = param1;
            if (textField.autoSize != TextFieldAutoSize.NONE)
            {
                invalidate(InvalidationType.SIZE);
            }
            return;
        }// end function

        public function get selectable() : Boolean
        {
            return textField.selectable;
        }// end function

        public function set selectable(param1:Boolean) : void
        {
            textField.selectable = param1;
            return;
        }// end function

        public function get wordWrap() : Boolean
        {
            return textField.wordWrap;
        }// end function

        public function set wordWrap(param1:Boolean) : void
        {
            textField.wordWrap = param1;
            if (textField.autoSize != TextFieldAutoSize.NONE)
            {
                invalidate(InvalidationType.SIZE);
            }
            return;
        }// end function

        public function get autoSize() : String
        {
            return textField.autoSize;
        }// end function

        public function set autoSize(param1:String) : void
        {
            textField.autoSize = param1;
            invalidate(InvalidationType.SIZE);
            return;
        }// end function

        override public function get width() : Number
        {
            if (textField.autoSize != TextFieldAutoSize.NONE && !wordWrap)
            {
                return _width;
            }
            return actualWidth;
        }// end function

        override public function set width(param1:Number) : void
        {
            actualWidth = param1;
            super.width = param1;
            return;
        }// end function

        override public function get height() : Number
        {
            if (textField.autoSize != TextFieldAutoSize.NONE && wordWrap)
            {
                return _height;
            }
            return actualHeight;
        }// end function

        override public function setSize(param1:Number, param2:Number) : void
        {
            actualWidth = param1;
            actualHeight = param2;
            super.setSize(param1, param2);
            return;
        }// end function

        override protected function configUI() : void
        {
            super.configUI();
            textField = new TextField();
            addChild(textField);
            textField.type = TextFieldType.DYNAMIC;
            textField.selectable = false;
            textField.wordWrap = false;
            return;
        }// end function

        override protected function draw() : void
        {
            var _loc_1:Object = null;
            if (isInvalid(InvalidationType.STYLES, InvalidationType.STATE))
            {
                drawTextFormat();
                _loc_1 = getStyleValue("embedFonts");
                if (_loc_1 != null)
                {
                    textField.embedFonts = _loc_1;
                }
                if (textField.autoSize != TextFieldAutoSize.NONE)
                {
                    invalidate(InvalidationType.SIZE, false);
                }
            }
            if (isInvalid(InvalidationType.SIZE))
            {
                drawLayout();
            }
            super.draw();
            return;
        }// end function

        protected function drawTextFormat() : void
        {
            var _loc_2:Object = null;
            var _loc_1:* = getStyleValue("textFormat") as TextFormat;
            if (_loc_1 == null)
            {
                _loc_2 = UIComponent.getStyleDefinition();
                _loc_1 = enabled ? (_loc_2.defaultTextFormat as TextFormat) : (_loc_2.defaultDisabledTextFormat as TextFormat);
            }
            textField.defaultTextFormat = _loc_1;
            textField.setTextFormat(_loc_1);
            if (_html && _savedHTML != null)
            {
                htmlText = _savedHTML;
            }
            return;
        }// end function

        protected function drawLayout() : void
        {
            var _loc_2:Number = NaN;
            var _loc_3:Number = NaN;
            var _loc_1:Boolean = false;
            textField.width = width;
            textField.height = height;
            switch(textField.autoSize)
            {
                case TextFieldAutoSize.CENTER:
                {
                    break;
                }
                case TextFieldAutoSize.LEFT:
                {
                    break;
                }
                case TextFieldAutoSize.RIGHT:
                {
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (_loc_1)
            {
                dispatchEvent(new ComponentEvent(ComponentEvent.RESIZE, true));
            }
            return;
        }// end function

        public static function getStyleDefinition() : Object
        {
            return defaultStyles;
        }// end function

    }
}
