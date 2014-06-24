package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;

    public class DragManager extends Object
    {
        private static var dragged_object:Sprite = null;
        private static var drag_point:Sprite = null;
        private static var drop_callback:Function = null;
        private static var drags:Dictionary = new Dictionary(true);
        private static var drops:Dictionary = new Dictionary(true);
        private static var is_dragging:Boolean;
        private static var backup_x:Number;
        private static var backup_y:Number;

        public function DragManager()
        {
            return;
        }// end function

        public static function enableDragging(param1:Sprite, param2:Function, param3:Function)
        {
            param1.addEventListener(MouseEvent.MOUSE_DOWN, dragE);
            drags[param1] = param2;
            drops[param1] = param3;
            return;
        }// end function

        public static function disableDragging(param1:Sprite)
        {
            param1.removeEventListener(MouseEvent.MOUSE_DOWN, dragE);
            delete drags[param1];
            delete drops[param1];
            return;
        }// end function

        public static function draggedObject() : Sprite
        {
            return dragged_object;
        }// end function

        private static function dragE(event:MouseEvent)
        {
            var _loc_5:Array = null;
            if (dragged_object != null)
            {
                return;
            }
            var _loc_2:* = Sprite(event.currentTarget);
            var _loc_3:* = drags[_loc_2];
            if (_loc_3 == null)
            {
                return;
            }
            var _loc_4:* = DragManager._loc_3(_loc_2);
            if (DragManager._loc_3(_loc_2) == null)
            {
                return;
            }
            if (_loc_4 is Sprite)
            {
                dragged_object = Sprite(_loc_4);
                is_dragging = true;
            }
            else if (_loc_4 is Array)
            {
                _loc_5 = _loc_4 as Array;
                if (_loc_5.length != 2)
                {
                    return;
                }
                if (!(_loc_5[0] is Sprite))
                {
                    return;
                }
                if (!(_loc_5[1] is Boolean))
                {
                    return;
                }
                dragged_object = Sprite(_loc_5[0]);
                is_dragging = Boolean(_loc_5[1]);
            }
            else
            {
                return;
            }
            drag_point = _loc_2;
            drop_callback = drops[_loc_2];
            if (is_dragging)
            {
                dragged_object.startDrag();
            }
            dragged_object.stage.addEventListener(MouseEvent.MOUSE_UP, dropE);
            dragged_object.stage.addEventListener(MouseEvent.MOUSE_MOVE, backupDraggedPosition);
            backupDraggedPosition();
            dragged_object.addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageE);
            return;
        }// end function

        private static function dropE(event:MouseEvent)
        {
            if (dragged_object == null)
            {
                return;
            }
            dragged_object.stage.removeEventListener(MouseEvent.MOUSE_UP, dropE);
            dragged_object.stage.removeEventListener(MouseEvent.MOUSE_MOVE, backupDraggedPosition);
            dragged_object.removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageE);
            if (is_dragging)
            {
                dragged_object.stopDrag();
                restoreDraggedPosition();
            }
            var _loc_2:* = drag_point;
            dragged_object = null;
            drag_point = null;
            var _loc_3:* = drop_callback;
            drop_callback = null;
            if (_loc_3 == null)
            {
                return;
            }
            DragManager._loc_3(_loc_2, event);
            return;
        }// end function

        private static function backupDraggedPosition(event:MouseEvent = null)
        {
            backup_x = dragged_object.x;
            backup_y = dragged_object.y;
            return;
        }// end function

        private static function restoreDraggedPosition(event:Event = null)
        {
            dragged_object.x = backup_x;
            dragged_object.y = backup_y;
            return;
        }// end function

        private static function removedFromStageE(event:Event)
        {
            if (dragged_object == null)
            {
                return;
            }
            dragged_object.stage.removeEventListener(MouseEvent.MOUSE_UP, dropE);
            dragged_object.stage.removeEventListener(MouseEvent.MOUSE_MOVE, backupDraggedPosition);
            dragged_object.removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageE);
            if (is_dragging)
            {
                dragged_object.stopDrag();
                restoreDraggedPosition();
            }
            dragged_object = null;
            drag_point = null;
            drop_callback = null;
            return;
        }// end function

    }
}
