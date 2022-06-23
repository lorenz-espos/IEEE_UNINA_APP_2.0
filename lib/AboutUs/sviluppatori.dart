import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_2/size_config.dart';
import 'package:flutter_app_2/link.dart';

class Sviluppatori extends StatelessWidget {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          "Developers",
          style: TextStyle(
              color: Colors.blue.shade800, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
            ),
            InkWell(
              hoverColor: Colors.transparent,
              child: Image.asset(
                'assets/img/lorenzo.png',
                width: 300,
                height: 250,
              ),
              onTap: () => lorenzo(),
            ),
            Container(
              padding: EdgeInsets.all(15),
            ),
            InkWell(
              hoverColor: Colors.transparent,
              child: Image.asset(
                'assets/img/luigi.png',
                width: 300,
                height: 250,
              ),
              onTap: () => luigi(),
            ),
            Container(
              padding: EdgeInsets.all(15),
            ),
            InkWell(
              hoverColor: Colors.transparent,
              child: Image.asset(
                'assets/img/emanuele.png',
                width: 300,
                height: 250,
              ),
              onTap: () => emanuele(),
            ),
            Container(
              padding: EdgeInsets.all(15),
            ),
          ],
        ),
      ),
    );
  }
}
