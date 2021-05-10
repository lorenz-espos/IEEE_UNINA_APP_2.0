import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/AboutUs/slider.dart';
import 'package:flutter_app_2/link.dart';
import 'AboutUs/headAboudUs.dart';
import 'bottomSocial.dart';
import 'size_config.dart';
import 'AboutUs/sviluppatori.dart';
import 'AboutUs/contatti.dart';
import 'AboutUs/slider.dart';

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
        /*leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {Drawer();},
        ),
        */actions: [
          IconButton(
              icon: Icon(CupertinoIcons.text_bubble_fill),
              onPressed: () {help();},
            tooltip: 'Chatbot',),

        ],
      ),
      body: Home(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(

              //child: Text('IEEE UNINA'),
              child: Image.asset('assets/icons/logo.png'),
              decoration: BoxDecoration(

                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Progetto N.E.R.D.'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Sviluppatori'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sviluppatori()),
                );
              },
            ),
            ListTile(
              title: Text('Membri'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contatti()),
                );
              },
            ),
          ],
        ),
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

        bottomSocial(),

        ],
      ),
    );
  }
}

