import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/link.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:html_character_entities/html_character_entities.dart';

class Articoli extends StatelessWidget {
  // TODO: NOME CLASSE CON LETTERA MAIUSCOLA (formalità) --> da fare anche alle altre classi
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(
      // TODO: ROW AL POSTO DI COLUMN
      children: <Widget>[
        Container(
            padding:
                EdgeInsets.only(bottom: 5, left: 16), // TODO: POSIZIONAMENTO
            child: Row(children: <Widget>[
              Text("ARTICOLI",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Icon(CupertinoIcons.chevron_forward,
                  size: 20), // TODO: MODIFICATO GRANDEZZA ICONA
            ])),
        Container(
          padding: EdgeInsets.only(bottom: 80, left: 0),
          child: GetArticles(),
        ) //CHIAMATA ALLA FUNZIONE PER LA DISPOSIZIONE DEGLI ARTICOLI
      ],
    ));
  }
}

//RITORNA UNA CLASSE CONTAINER CHE RITORNA IL BLOCCHETTO DELL'ARTICOLO
//TODO: PROVARE AD AGGIUNGERE IL TITOLO ED IMG PRESO DA UN ARTICOLO
//TODO: DISPORRE DUE ARTICOLI UNO VICINO ALL'ALTRO RISPETTANDO GLI SPAZI SUI VARI DISPOSITIVI
class GetArticles extends StatelessWidget {
  wp.WordPress wordPress = wp.WordPress(
    baseUrl: 'https://edu.ieee.org/it-unina',
  );

  _fetchPosts() {
    Future<List<wp.Post>> posts = wordPress.fetchPosts(
        //fetcha i post da wordpress
        postParams: wp.ParamsPostList(
          context: wp.WordPressContext.view,
          pageNum: 1,
          perPage: 4, //Indica quanti post caricare dal server
        ),
        fetchAuthor: false,
        fetchFeaturedMedia: true,
        fetchComments: false);
    return posts;
  }

  ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180, // Some height
        child: FutureBuilder<List<wp.Post>>(
          //Si occupa di creare la lista di post da mostrare nell'app e far vedere il caricamento fino a download avvenuto
          future: _fetchPosts(),
          // ignore: missing_return
          builder: (context, AsyncSnapshot<List<wp.Post>> snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return Container(width: 0.0, height: 0.0);
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        indent: 24,
                      ),
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  controller: _controller,
                  itemCount: snapshot.data.length,
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  itemBuilder: (context, index) {
                    //itemBuilder itera automaticamente tra tutti i post presi dal server per creare la boxdecoration e container da mostrare a schermo
                    wp.Post post = snapshot.data[index];
                    return Container(
                      child: GestureDetector(
                          onTap: () => openLinkBrowser(post.link),
                          child: Center(
                              //TESTO ALLINEATO AL CENTRO DEL BOX
                              child: Text(
                            HtmlCharacterEntities.decode(post.title.rendered),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              //STILE DEL TESTO
                              fontWeight: FontWeight.bold, //BOLD
                              color: Colors.white, //COLORE TESTO
                              shadows: [
                                //OMBRA IN BACKGROUND PER STACCARE DALL'IMMAGINE
                                Shadow(
                                  blurRadius: 5.0,
                                  color: Colors.black.withOpacity(0.8),
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                            ),
                          ))),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Colors.black.withOpacity(.2),
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(
                              //SFUMATURA BIANCA SULL'IMMAGINE PER STACCARLA DAL TITOLO
                              Colors.black.withOpacity(0.90),
                              BlendMode.dstATop),
                          image: NetworkImage(
                              post.featuredMedia.sourceUrl), //IMMAGINE
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10), //BORDI
                        color: Colors.transparent,
                      ),
                      padding: EdgeInsets.only(left: 8, right: 8),
                      width: 150.0, //DIMENSIONE DEL CONTAINER
                      height: 150.0,
                    );
                  });
            } else if (snapshot.hasError) {
              return Container();
            }
          },
        ));
  }
}
