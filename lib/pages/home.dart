import 'package:flutter/material.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';
import 'package:theme_mode_handler/theme_picker_dialog.dart';

class HomePage extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<HomePage> {
  void _selectThemeMode(BuildContext context) async {
    final newThemeMode = await showThemePickerDialog(context: context);
    print(newThemeMode);
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ThemeModeHandler.of(context).themeMode;

    return Center(
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(50),
        child: Card(
          child: ListTile(
            onTap: () => _selectThemeMode(context),
            title: Text(themeMode.toString()),
            subtitle: const Text('Tap to select another'),
            trailing: const Icon(Icons.settings),
          ),
        ),
      ),
    );
  }
}
