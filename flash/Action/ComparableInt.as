package 
{

    public class ComparableInt extends Object
    {
        public var id:int;

        public function ComparableInt(param1:int)
        {
            this.id = param1;
            return;
        }// end function

        public function compare(param1:ComparableInt) : int
        {
            if (this.id < param1.id)
            {
                return -1;
            }
            if (this.id > param1.id)
            {
                return 1;
            }
            return 0;
        }// end function

        public function toString() : String
        {
            return "" + this.id;
        }// end function

    }
}
