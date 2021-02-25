import 'package:damda/screens/home_screen.dart';
import 'package:damda/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:theme_mode_handler/theme_picker_dialog.dart';

class IndexScreen extends StatefulWidget {
  @override
  Index createState() => Index();
}

class Index extends State<IndexScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _children = [HomeScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '메인',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '설정',
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}
