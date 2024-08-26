import 'package:bootanimation_maker/app/data/enums/bootanimation_source_type.dart';
import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BootAnimationSourceTypeWidget extends GetView<BootAnimationController> {
  const BootAnimationSourceTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
              title: Text(AppLocalizations.of(context)!.type),
              trailing: Obx(() => DropdownButton(
                  value: controller.bootAnimationType.value,
                  items: [
                    DropdownMenuItem(
                        value: BootAnimationSourceTypeEnum.video,
                        child: Text(AppLocalizations.of(context)!.video)),
                  ],
                  onChanged: (value) =>
                      controller.bootAnimationType.value = value!))),
          const Divider(height: 1),
          ListTile(
            title: Text(AppLocalizations.of(context)!.selectFile),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => controller.selectFile(),
          ),
        ],
      ),
    );
  }
}
