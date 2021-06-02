import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'link.dart';

class bottomSocial extends StatelessWidget {
  // WIDGET ICONE SOCIAL
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10), // Generazione spazio dal basso
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center, // Icone Social allineate al centro
        children: [
          Column(
            children: <Widget>[
              Container(
                  child: Row(
                // Modifiche sulla riga
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset(
                              'assets/icons/facebook.svg', // ICONA FACEBOOK
                              width: 35, // Larghezza icona
                              height: 35), // Altezza icona
                          onPressed: () {
                            facebook();
                          }) // Apertura collegamento
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset(
                              'assets/icons/instagram.svg', // ICONA INSTAGRAM
                              width: 35, // Larghezza icona
                              height: 35), // Altezza icona
                          onPressed: () {
                            instagram();
                          }) // Apertura collegamento
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset(
                              'assets/icons/google-maps.svg', // ICONA GOOGLE MAPS
                              width: 35, // Larghezza icona
                              height: 35), // Altezza icona
                          onPressed: () {
                            maps();
                          }) // Apertura collegamento
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset(
                              'assets/icons/chrome.svg', // ICONA GOOGLE CHROME
                              width: 35, // Larghezza icona
                              height: 35), // Altezza icona
                          onPressed: () {
                            web();
                          }) // Apertura collegamento
                    ],
                  ),
                ],
              )),
              // SCRITTA "IEEE UNINA SB" (ELIMINATA)
              /* Container(
                  child: Column( 
                    //modifiche sulla colonna
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "from",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "IEEE UNINA SB",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          )
                        ],
                      )),
                ],
              ))  */
              // SCRITTA "IEEE UNINA SB" (ELIMINATA)
            ],
          ),
        ],
      ),
    );
  }
}
