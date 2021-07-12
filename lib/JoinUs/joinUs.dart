import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AboutUs/headAboudUs.dart';
import '../bottomSocial.dart';
import 'package:webview_flutter/webview_flutter.dart';

class JoinUs extends StatelessWidget {
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
                "JOIN US"), //intestazione statica dell'app è presemte in ogni schermata
            Container(
              constraints: BoxConstraints(
                maxHeight: 388,
              ),
              child: WebView(
                initialUrl: 'https://edu.ieee.org/it-unina/it/membri/',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            bottomSocial(),
          ],
        ),
      ),
    );
  }
}
