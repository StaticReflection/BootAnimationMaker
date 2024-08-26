import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:bootanimation_maker/app/core/values/constants/app_info.dart';
import 'package:bootanimation_maker/app/modules/home/controller.dart';

import 'package:bootanimation_maker/app/modules/home/pages/boot_animation/page.dart';
import 'package:bootanimation_maker/app/modules/home/pages/magisk_module/page.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppInfoConstant.appName)),
      body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Obx(() => IndexedStack(
                index: controller.index.value,
                children: const [
                  BootAnimationPage(),
                  MagiskModulePage(),
                ],
              ))),
      bottomNavigationBar: Obx(() => NavigationBar(
            selectedIndex: controller.index.value,
            onDestinationSelected: (value) => controller.index.value = value,
            destinations: [
              NavigationDestination(
                  icon: const Icon(Icons.photo_outlined),
                  selectedIcon: const Icon(Icons.photo),
                  label: AppLocalizations.of(context)!.animationGeneration),
              NavigationDestination(
                  icon: const Icon(Icons.build_outlined),
                  selectedIcon: const Icon(Icons.build),
                  label: AppLocalizations.of(context)!.moduleMaker),
            ],
          )),
    );
  }
}
