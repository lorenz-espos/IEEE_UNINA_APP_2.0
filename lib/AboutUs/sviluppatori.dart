import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Sviluppatori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation:0,
        title: Text("Sviluppatori",
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
            Container(
              child:Column(
                children: <Widget>[
                  Text('Lorenzo Esposito'),
                  Image.asset('assets/img/Lorenzo.jpg'),
                  Text('Email:spe.lor@virgilio.it'),
                ],
              ),
            ),
          ],),

      ),
    );
  }
}