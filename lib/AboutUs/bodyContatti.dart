import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/size_config.dart';

class bodyContatti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center, children: [body()]));
  }
}


class body extends StatelessWidget {

  double defaultSize = SizeConfig.defaultSize;



  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xffebebeb).withOpacity(0.5),
              borderRadius: BorderRadius.circular(defaultSize * 1.8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: Offset(2, 4), // changes position of shadow
                ),
              ]),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Expanded(
                    flex: 0,
                    child: Column(
                      textDirection: TextDirection.ltr,
                      children: [Text('Ciro Marrazzo'
                          , style: new TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17))
                      ],
                    )),

                Expanded(
                    flex: 0,
                    child: Column(
                      textDirection: TextDirection.ltr,
                      children: [Text("cir.marrazzo@studenti.unina.it"
                          , style: new TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16))
                      ],
                    )),
              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Claudio Lista'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("cl.lista@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),
              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),
              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Luigi Crisci'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("luigi.crisci3@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),
              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),
              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),
              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text('Lorenzo Esposito'
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17))
                    ],
                  )),

              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("lorenzo.esposito16@studenti.unina.it"
                        , style: new TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );

  }
}