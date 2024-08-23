import 'package:bootanimation_maker/app/modules/home/binding.dart';
import 'package:bootanimation_maker/app/routes/pages.dart';
import 'package:bootanimation_maker/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      getPages: AppPages.pages,
      initialRoute: Routes.home,
      initialBinding: HomePageBinding(),
    );
  }
}
