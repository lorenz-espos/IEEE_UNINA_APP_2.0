import 'dart:ui';
import 'package:flutter/material.dart';

class headAboudUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          child: Image.asset(
            'assets/icons/logo.png',
            height: 100,
            width: 100,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Text("ABOUT US",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        )
      ],
    ));
  }
}
