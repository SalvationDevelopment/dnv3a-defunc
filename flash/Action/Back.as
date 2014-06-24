package 
{
    import flash.display.*;
    import flash.geom.*;

    public class Back extends Shape
    {

        public function Back()
        {
            var _loc_1:* = new Matrix();
            _loc_1.translate(-200, -290);
            _loc_1.scale(-1, 1);
            graphics.beginBitmapFill(new BackBitmapData(), _loc_1, false, false);
            graphics.drawRoundRect(-200, -290, 400, 580, 20);
            graphics.endFill();
            return;
        }// end function

    }
}
