import 'package:bootanimation_maker/app/data/enums/bootanimation_source_type.dart';
import 'package:bootanimation_maker/app/data/models/bootanimation_parameter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class BootAnimationController extends GetxController {
  Rx<BootAnimationSourceTypeEnum> bootAnimationType =
      BootAnimationSourceTypeEnum.video.obs;
  RxList<String> fileNameList = <String>[].obs;
  List<String> filePathList = [];

  RxInt bootAnimationWidth = 0.obs;
  RxInt bootAnimationHeight = 0.obs;
  RxInt bootAnimationFPS = 0.obs;

  RxList<BootAnimationParameter> bootAnimationParameter =
      <BootAnimationParameter>[].obs;

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
        bootAnimationParameter.value = List.generate(
            filePathList.length, (value) => BootAnimationParameter());
      }
    });
  }
}
