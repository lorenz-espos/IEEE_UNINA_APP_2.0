import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Articoli extends StatelessWidget {
  // TODO: NOME CLASSE CON LETTERA MAIUSCOLA (formalità) --> da fare anche alle altre classi
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      // TODO: ROW AL POSTO DI COLUMN
      children: <Widget>[
        Container(
            padding:
                EdgeInsets.only(bottom: 265, left: 15), // TODO: POSIZIONAMENTO
            child: Row(children: <Widget>[
              Text("ARTICOLI",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Icon(CupertinoIcons.chevron_forward,
                  size: 20), // TODO: MODIFICATO GRANDEZZA ICONA
            ])),
        GetArticles(), //CHIAMATA ALLA FUNZIONE PER LA DISPOSIZIONE DEGLI ARTICOLI
      ],
    ));
  }
}

//RITORNA UNA CLASSE CONTAINER CHE RITORNA IL BLOCCHETTO DELL'ARTICOLO
//TODO: PROVARE AD AGGIUNGERE IL TITOLO ED IMG PRESO DA UN ARTICOLO
//TODO: DISPORRE DUE ARTICOLI UNO VICINO ALL'ALTRO RISPETTANDO GLI SPAZI SUI VARI DISPOSITIVI
class GetArticles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Container(
                child: Center(
                    //TESTO ALLINEATO AL CENTRO DEL BOX
                    child: Text(
                  "TITOLO \nDELL'ARTICOLO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //STILE DEL TESTO
                    fontWeight: FontWeight.bold, //BOLD
                    color: Colors.white, //COLORE TESTO
                    shadows: [
                      //OMBRA IN BACKGROUND PER STACCARE DALL'IMMAGINE
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                )),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        //SFUMATURA BIANCA SULL'IMMAGINE PER STACCARLA DAL TITOLO
                        Colors.black.withOpacity(0.85),
                        BlendMode.dstATop),
                    image: AssetImage('assets/img/SB2.jpg'), //IMMAGINE
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(4), //BORDI
                  color: Colors.transparent,
                ),
                width: 150.0, //DIMENSIONE DEL CONTAINER
                height: 150.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
