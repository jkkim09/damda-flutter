import 'package:damda/provs/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestPage extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<TestPage> {
  CountProvider _countProvider;
  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context);
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_countProvider.count.toString()),
        InkWell(
          child: Text('증가'),
          onTap: () => {_countProvider.add()},
        )
      ],
    ));
  }
}
