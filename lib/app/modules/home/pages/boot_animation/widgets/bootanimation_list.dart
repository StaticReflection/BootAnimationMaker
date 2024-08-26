import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BootAnimationListWidget extends GetView<BootAnimationController> {
  const BootAnimationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Obx(() => ReorderableListView.builder(
          itemCount: controller.fileNameList.length,
          onReorder: _onReorder,
          itemBuilder: (context, index) {
            return Column(
              key: ValueKey(controller.fileNameList[index]),
              children: [
                if (index > 0) const SizedBox(height: 12),
                Card(
                    margin: const EdgeInsets.all(0),
                    child: ListTile(
                      title: Text(controller.fileNameList[index]),
                    ))
              ],
            );
          })),
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
