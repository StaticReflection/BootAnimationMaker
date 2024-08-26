import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/widgets/bootanimation_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BootAnimationPage extends GetView<BootAnimationController> {
  const BootAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BootAnimationTypeWidget();
  }
}
