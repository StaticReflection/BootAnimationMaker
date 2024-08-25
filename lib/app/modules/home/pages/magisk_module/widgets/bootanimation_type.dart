import 'package:bootanimation_maker/app/data/enums/bootanimation_type.dart';
import 'package:bootanimation_maker/app/modules/home/pages/magisk_module/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BootAnimationTypeWidget extends GetView<MagiskModuleController> {
  const BootAnimationTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
              title: Text(AppLocalizations.of(context)!.type),
              trailing: Obx(() => DropdownButton(
                  value: controller.bootanimationType.value,
                  items: [
                    DropdownMenuItem(
                        value: BootAnimationTypeEnum.video,
                        child: Text(AppLocalizations.of(context)!.video)),
                  ],
                  onChanged: (value) =>
                      controller.bootanimationType.value = value!))),
          Obx(
            () => ListTile(
              title: Text(AppLocalizations.of(context)!.selectFile),
              subtitle: controller.fileName.value == ''
                  ? null
                  : Text(controller.fileName.value),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => controller.selectFile(),
            ),
          ),
        ],
      ),
    );
  }
}
