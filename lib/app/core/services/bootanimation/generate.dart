import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:bootanimation_maker/app/core/utils/bootanimation/bootanimation.dart';
import 'package:bootanimation_maker/app/core/values/constants/file.dart';
import 'package:bootanimation_maker/app/data/enums/bootanimation_source_type.dart';
import 'package:bootanimation_maker/app/data/models/bootanimation_general_parameter.dart';
import 'package:bootanimation_maker/app/data/models/bootanimation_parameter.dart';
import 'package:bootanimation_maker/app/core/utils/extensions/archive_extension.dart';

class BootAnimationGenerateService {
  final BootAnimationSourceTypeEnum _bootAnimationSourceType;
  final BootAnimationGeneralParameter _bootAnimationGeneralParameter;
  final List<BootAnimationParameter> _bootAnimationParameterList;
  final List<String> _filePathList;
  final String _outputPath;

  BootAnimationGenerateService(
    this._filePathList,
    this._bootAnimationSourceType,
    this._bootAnimationGeneralParameter,
    this._bootAnimationParameterList,
  ) : _outputPath =
            '${FileConstant.outputPath}/${DateTime.now().millisecondsSinceEpoch}';

  void generate() async {
    // desc.txt
    File desc = BootAnimationUtil.saveDesc(
        _outputPath,
        BootAnimationUtil.formatDesc(
          _bootAnimationGeneralParameter,
          _bootAnimationParameterList,
        ));

    // animation part
    List<Directory> parts = [];

    if (_bootAnimationSourceType == BootAnimationSourceTypeEnum.video) {
      parts = await _videoToBootAnimation();
    }

    Archive().compressToBootAnimationZip(desc, parts, _outputPath);
  }

  Future<List<Directory>> _videoToBootAnimation() async {
    List<Directory> directoryList = [];
    for (int i = 0; i < _filePathList.length; i++) {
      directoryList.add(await BootAnimationUtil.videoToBootAnimation(
        _filePathList[i],
        _bootAnimationGeneralParameter.fps!,
      ));
    }
    return directoryList;
  }
}
