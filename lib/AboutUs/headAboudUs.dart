import 'dart:ui';
import 'package:flutter/material.dart';

class headAboudUs extends StatelessWidget {
  headAboudUs(this.titolo);

  final String titolo;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10),
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
              padding: EdgeInsets.only(top: 25),
              child: Text(titolo,
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            )
          ],
        ));
  }
}
