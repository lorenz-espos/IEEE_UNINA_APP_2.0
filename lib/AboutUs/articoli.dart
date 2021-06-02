import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Articoli extends StatelessWidget {    // TODO: NOME CLASSE CON LETTERA MAIUSCOLA (formalità) --> da fare anche alle altre classi
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(   // TODO: ROW AL POSTO DI COLUMN
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(bottom: 265, left: 15),    // TODO: POSIZIONAMENTO
            child: Row(children: <Widget>[
          Text("ARTICOLI",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Icon(CupertinoIcons.chevron_forward, size: 20),       // TODO: MODIFICATO GRANDEZZA ICONA
        ]))
      ],
    ));
  }
}
