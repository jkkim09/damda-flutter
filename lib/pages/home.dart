import 'package:damda/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('test');
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return RaisedButton(
        onPressed: () => provider.toggleMode(),
        child: Text('Toggle Theme'),
      );
    });
  }
}
