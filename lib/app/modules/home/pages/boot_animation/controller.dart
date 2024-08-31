import 'package:bootanimation_maker/app/core/services/bootanimation/generate.dart';
import 'package:bootanimation_maker/app/data/enums/bootanimation_source_type.dart';
import 'package:bootanimation_maker/app/data/models/bootanimation_general_parameter.dart';
import 'package:bootanimation_maker/app/data/models/bootanimation_parameter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class BootAnimationController extends GetxController {
  Rx<BootAnimationSourceTypeEnum> bootAnimationType =
      BootAnimationSourceTypeEnum.video.obs;
  RxList<String> fileNameList = <String>[].obs;
  List<String> filePathList = [];

  BootAnimationGeneralParameter bootAnimationGeneralParameter =
      BootAnimationGeneralParameter();
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

  void generate() async {
    // 未选择文件
    if (fileNameList.isEmpty) {
    }
    // 动画通用参数未填写完整
    else if (bootAnimationGeneralParameter.width == null ||
        bootAnimationGeneralParameter.height == null ||
        bootAnimationGeneralParameter.fps == null) {
    } else {
      BootAnimationGenerateService bootAnimationGenerateService =
          BootAnimationGenerateService(
        filePathList,
        bootAnimationType.value,
        bootAnimationGeneralParameter,
        bootAnimationParameter,
      );
      bootAnimationGenerateService.generate();
    }
  }
}
