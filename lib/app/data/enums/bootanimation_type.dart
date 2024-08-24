enum BootanimationTypeEnum {
  video([
    'mp4',
    'avi',
    'mkv',
    'mov',
    'flv',
    'wmv',
    'webm',
    'ts',
    'ps',
    '3gp',
    'ogg',
  ]);

  final List<String> fileType;

  const BootanimationTypeEnum(this.fileType);
}
