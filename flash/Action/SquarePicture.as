package 
{
    import fl.containers.*;
    import fl.controls.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;

    dynamic public class SquarePicture extends MovieClip
    {
        public var progress_mc:ProgressBar;
        public var uiloader_mc:UILoader;
        public var uiloader_source:String;
        public var uiloader_loading:Boolean;
        public var bitmap:Bitmap;
        public var load_pict_url:String;
        public var load_bytes:ByteArray;

        public function SquarePicture()
        {
            addFrameScript(0, this.frame1);
            this.__setProp_progress_mc_SquarePicture_Layer1_0();
            this.__setProp_uiloader_mc_SquarePicture_Layer1_0();
            return;
        }// end function

        public function setPicture(param1:String)
        {
            this.removeBitmap();
            if (param1 == null || param1 == "")
            {
                this.uiloader_mc.visible = false;
                this.progress_mc.visible = false;
                return;
            }
            this.loadPicture(param1);
            return;
        }// end function

        public function loadPicture(param1)
        {
            if (this.uiloader_source == param1)
            {
                this.uiloader_mc.visible = true;
                this.progress_mc.visible = this.uiloader_loading;
                return;
            }
            var _loc_2:* = param1;
            this.uiloader_source = param1;
            this.uiloader_mc.source = _loc_2;
            this.uiloader_mc.visible = true;
            var _loc_2:Boolean = true;
            this.uiloader_loading = true;
            this.progress_mc.visible = _loc_2;
            return;
        }// end function

        public function copyPicture(param1:SquarePicture)
        {
            this.uiloader_mc.visible = false;
            this.progress_mc.visible = false;
            this.removeBitmap();
            if (param1.uiloader_mc.visible)
            {
                if (param1.uiloader_loading)
                {
                    if (param1.load_pict_url == null)
                    {
                        this.loadPicture(param1.uiloader_source);
                        return;
                    }
                    this.loadBytes(param1.load_pict_url, param1.load_bytes);
                    return;
                }
                else
                {
                    this.bitmap = new Bitmap(Bitmap(param1.uiloader_mc.content).bitmapData, "auto", true);
                }
            }
            else if (param1.bitmap != null)
            {
                this.bitmap = new Bitmap(param1.bitmap.bitmapData, "auto", true);
            }
            else
            {
                return;
            }
            this.bitmap.width = this.uiloader_mc.width;
            this.bitmap.height = this.uiloader_mc.height;
            addChild(this.bitmap);
            return;
        }// end function

        public function useBitmapData(param1:BitmapData)
        {
            this.uiloader_mc.visible = false;
            this.progress_mc.visible = false;
            this.removeBitmap();
            this.bitmap = new Bitmap(param1, "auto", true);
            this.bitmap.width = this.uiloader_mc.width;
            this.bitmap.height = this.uiloader_mc.height;
            addChild(this.bitmap);
            return;
        }// end function

        public function loadTokenPicture()
        {
            this.uiloader_mc.visible = false;
            this.progress_mc.visible = false;
            this.removeBitmap();
            this.bitmap = new Bitmap(new TokenBitmap(), "auto", true);
            this.bitmap.width = this.uiloader_mc.width;
            this.bitmap.height = this.uiloader_mc.height;
            addChild(this.bitmap);
            return;
        }// end function

        public function loadBytes(param1:String, param2:ByteArray)
        {
            this.removeBitmap();
            var _loc_3:* = param1;
            this.load_pict_url = param1;
            this.uiloader_source = _loc_3;
            this.uiloader_mc.source = null;
            this.uiloader_loading = true;
            this.progress_mc.visible = false;
            var _loc_3:* = param2;
            this.load_bytes = param2;
            this.uiloader_mc.loadBytes(_loc_3);
            this.uiloader_mc.visible = true;
            return;
        }// end function

        public function removeBitmap()
        {
            if (this.bitmap == null)
            {
                return;
            }
            removeChild(this.bitmap);
            this.bitmap = null;
            return;
        }// end function

        public function pictLoadedE(event:Event)
        {
            var _loc_2:Boolean = false;
            this.uiloader_loading = false;
            this.progress_mc.visible = _loc_2;
            if (event.currentTarget.content is Bitmap)
            {
                Bitmap(event.currentTarget.content).smoothing = true;
            }
            return;
        }// end function

        function __setProp_progress_mc_SquarePicture_Layer1_0()
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

        function __setProp_uiloader_mc_SquarePicture_Layer1_0()
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
            this.uiloader_mc.scaleContent = true;
            this.uiloader_mc.source = "";
            this.uiloader_mc.visible = false;
            try
            {
                this.uiloader_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }// end function

        function frame1()
        {
            this.uiloader_mc.addEventListener(Event.COMPLETE, this.pictLoadedE);
            return;
        }// end function

    }
}
