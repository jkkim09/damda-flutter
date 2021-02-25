import 'package:flutter/material.dart';

class BackTitleHeader extends StatefulWidget {
  final String title;
  BackTitleHeader({Key key, @required this.title}) : super(key: key);

  @override
  _BackTitleHeader createState() => _BackTitleHeader();
}

class _BackTitleHeader extends State<BackTitleHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 7.0),
      child: Row(
        children: [
          Icon(Icons.arrow_back),
          Padding(padding: EdgeInsets.only(left: 15)),
          Text(widget.title)
        ],
      ),
    );
  }
}
