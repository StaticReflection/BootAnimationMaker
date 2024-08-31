import 'dart:io';

import 'package:bootanimation_maker/app/data/models/bootanimation_general_parameter.dart';
import 'package:bootanimation_maker/app/data/models/bootanimation_parameter.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:bootanimation_maker/app/core/utils/extensions/ffmpeg_kit_extension.dart';

class BootAnimationUtil {
  static String formatDesc(
    BootAnimationGeneralParameter bootAnimationGeneralParameter,
    List<BootAnimationParameter> bootAnimationParameterList,
  ) {
    String result = '';
    // general parameters
    result += '${bootAnimationGeneralParameter.width} ';
    result += '${bootAnimationGeneralParameter.height} ';
    result += '${bootAnimationGeneralParameter.fps}\n';
    // part parameters
    for (int i = 0; i < bootAnimationParameterList.length; i++) {
      result += '${bootAnimationParameterList[i].type.name} ';
      result += '${bootAnimationParameterList[i].count} ';
      result += '${bootAnimationParameterList[i].pause} ';
      result += 'part$i\n';
    }
    return result;
  }

  static File saveDesc(String path, String desc) {
    File file = File('${Directory.systemTemp.createTempSync().path}/desc.txt');
    file.createSync(recursive: true);
    file.writeAsStringSync(desc);

    return file;
  }

  static Future<Directory> videoToBootAnimation(
    String filePath,
    int fps, {
    int thread = 8,
  }) async {
    FFmpegKitExtension.cancelAllSessions();
    Directory outputDirectory = Directory.systemTemp.createTempSync();
    String command =
        '-i $filePath -vf "fps=${fps.toString()}" -threads $thread "${outputDirectory.path}/%03d.png"';

    await FFmpegKit.execute(command);
    return outputDirectory;
  }
}
