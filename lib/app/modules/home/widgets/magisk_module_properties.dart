import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:bootanimation_maker/app/modules/home/controller.dart';

class MagiskModulePropertiesWidget extends GetView<HomePageController> {
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
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'id'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.id = value,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'name'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.name = value,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'version'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.version = value,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'versionCode'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => controller.magiskModuleProperties
                      .versionCode = int.tryParse(value) ?? 0,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'author'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.author = value,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'description (optional)'),
                  onChanged: (value) =>
                      controller.magiskModuleProperties.description = value,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'updateJson (optional)'),
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
