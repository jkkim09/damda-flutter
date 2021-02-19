// import 'package:damda/index.dart';
// import 'package:damda/provider/theme_provider.dart';
// import 'package:damda/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() => runApp(Main());

// class Main extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(providers: [
//       ChangeNotifierProvider<ThemeProvider>.value(value: ThemeProvider())
//     ], child: MainWidget());
//   }
// }

// class MainWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print('test main');
//     return MaterialApp(
//       theme: ThemeData(),
//       darkTheme: ThemeData.dark(),
//       home: new SplashScreen(),
//       routes: <String, WidgetBuilder>{
//         '/HomeScreen': (BuildContext context) => new Index(),
//       },
//     );
//   }
// }

import 'package:damda/theme_mode_manager.dart';
import 'package:flutter/material.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';
import 'package:theme_mode_handler/theme_picker_dialog.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return ThemeModeHandler(
      manager: ExampleThemeModeManager(),
      builder: (ThemeMode themeMode) {
        return MaterialApp(
          themeMode: themeMode,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = ThemeModeHandler.of(context).themeMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemeModeHandler Example'),
      ),
      body: Center(
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
      ),
    );
  }

  void _selectThemeMode(BuildContext context) async {
    final newThemeMode = await showThemePickerDialog(context: context);
    print(newThemeMode);
  }
}
