import 'package:damda/provs/count_provider.dart';
import 'package:damda/widgets/header/back_title_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  CountProvider _countProvider;
  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context);
    return Container(
        child: Column(
      children: [
        BackTitleHeader(title: '설정'),
        Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('test1'),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text('test2'),
                      Text('test3'),
                      Text('test5')
                    ],
                  ),
                  Row(
                    children: [Text('test3'), Text('test4')],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
