import 'package:bootanimation_maker/app/data/enums/bootanimation_type.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class BootAnimationController extends GetxController {
  Rx<BootAnimationTypeEnum> bootAnimationType = BootAnimationTypeEnum.video.obs;
  RxList<String> fileNameList = <String>[].obs;
  List<String> filePathList = [];

  RxInt bootAnimationWidth = 0.obs;
  RxInt bootAnimationHeight = 0.obs;
  RxInt bootAnimationFPS = 0.obs;

  void selectFile() {
    FilePicker.platform
        .pickFiles(
      type: bootAnimationType.value.fileType,
      allowMultiple: true,
    )
        .then((result) {
      if (result != null) {
        filePathList = result.paths.map((path) => path!).toList();
        fileNameList.value = result.names.map((name) => name!).toList();
      }
    });
  }
}
