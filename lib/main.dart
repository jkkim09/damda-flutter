import 'package:damda/index.dart';
import 'package:damda/provider/theme_provider.dart';
import 'package:damda/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ThemeProvider>.value(value: ThemeProvider())
    ], child: MainWidget());
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('test main');
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new Index(),
      },
    );
  }
}
