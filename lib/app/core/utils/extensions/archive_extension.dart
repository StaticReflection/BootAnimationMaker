import 'dart:io';
import 'package:archive/archive.dart';

extension ArchiveExtension on Archive {
  void compressToBootAnimationZip(
    File desc,
    List<Directory> parts,
    String outputPath,
  ) {
    final archive = Archive();

    // desc.txt
    final descBytes = desc.readAsBytesSync();
    archive.addFile(
        ArchiveFile.noCompress('desc.txt', descBytes.length, descBytes));

    // part
    for (int i = 0; i < parts.length; i++) {
      final part = parts[i];
      for (var file in part.listSync(recursive: true)) {
        if (file is File) {
          final fileBytes = file.readAsBytesSync();
          final relativePath = file.path.replaceFirst(part.path, 'part$i');
          archive.addFile(ArchiveFile.noCompress(
            relativePath,
            fileBytes.length,
            fileBytes,
          ));
        }
      }
    }

    final zipFile = File('$outputPath/bootanimation.zip');
    zipFile.createSync(recursive: true);
    zipFile.writeAsBytesSync(ZipEncoder().encode(archive)!);
  }
}
