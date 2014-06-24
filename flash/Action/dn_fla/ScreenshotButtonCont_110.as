package dn_fla
{
    import com.adobe.crypto.*;
    import com.adobe.images.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.media.*;
    import flash.net.*;
    import flash.utils.*;

    dynamic public class ScreenshotButtonCont_110 extends MovieClip
    {
        public var screenshot_btn:SimpleButton;
        public var camera_glow_mc:MovieClip;
        public var camera_flash_mc:MovieClip;
        public var username:String;
        public var screenshot_loader:URLLoader;
        public var keys:Array;

        public function ScreenshotButtonCont_110()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function screenshotE(event:MouseEvent)
        {
            this.screenshot_btn.visible = false;
            this.camera_flash_mc.visible = true;
            this.camera_glow_mc.visible = true;
            var _loc_2:* = loaderInfo.width;
            var _loc_3:* = loaderInfo.height;
            var _loc_4:* = new BitmapData(_loc_2, _loc_3);
            new BitmapData(_loc_2, _loc_3).draw(stage, null, null, null, new Rectangle(0, 0, _loc_2, _loc_3));
            var _loc_5:* = PNGEncoder.encode(_loc_4);
            var _loc_6:* = this.getKey();
            var _loc_7:String = "Dueling Network Screenshot";
            var _loc_8:* = this.username + "\n" + new Date() + "\n" + _loc_5.length + "\n" + SHA1.hash(SHA1.hashBytes(_loc_5) + this.username);
            var _loc_9:* = new URLRequest("http://api.imgur.com/2/upload.xml?key=" + _loc_6 + "&title=" + escape(_loc_7) + "&caption=" + escape(_loc_8));
            new URLRequest("http://api.imgur.com/2/upload.xml?key=" + _loc_6 + "&title=" + escape(_loc_7) + "&caption=" + escape(_loc_8)).contentType = "application/octet-stream";
            _loc_9.method = URLRequestMethod.POST;
            _loc_9.data = _loc_5;
            this.screenshot_loader = new URLLoader();
            this.screenshot_loader.dataFormat = URLLoaderDataFormat.BINARY;
            this.screenshot_loader.addEventListener(Event.COMPLETE, this.screenshotComplete);
            this.screenshot_loader.addEventListener(IOErrorEvent.IO_ERROR, this.screenshotError);
            this.screenshot_loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.screenshotError);
            this.screenshot_loader.load(_loc_9);
            var _loc_10:* = new CameraSound();
            new CameraSound().play();
            return;
        }// end function

        public function screenshotComplete(event:Event)
        {
            this.screenshot_btn.visible = true;
            this.camera_flash_mc.visible = false;
            this.camera_glow_mc.visible = false;
            var _loc_2:* = this.screenshot_loader.data;
            var _loc_3:* = _loc_2.indexOf("<original>");
            if (_loc_3 < 0)
            {
                this.screenshotError();
                return;
            }
            _loc_3 = _loc_3 + 10;
            var _loc_4:* = _loc_2.indexOf("</original>", _loc_3);
            if (_loc_3 < 0)
            {
                this.screenshotError();
                return;
            }
            var _loc_5:* = _loc_2.substring(_loc_3, _loc_4);
            navigateToURL(new URLRequest(_loc_5), "_blank");
            return;
        }// end function

        public function screenshotError(event:IOErrorEvent = null)
        {
            this.screenshot_btn.visible = true;
            this.camera_flash_mc.visible = false;
            this.camera_glow_mc.visible = false;
            return;
        }// end function

        public function getKey() : String
        {
            var _loc_1:* = Math.floor(Math.random() * this.keys.length);
            return this.keys[_loc_1];
        }// end function

        function frame1()
        {
            this.screenshot_btn.tabEnabled = false;
            this.screenshot_btn.addEventListener(MouseEvent.CLICK, this.screenshotE);
            this.camera_glow_mc.visible = false;
            this.keys = ["1e7597bca61386196f05ac7fae232498", "663a18ecae2b06540919b74079f79872", "4b3461b8e1fd786d9d9062e0db0e7b40", "a1df32485a1bfc743d10917d6100b51a", "14c8e114016962452eca480b5707a8e2", "200160d681107c9796f93397db02908d", "0695327ed31af89c99406548756fb49e", "9ed9f769a5d38581538efc5611f6a3e8", "3375a671996c3f22407203241d899f4f", "075d7419e4b1facb10d14a9f2d3c2052", "358746cdd59ba844785cb214d12954bf", "4dfbd3dc6dd58b91820b5a31174b54fa", "d5f432c2242a870c5c87d6fa876cb54c", "4629872420bc06a3341df31eb28bba87", "3b72ad5c89e45e6e26763fb28851bc07", "314201709eb2ddc67af2a81b229d6608", "24e7dc33e7cd7b7c4581a280475b37cc", "674a00065ab78cf4d3f47365f6f0b3fd", "2f77923596a0980e4de746ceafff9269", "4d568d9f9b95dc4f64019b78ad2c4826", "478a97f8c502a56d9936f75f894bf937", "b6915e5aea02096070fe282c36646536", "511b77399492eedaa8f43df6bc42529f", "1b1bed1bd5ad8e36cce1bd4fee5248ba", "e796e9f2e96fb6e3ebbc3d89792cd63f", "f555933a5b15189555134fa8f20da68a", "86b0ba414d680ef7f87b1c300bcae067", "77919dd4c76304aa4dd40ee481bd9016", "d317e0d863bb58a97f54808a9b9027f9", "c17120f4c06e982d12145f12da4f864b", "3eec72b2487ab3725ad5d7ad4bd0749c", "7ccd7af06840dbd6e8a334c8322a9014", "9ac68f6b669b9ac3c1e85a60ff3d212a", "f7f9cb41852a0ce176b55d1b3657f5a2", "99d891231a40a7504c2cc496de629b35", "bd25ec330e0a710b4123fd5c2d039823", "e43924d84d5477ff6041d62ed9dd37bb", "fbd2010a85af1e883f9409151c6765dd", "51e4d948d41224d957d541d49315e6ef", "8ceefe6824ac2236f95d3d285e6210ca", "1a17a0e72d1c75a97ab8fb1d1324099a", "152077d82480a992383eae161f67f441", "bb8e5ab8c92756d60dfdefa4d80b8028", "7be4dfd05dbf1d0f83065d347645d1e9", "4099655a305b4997d21ea5287128370f", "8d0081fca4ff2634b73660967c072e6e", "d5c30bc45a40e2cc1bebe25b05f372e0", "178d46907d7df09e8319398c1d3b61f0", "48e7ffb69c0aedd6675799b49cbed58e", "4d11adf3893b2707f504b88ac93fdcd2", "404a137f0a0e5c7cc0dbd1cc91bb7899", "cac900f0deeb8801886b17778fabb732", "058bf6183590f84152bed0359a7b818c", "11b3f4a284fb03603e07cb2ae3513c15", "9807d33b51109fbc275aabd68f1b7eb2", "fa97634b9d1f9a13e47139c5e329b2ed", "21c813cee38a0cf06bbfa41e7275d4f3", "9dc5c3e37e2062b3f737d5e1c222fd69", "d18ac811411688aef62a77b36d4987c2", "060a94db7418e83194770e4327dd4044", "a4b5fa4c96928bdf3dcace695ba9d9ff", "3245c1216e5d69c987bc1b6b644109f4", "6c861ee2299b5840ce4b2d5b3d4e6a72", "459dff9262f020cc2063e1c97d14bbf7", "c4cae8a0b8ad7d9ecb816a6f4f0058cd", "75947a36fcd605c4d2c2e5eb21c63505", "e74d8f2eae9ceca7e05fab82bbf46bd0", "0d08dc6fe8c67e6a4ca3a5fcc6800fed", "17cceead2beb963e38db29047e534bbf", "4198a380fd6fb735298cc1cdf5d3ac2a", "fceb77565dc091c00ee340f3c6190480", "d9c408f0e47868d5f5ae6bba6106990c", "b825eaab65786f588d8cb9e7b04612a4", "459cbcfa961ba39efcedbe59518835ba", "8adc6c027da331fcd7ce99bbaae282ad", "e4bd29138dce8f0fc3fc74d19529480d", "2c2d1484056b5334cb7f2978586a867a", "f05be0617a6bf365947382fae0fd7495", "ac4d81dabcdbf81bed1aea42c1d3a0bc", "21caa4cf05fa4152470a524e797bfd4d", "c0beef8da247adb9a3a20e7bfdfbf6f8", "59e33d4e6b8638fd394669ee7427660a", "80487bb12905355e4a6f58b60918582c", "b7bd7a4126c71295cf9ec4697c89f562", "a38713206f603ca5f9f198f3963d51da", "cdc811b10cd7b9837f7627b9c2fe8898", "80749aaf9b03f853e9cdf689067255b3", "ac2364e262ecaa41c8e15d012f77d502", "b94ea702383b53e746dfad17a911268f", "63b52ea89722d335cafed75977fbf96d", "3ceef005dad3e1295290efee3f668277", "f0fd77386681a39301f37aca51e85b61", "a17935710e57837b4edbc2246cbfdd72", "5ce298c2d374a092f70498ac8a096ec0", "c833c45fa4151a37550919fdf203449e", "2e78ad9b73a0f5f53ea315202b60b0e3", "b0ef3fb6cc9b26d581ae544ed44adc59", "268d294523e3f3e4ffbea5d887280311", "deb85bd2de228281e68ace848a0507e3", "9212ab1e15a5c44fa80fcf59d79f6092", "ecfb4b84ecf23fd0d4e56d4f84c2a0ce", "23d09fa7173e7fb135dc5820ca18532b", "4ce04148dcb7808cd95ace84f1553cf7", "8798fc675ab3e22152decddda0ee896d", "e7ee6094142ea864aa237c15a2ae963f", "c27955fb462a2c0189d6889cbde6af47", "1b8231237ea45561d4ef8567c9e3da64", "6931beb2a9280d99faa0d67b73dc81cb", "fa482d54b3e4b2c45844f5573486d47b", "8bce63b59060e98da28a1b391918ae2a", "9a16c8a4ab4bc5e8200e4b15728d69d0"];
            return;
        }// end function

    }
}
