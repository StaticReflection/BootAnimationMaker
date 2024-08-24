import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MagiskModulePropertiesWidget extends StatelessWidget {
  const MagiskModulePropertiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
            title: Text(AppLocalizations.of(context)!.magiskModuleProperties),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Wrap(
              runSpacing: 12.0,
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'id'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'name'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'version'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'versionCode'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'author'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'description (optional)'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'updateJson (optional)'),
                ),
                SizedBox(height: 2.0, width: double.infinity),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
