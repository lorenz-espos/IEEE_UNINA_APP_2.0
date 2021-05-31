import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class articoli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            child: Row(children: <Widget>[
          Text("ARTICOLI",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Icon(CupertinoIcons.chevron_forward),
        ]))
      ],
    ));
  }
}
