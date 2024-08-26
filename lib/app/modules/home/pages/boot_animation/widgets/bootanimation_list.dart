import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/widgets/bootanimation_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BootAnimationListWidget extends GetView<BootAnimationController> {
  const BootAnimationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        // height: 1000,
        child: Obx(() => ReorderableListView.builder(
            itemCount: controller.fileNameList.length,
            onReorder: _onReorder,
            itemBuilder: (context, index) {
              return Column(
                key: ValueKey(controller.fileNameList[index]),
                children: [
                  if (index > 0) const SizedBox(height: 12),
                  BootAnimationItemWidget(index)
                ],
              );
            })));
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
