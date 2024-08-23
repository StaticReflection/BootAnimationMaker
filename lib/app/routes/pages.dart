import 'package:bootanimation_maker/app/modules/home/binding.dart';
import 'package:bootanimation_maker/app/modules/home/page.dart';
import 'package:bootanimation_maker/app/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomePageBinding()),
  ];
}
