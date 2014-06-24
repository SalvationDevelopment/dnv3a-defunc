package dn_fla
{
    import fl.containers.*;
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;

    dynamic public class BackPreview_271 extends MovieClip
    {
        public var progress_mc:ProgressBar;
        public var uiloader_mc:UILoader;
        public var bitmap0:Bitmap;
        public var bitmap1:Bitmap;
        public var bitmap2:Bitmap;

        public function BackPreview_271()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_uiloader_mc_BackPreview_Layer1_0();
            this.__setProp_progress_mc_BackPreview_Layer1_0();
            return;
        }// end function

        public function setPicture(param1:String)
        {
            this.uiloader_mc.source = param1;
            this.bitmap0.visible = false;
            this.bitmap1.visible = false;
            this.bitmap2.visible = false;
            this.progress_mc.visible = true;
            return;
        }// end function

        public function useBitmapData(param1:BitmapData)
        {
            this.uiloader_mc.source = null;
            this.bitmap0.visible = true;
            this.bitmap1.visible = true;
            this.bitmap2.visible = true;
            this.progress_mc.visible = false;
            this.bitmap0.bitmapData = param1;
            this.bitmap1.bitmapData = param1;
            this.bitmap2.bitmapData = param1;
            return;
        }// end function

        public function setColor1(param1:int)
        {
            var _loc_2:* = param1 >> 16;
            var _loc_3:* = param1 >> 8 & 255;
            var _loc_4:* = param1 & 255;
            var _loc_5:* = new ColorTransform(0, 0, 0, 1, _loc_2, _loc_3, _loc_4, 0);
            this.bitmap1.transform.colorTransform = _loc_5;
            return;
        }// end function

        public function setColor2(param1:int)
        {
            var _loc_2:* = param1 >> 16;
            var _loc_3:* = param1 >> 8 & 255;
            var _loc_4:* = param1 & 255;
            var _loc_5:* = new ColorTransform(0, 0, 0, 1, _loc_2, _loc_3, _loc_4, 0);
            this.bitmap2.transform.colorTransform = _loc_5;
            return;
        }// end function

        public function pictLoadedE(event:Event)
        {
            var _loc_2:BitmapData = null;
            this.bitmap1.visible = true;
            this.bitmap2.visible = true;
            this.progress_mc.visible = false;
            _loc_2 = Bitmap(this.uiloader_mc.content).bitmapData;
            this.bitmap1.bitmapData = _loc_2;
            this.bitmap2.bitmapData = _loc_2;
            return;
        }// end function

        function __setProp_uiloader_mc_BackPreview_Layer1_0()
        {
            try
            {
                this.uiloader_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.uiloader_mc.autoLoad = true;
            this.uiloader_mc.enabled = true;
            this.uiloader_mc.maintainAspectRatio = false;
            this.uiloader_mc.scaleContent = false;
            this.uiloader_mc.source = "";
            this.uiloader_mc.visible = true;
            try
            {
                this.uiloader_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function __setProp_progress_mc_BackPreview_Layer1_0()
        {
            try
            {
                this.progress_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            this.progress_mc.direction = "right";
            this.progress_mc.enabled = true;
            this.progress_mc.mode = "event";
            this.progress_mc.sourceName = "uiloader_mc";
            this.progress_mc.visible = false;
            try
            {
                this.progress_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.bitmap0 = new Bitmap();
            addChildAt(this.bitmap0, getChildIndex(this.progress_mc));
            this.bitmap1 = new Bitmap();
            this.bitmap1.y = -580;
            addChildAt(this.bitmap1, getChildIndex(this.progress_mc));
            this.bitmap2 = new Bitmap();
            this.bitmap2.y = -1160;
            addChildAt(this.bitmap2, getChildIndex(this.progress_mc));
            this.uiloader_mc.addEventListener(Event.COMPLETE, this.pictLoadedE);
            return;
        }// end function

    }
}
