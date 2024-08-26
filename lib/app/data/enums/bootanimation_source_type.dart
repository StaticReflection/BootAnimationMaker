import 'package:file_picker/file_picker.dart';

enum BootAnimationSourceTypeEnum {
  video(FileType.video);

  final FileType fileType;

  const BootAnimationSourceTypeEnum(this.fileType);
}
