import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AboutUs/headAboudUs.dart';

class Project extends StatelessWidget {
  //nuova classe simile ad home presente nel main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            headAboudUs(
                "PROJECT"), //intestazione statica dell'app è presemte in ogni schermata
          ],
        ),
      ),
    );
  }
}
