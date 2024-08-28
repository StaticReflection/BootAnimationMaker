import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/widgets/bootanimation_list.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/widgets/bootanimation_propertiies.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/widgets/bootanimation_source_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BootAnimationPage extends GetView<BootAnimationController> {
  const BootAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Expanded(
    //     child: Column(
    //   children: [
    //     BootAnimationSourceTypeWidget(),
    //     SizedBox(height: 12),
    //     BootanimationPropertiiesWidget(),
    //     SizedBox(height: 12),
    //     BootAnimationListWidget(),
    //   ],
    // ));
    return Scaffold(
      body: const Column(
        children: [
          BootAnimationSourceTypeWidget(),
          SizedBox(height: 12),
          BootanimationPropertiiesWidget(),
          SizedBox(height: 12),
          BootAnimationListWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
