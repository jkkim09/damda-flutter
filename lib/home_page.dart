import 'package:damda/provider/theme_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _notifier =
      ValueNotifier<ThemeProvider>(ThemeProvider(ThemeMode.light));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('test'),
        InkWell(
          child: Text('Toggle Theme'),
          onTap: () => {},
        )
      ],
    ));
  }
}
