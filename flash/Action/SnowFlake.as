package 
{
    import flash.display.*;

    dynamic public class SnowFlake extends MovieClip
    {

        public function SnowFlake()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        function frame1()
        {
            rotation = Math.random() * 360;
            return;
        }// end function

    }
}
