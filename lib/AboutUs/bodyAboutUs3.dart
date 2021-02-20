import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/size_config.dart';

class bodyAboudUs3 extends StatelessWidget {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(defaultSize * 1.8),
                            bottomLeft: Radius.circular(defaultSize * 1.8)),
                        child: Image.asset(
                          'assets/img/SB3.jpg',
                          fit: BoxFit.fill,
                        )),
                  ])),
              Expanded(
                  flex: 2,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("La nostra sede è all’Universita’ degli Studi di Napoli a San Giovanni a Teduccio.",style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 10))],
                  ))
            ],
          ),
        ),
      ),
    );





  }

}
