import 'package:flutter/material.dart';
import 'package:flutter_app_2/main.dart';
import 'dart:async'; //include il Timer
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new MyApp(),
        title: new Text(
          'Welcome In SplashScreen',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0);
  }
}
/*class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      //Timer one shot
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
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
*/