import 'package:bootanimation_maker/app/data/enums/bootanimation_type.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class BootAnimationController extends GetxController {
  Rx<BootAnimationTypeEnum> bootAnimationType = BootAnimationTypeEnum.video.obs;
  RxString fileName = ''.obs;
  String? filePath;

  void selectFile() {
    FilePicker.platform
        .pickFiles(
            type: FileType.custom,
            allowedExtensions: bootAnimationType.value.fileType)
        .then((result) {
      if (result != null) {
        filePath = result.files.single.path!;
        fileName.value = result.files.single.name;
      }
    });
  }
}
