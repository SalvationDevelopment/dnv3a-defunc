package dn_fla
{
    import flash.display.*;

    dynamic public class Seal_401 extends MovieClip
    {
        public var seal_circle:Sprite;

        public function Seal_401()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setCircle()
        {
            this.seal_circle = new Sprite();
            var _loc_1:* = this.seal_circle.graphics;
            _loc_1.beginFill(0, 0);
            _loc_1.drawEllipse(-260, -259, 522, 519);
            _loc_1.endFill();
            addChild(this.seal_circle);
            return;
        }// end function

        public function get circle() : Sprite
        {
            if (this.seal_circle == null)
            {
                this.setCircle();
            }
            return this.seal_circle;
        }// end function

        public function set scale(param1:Number)
        {
            scaleX = param1;
            scaleY = param1;
            return;
        }// end function

        function frame1()
        {
            if (this.seal_circle == null)
            {
                this.setCircle();
            }
            return;
        }// end function

    }
}
