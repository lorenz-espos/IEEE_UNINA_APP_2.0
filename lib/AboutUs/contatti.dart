import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_2/size_config.dart';
import 'bodyContatti.dart';

class Contatti extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation:0,
        title: Text("Membri",
          style:TextStyle(color:Colors.black),
        ),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(

        child: ListView(
          children: <Widget>[
            bodyContatti(),
          ],),

      ),
    );
  }
}