import 'package:file_picker/file_picker.dart';

enum BootAnimationTypeEnum {
  video(FileType.video);

  final FileType fileType;

  const BootAnimationTypeEnum(this.fileType);
}
