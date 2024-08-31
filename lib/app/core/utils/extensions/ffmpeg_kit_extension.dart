import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';

extension FFmpegKitExtension on FFmpegKit {
  static void cancelAllSessions() {
    FFmpegKit.listSessions().then((sessions) {
      for (var session in sessions) {
        session.cancel();
      }
    });
  }
}
