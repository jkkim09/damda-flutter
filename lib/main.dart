import 'package:damda/home_page.dart';
import 'package:damda/provider/count_provider.dart';
import 'package:damda/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) {
              return CountProvider(0);
            },
          )
        ],
        child: MaterialApp(
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          home: new SplashScreen(),
          routes: <String, WidgetBuilder>{
            '/HomeScreen': (BuildContext context) => new HomePage(),
          },
        ));
  }
}
