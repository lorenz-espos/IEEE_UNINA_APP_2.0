import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'link.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
        debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation:0,
        actions: <Widget>[
      IconButton(

      icon: Icon(CupertinoIcons.bell_fill),
      onPressed: () {},
      tooltip: 'Notifiche',

    ),
    ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/logo.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text("ABOUT US",
                          style: new TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                )),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  IconButton(
                                      icon: SvgPicture.asset(
                                          'icon/facebook.svg',
                                          width: 35,
                                          height: 35),
                                      onPressed: () {facebook();})
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                      icon: SvgPicture.asset(
                                          'icon/instagram.svg',
                                          width: 35,
                                          height: 35),
                                      onPressed: () {instagram();})
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                      icon: SvgPicture.asset(
                                          'icon/google-maps.svg',
                                          width: 35,
                                          height: 35),
                                      onPressed: () {})
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                      icon: SvgPicture.asset(
                                          'icon/chrome.svg',
                                          width: 35,
                                          height: 35),
                                      onPressed: () {web();})
                                ],
                              ),
                            ],
                          )),
                      Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: <Widget>[
                                      Text("from"),
                                      Text(
                                        "IEEE UNINA SB",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
              child: Image.asset('images/logo.png'),
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
          ],
        ),
      ),

    );

  }
}



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
      Image.asset('images/Lorenzo.jpg'),
         Text('Email:spe.lor@virgilio.it'),
        ],
    ),
    ),
    ],),
        
      ),
    );
  }
}