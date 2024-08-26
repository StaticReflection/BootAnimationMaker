import 'package:bootanimation_maker/app/data/enums/bootanimation_type.dart';
import 'package:bootanimation_maker/app/data/models/bootanimation_parameter.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BootAnimationItemWidget extends GetView<BootAnimationController> {
  final int index;
  const BootAnimationItemWidget(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(title: Text(controller.fileNameList[index])),
          const Divider(height: 1),
          ListTile(
              title: Text('${AppLocalizations.of(context)!.type} <TYPE>'),
              trailing: Obx(() => DropdownButton(
                  value: controller.bootAnimationParameter[index].type,
                  items: BootAnimationType.values
                      .map((BootAnimationType bootAnimationType) {
                    return DropdownMenuItem(
                        value: bootAnimationType,
                        child: Text(bootAnimationType.name));
                  }).toList(),
                  onChanged: (value) {
                    controller.bootAnimationParameter[index].type = value!;
                    controller.bootAnimationParameter.refresh();
                  }))),
          ListTile(
              title: Text(
                  '${AppLocalizations.of(context)!.animationPlayCount} <COUNT>'),
              trailing: SizedBox(
                  width: 32,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: BootAnimationParameter().count.toString()),
                      onChanged: (value) =>
                          controller.bootAnimationParameter[index].count =
                              int.tryParse(value) ??
                                  BootAnimationParameter().count))),
          ListTile(
              title: Text(
                  '${AppLocalizations.of(context)!.framesToDelayAfterThisPart} <PAUSE>'),
              trailing: SizedBox(
                  width: 32,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: BootAnimationParameter().pause.toString()),
                      onChanged: (value) =>
                          controller.bootAnimationParameter[index].pause =
                              int.tryParse(value) ??
                                  BootAnimationParameter().pause))),
        ],
      ),
    );
  }
}
