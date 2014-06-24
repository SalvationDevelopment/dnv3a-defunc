package dn_fla
{
    import __AS3__.vec.*;
    import fl.motion.*;
    import flash.display.*;
    import flash.geom.*;

    dynamic public class Keys_286 extends MovieClip
    {
        public var __id4_:MovieClip;
        public var __animFactory___id4_af1:AnimatorFactory3D;
        public var __animArray___id4_af1:Array;
        public var ____motion___id4_af1_mat3DVec__:Vector.<Number>;
        public var ____motion___id4_af1_matArray__:Array;
        public var __motion___id4_af1:MotionBase;

        public function Keys_286()
        {
            if (this.__animFactory___id4_af1 == null)
            {
                this.__animArray___id4_af1 = new Array();
                this.__motion___id4_af1 = new MotionBase();
                this.__motion___id4_af1.duration = 1;
                this.__motion___id4_af1.overrideTargetTransform();
                this.__motion___id4_af1.addPropertyArray("visible", [true]);
                this.__motion___id4_af1.addPropertyArray("cacheAsBitmap", [false]);
                this.__motion___id4_af1.addPropertyArray("blendMode", ["normal"]);
                this.__motion___id4_af1.addPropertyArray("opaqueBackground", [null]);
                this.__motion___id4_af1.is3D = true;
                motion_internal::spanStart = 0;
                this.____motion___id4_af1_matArray__ = new Array();
                this.____motion___id4_af1_mat3DVec__ = new Vector.<Number>(16);
                this.____motion___id4_af1_mat3DVec__[0] = 0.823356;
                this.____motion___id4_af1_mat3DVec__[1] = 0.542457;
                this.____motion___id4_af1_mat3DVec__[2] = -0.166807;
                this.____motion___id4_af1_mat3DVec__[3] = 0;
                this.____motion___id4_af1_mat3DVec__[4] = -0.564605;
                this.____motion___id4_af1_mat3DVec__[5] = 0.753161;
                this.____motion___id4_af1_mat3DVec__[6] = -0.337595;
                this.____motion___id4_af1_mat3DVec__[7] = 0;
                this.____motion___id4_af1_mat3DVec__[8] = -0.057499;
                this.____motion___id4_af1_mat3DVec__[9] = 0.372141;
                this.____motion___id4_af1_mat3DVec__[10] = 0.926393;
                this.____motion___id4_af1_mat3DVec__[11] = 0;
                this.____motion___id4_af1_mat3DVec__[12] = 222.365;
                this.____motion___id4_af1_mat3DVec__[13] = 88.6825;
                this.____motion___id4_af1_mat3DVec__[14] = 82.04;
                this.____motion___id4_af1_mat3DVec__[15] = 1;
                this.____motion___id4_af1_matArray__.push(new Matrix3D(this.____motion___id4_af1_mat3DVec__));
                this.__motion___id4_af1.addPropertyArray("matrix3D", this.____motion___id4_af1_matArray__);
                this.__animArray___id4_af1.push(this.__motion___id4_af1);
                this.__animFactory___id4_af1 = new AnimatorFactory3D(null, this.__animArray___id4_af1);
                this.__animFactory___id4_af1.addTargetInfo(this, "__id4_", 0, true, 0, true, null, -1);
            }
            return;
        }// end function

    }
}
