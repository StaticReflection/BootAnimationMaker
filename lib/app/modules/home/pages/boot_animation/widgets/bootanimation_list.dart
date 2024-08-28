import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/widgets/bootanimation_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BootAnimationListWidget extends GetView<BootAnimationController> {
  const BootAnimationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Obx(
        () => ReorderableListView.builder(
          padding: const EdgeInsets.only(bottom: 96),
          itemCount: controller.fileNameList.length,
          onReorder: _onReorder,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              key: ValueKey(controller.fileNameList[index]),
              child: BootAnimationItemWidget(index),
            );
          },
        ),
      ),
    );
  }
}

void _onReorder(int oldIndex, int newIndex) {
  final controller = Get.find<BootAnimationController>();

  if (newIndex > oldIndex) {
    newIndex -= 1;
  }
  final item = controller.fileNameList.removeAt(oldIndex);
  controller.fileNameList.insert(newIndex, item);
}
