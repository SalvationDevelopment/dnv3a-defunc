package dn_fla
{
    import __AS3__.vec.*;
    import fl.motion.*;
    import fl.transitions.*;
    import fl.transitions.easing.*;
    import flash.display.*;
    import flash.geom.*;

    dynamic public class Shuffle2_412 extends MovieClip
    {
        public var shuffle_mc:MovieClip;
        public var rect_mc:MovieClip;
        public var init:Boolean;
        public var __animFactory_shuffle_mcaf1:AnimatorFactory3D;
        public var __animArray_shuffle_mcaf1:Array;
        public var ____motion_shuffle_mcaf1_mat3DVec__:Vector.<Number>;
        public var ____motion_shuffle_mcaf1_matArray__:Array;
        public var __motion_shuffle_mcaf1:MotionBase;

        public function Shuffle2_412()
        {
            addFrameScript(0, this.frame1);
            if (this.__animFactory_shuffle_mcaf1 == null)
            {
                this.__animArray_shuffle_mcaf1 = new Array();
                this.__motion_shuffle_mcaf1 = new MotionBase();
                this.__motion_shuffle_mcaf1.duration = 1;
                this.__motion_shuffle_mcaf1.overrideTargetTransform();
                this.__motion_shuffle_mcaf1.addPropertyArray("visible", [true]);
                this.__motion_shuffle_mcaf1.addPropertyArray("cacheAsBitmap", [false]);
                this.__motion_shuffle_mcaf1.addPropertyArray("blendMode", ["normal"]);
                this.__motion_shuffle_mcaf1.addPropertyArray("opaqueBackground", [null]);
                this.__motion_shuffle_mcaf1.is3D = true;
                motion_internal::spanStart = 0;
                this.____motion_shuffle_mcaf1_matArray__ = new Array();
                this.____motion_shuffle_mcaf1_mat3DVec__ = new Vector.<Number>(16);
                this.____motion_shuffle_mcaf1_mat3DVec__[0] = -0.097414;
                this.____motion_shuffle_mcaf1_mat3DVec__[1] = 0.184768;
                this.____motion_shuffle_mcaf1_mat3DVec__[2] = -0.137373;
                this.____motion_shuffle_mcaf1_mat3DVec__[3] = 0;
                this.____motion_shuffle_mcaf1_mat3DVec__[4] = -0.226644;
                this.____motion_shuffle_mcaf1_mat3DVec__[5] = -0.103214;
                this.____motion_shuffle_mcaf1_mat3DVec__[6] = 0.021894;
                this.____motion_shuffle_mcaf1_mat3DVec__[7] = 0;
                this.____motion_shuffle_mcaf1_mat3DVec__[8] = -0.162133;
                this.____motion_shuffle_mcaf1_mat3DVec__[9] = 0.53228;
                this.____motion_shuffle_mcaf1_mat3DVec__[10] = 0.830897;
                this.____motion_shuffle_mcaf1_mat3DVec__[11] = 0;
                this.____motion_shuffle_mcaf1_mat3DVec__[12] = 361.05;
                this.____motion_shuffle_mcaf1_mat3DVec__[13] = 166.601;
                this.____motion_shuffle_mcaf1_mat3DVec__[14] = 9.22492;
                this.____motion_shuffle_mcaf1_mat3DVec__[15] = 1;
                this.____motion_shuffle_mcaf1_matArray__.push(new Matrix3D(this.____motion_shuffle_mcaf1_mat3DVec__));
                this.__motion_shuffle_mcaf1.addPropertyArray("matrix3D", this.____motion_shuffle_mcaf1_matArray__);
                this.__animArray_shuffle_mcaf1.push(this.__motion_shuffle_mcaf1);
                this.__animFactory_shuffle_mcaf1 = new AnimatorFactory3D(null, this.__animArray_shuffle_mcaf1);
                this.__animFactory_shuffle_mcaf1.addTargetInfo(this, "shuffle_mc", 0, true, 0, true, null, -1);
            }
            return;
        }// end function

        public function addTweens(param1:Function, param2:DuelMap, param3:String)
        {
            if (!this.init)
            {
                visible = false;
                this.init = true;
            }
            this.param1(this.appear, null, false);
            this.shuffle_mc.addTweens(param1, param2, param3, this.disappear1);
            this.param1(this.disappear2);
            return;
        }// end function

        public function appear(param1) : Array
        {
            visible = true;
            return [new Tween(this.rect_mc, "scaleX", Regular.easeInOut, 0, 1, 0.5, true), new Tween(this.rect_mc, "scaleY", Regular.easeInOut, 0, 1, 0.5, true)];
        }// end function

        public function disappear1(param1) : Array
        {
            return [new Tween(this.rect_mc, "scaleX", Regular.easeInOut, 1, 0, 0.5, true), new Tween(this.rect_mc, "scaleY", Regular.easeInOut, 1, 0, 0.5, true)];
        }// end function

        public function disappear2(param1) : Array
        {
            visible = false;
            return [];
        }// end function

        function frame1()
        {
            mouseEnabled = false;
            mouseChildren = false;
            if (!this.init)
            {
                visible = false;
                this.init = true;
            }
            return;
        }// end function

    }
}
