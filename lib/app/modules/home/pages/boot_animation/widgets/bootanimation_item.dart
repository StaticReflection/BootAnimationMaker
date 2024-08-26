import 'package:flutter/material.dart';

class BootAnimationItemWidget extends StatelessWidget {
  final String fileName;
  const BootAnimationItemWidget(this.fileName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(0),
        child: ListTile(
          title: Text(fileName),
        ));
  }
}
