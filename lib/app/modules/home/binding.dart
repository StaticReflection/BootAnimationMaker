import 'package:bootanimation_maker/app/modules/home/controller.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:bootanimation_maker/app/modules/home/pages/magisk_module/controller.dart';
import 'package:get/get.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<BootAnimationController>(() => BootAnimationController());
    Get.lazyPut<MagiskModuleController>(() => MagiskModuleController());
  }
}
