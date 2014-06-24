package 
{

    public class MapEntry extends Object
    {
        public var card:DuelCard;
        public var before:MapEntry;
        public var after:MapEntry;

        public function MapEntry(param1:DuelCard)
        {
            this.card = param1;
            return;
        }// end function

        public function link(param1:MapEntry, param2:MapEntry)
        {
            this.before = param1;
            this.after = param2;
            param1.after = this;
            param2.before = this;
            return;
        }// end function

        public function unlink()
        {
            this.before.after = this.after;
            this.after.before = this.before;
            return;
        }// end function

    }
}
