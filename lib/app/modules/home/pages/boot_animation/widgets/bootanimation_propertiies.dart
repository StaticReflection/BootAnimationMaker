import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BootanimationPropertiiesWidget extends GetView<BootAnimationController> {
  const BootanimationPropertiiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
              title: Text(
                  AppLocalizations.of(context)!.animationGeneralParameters)),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) => controller
                            .bootAnimationGeneralParameter
                            .width = int.tryParse(value),
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: AppLocalizations.of(context)!.width))),
                const SizedBox(width: 8),
                Expanded(
                    child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) => controller
                            .bootAnimationGeneralParameter
                            .height = int.tryParse(value) ?? 0,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: AppLocalizations.of(context)!.height))),
                const SizedBox(width: 8),
                Expanded(
                    child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) => controller
                            .bootAnimationGeneralParameter
                            .fps = int.tryParse(value) ?? 0,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'FPS'))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
