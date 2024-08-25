import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class MagiskModulePropertiesWidget extends GetView<BootAnimationController> {
  const MagiskModulePropertiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
            title: Text(AppLocalizations.of(context)!.magiskModuleProperties),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Wrap(
              runSpacing: 12.0,
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText:
                          '${AppLocalizations.of(context)!.moduleID} <id>'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.id = value,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText:
                          '${AppLocalizations.of(context)!.moduleName} <name>'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.name = value,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText:
                          '${AppLocalizations.of(context)!.version} <version>'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.version = value,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText:
                          '${AppLocalizations.of(context)!.versionCode} <versionCode>'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => controller.magiskModuleProperties
                      .versionCode = int.tryParse(value) ?? 0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText:
                          '${AppLocalizations.of(context)!.author} <author>'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.author = value,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText:
                          '${AppLocalizations.of(context)!.description} <description> (${AppLocalizations.of(context)!.optional})'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.description = value,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText:
                          '${AppLocalizations.of(context)!.updateJson} <updateJson> (${AppLocalizations.of(context)!.optional})'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.updateJson = value,
                ),
                const SizedBox(height: 2.0, width: double.infinity),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
