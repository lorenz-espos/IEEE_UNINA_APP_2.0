import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/AboutUs/articoli.dart';
import 'package:flutter_app_2/AboutUs/slider.dart';
import 'package:flutter_app_2/JoinUs/joinUs.dart';
import 'package:flutter_app_2/link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'AboutUs/headAboudUs.dart';
import 'size_config.dart';
import 'AboutUs/slider.dart';
import 'AboutUs/articoli.dart';
import 'JoinUs/joinUs.dart';
import 'Project/project.dart';
import 'loading.dart';
import 'AboutUs/sviluppatori.dart';

void main() {
  runApp(Splash()); //qui andrà splashscreen quando sarà pronto il caricamento
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //@override
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

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  int index = 0;
  List<Widget> pages = [
    Home(),
    Project(),
    JoinUs()
  ]; //Qui vanno le classi delle pagine principali da far uscire quando si passa nelle nuove sezioni della tab bar
  // P.S Al momento le pagine sono messe a caso per mostrare il funzionamento della tab bar
  Widget activePage = Home(); //Setup iniziale della pagina attiva
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    activePage = pages[index];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sviluppatori()),
            );
          },
          tooltip: 'Sviluppatori',
          icon: Image.asset(
            'assets/icons/developers.png',
            height: 32,
            width: 32,
          ),
          padding: new EdgeInsets.only(top: 17.0),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/chatbot.svg',
              height: 24,
              width: 24,
              color: Colors.black,
            ),
            padding: new EdgeInsets.only(top: 16.0),
            onPressed: () {
              help();
            },
            tooltip: 'Chatbot',
          ),
        ],
      ),
      body:
          activePage, //activePage contiene la pagina attualmente attiva, per costruire le altre pagine prendere come riferimento la home
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[900],
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: Colors.grey,
              height: 25,
              width: 25,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: Colors.blue[900],
              height: 30,
              width: 30,
            ),
            label: 'Home',
          ), // TODO: CAMBIAMENTO TITLE--> LABEL

          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/project.svg',
                color: Colors.grey,
                height: 25,
                width: 25,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/project.svg',
                color: Colors.blue[900],
                height: 30,
                width: 30,
              ),
              label:
                  'Project'), // TODO: CAMBIAMENTO TITLE--> LABEL (e cambiato il nome in Project)
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/join.svg',
                color: Colors.grey,
                height: 25,
                width: 25,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/join.svg',
                color: Colors.blue[900],
                height: 30,
                width: 30,
              ),
              label: 'Join Us'), // TODO: CAMBIAMENTO TITLE--> LABEL
        ],
        onTap: (page) {
          setState(() {
            switch (page) {
              case 0:
                index = 0;
                break;
              case 1:
                index = 1;
                break;
              case 2:
                index = 2;
                break;
            }
          });
        },
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
          headAboudUs("HOME"),
          slider(),
          Articoli(), // TODO: AGGIORNATO IL NOME CON LETTERA MAIUSCOLA PER UNIFORMARE (formalità) --> da fare anche alle altre classi
        ],
      ),
    );
  }
}
//test commit