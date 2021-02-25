import 'package:flutter/material.dart';
import 'package:damda/index.dart';
import 'package:damda/provs/count_provider.dart';
import 'package:damda/screens/splash_screen.dart';
import 'package:damda/provs/theme_mode_manager.dart';
import 'package:provider/provider.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<CountProvider>.value(value: CountProvider(0))
    ], child: _Main());
  }
}

class _Main extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<_Main> {
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
            home: new SplashScreen(),
            routes: <String, WidgetBuilder>{
              '/HomeScreen': (BuildContext context) => IndexScreen()
            });
      },
    );
  }
}
