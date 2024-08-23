import 'package:bootanimation_maker/app/core/values/constants/app_info.dart';
import 'package:bootanimation_maker/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppInfoConstant.appName)),
    );
  }
}
