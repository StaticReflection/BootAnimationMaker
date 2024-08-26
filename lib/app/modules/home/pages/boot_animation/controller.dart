import 'package:bootanimation_maker/app/data/enums/bootanimation_type.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class BootAnimationController extends GetxController {
  Rx<BootAnimationTypeEnum> bootAnimationType = BootAnimationTypeEnum.video.obs;
  RxString fileNameList = ''.obs;
  List<String> filePathList = [];

  void selectFile() {
    FilePicker.platform
        .pickFiles(
      type: FileType.custom,
      allowedExtensions: bootAnimationType.value.fileType,
      allowMultiple: true,
    )
        .then((result) {
      if (result != null) {
        filePathList = result.paths.map((path) => path!).toList();
        fileNameList.value = result.names
            .map((name) => name!)
            .toList()
            .toString()
            .replaceAll(RegExp(r'[\[\]]'), '');
      }
    });
  }
}
