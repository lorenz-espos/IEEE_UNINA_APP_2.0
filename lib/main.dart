import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/AboutUs/articoli.dart';
import 'package:flutter_app_2/AboutUs/slider.dart';
import 'package:flutter_app_2/link.dart';
import 'AboutUs/headAboudUs.dart';
import 'bottomSocial.dart';
import 'size_config.dart';
import 'AboutUs/sviluppatori.dart';
import 'AboutUs/contatti.dart';
import 'AboutUs/slider.dart';
import 'AboutUs/articoli.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IEEE Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.text_bubble_fill, size: 32),
            padding: new EdgeInsets.only(top: 16.0),
            onPressed: () {
              help();
            },
            tooltip: 'Chatbot',
          ),
        ],
      ),
      body: Home(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),  // TODO: CAMBIAMENTO TITLE--> LABEL
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.lightbulb), label: 'Project'), // TODO: CAMBIAMENTO TITLE--> LABEL (e cambiato il nome in Project)
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_badge_plus), label: 'Join Us'), // TODO: CAMBIAMENTO TITLE--> LABEL
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          headAboudUs(),
          slider(),
          Articoli(),     // TODO: AGGIORNATO IL NOME CON LETTERA MAIUSCOLA PER UNIFORMARE (formalità) --> da fare anche alle altre classi
        ],
      ),
    );
  }
}
