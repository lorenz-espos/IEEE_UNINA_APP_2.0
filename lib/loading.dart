import 'package:flutter/material.dart';
import 'package:flutter_app_2/main.dart';
import 'dart:async'; //include il Timer

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      //Timer one shot
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    });

    var assetsImage = new AssetImage('assets/icons/launch_image.gif');
    var image = new Image(image: assetsImage, height: 200);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: new Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
