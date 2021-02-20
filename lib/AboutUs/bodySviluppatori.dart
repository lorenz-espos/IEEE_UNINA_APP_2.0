import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bodySviluppatori extends StatelessWidget {
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
                    children: [Text("Lorenzo Esposito",style: new TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),],
                  )),
              Expanded(
                  flex: 0,
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [Text("spe.lor@virgilio.it",style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),],
                  )),
              Expanded(
                  flex: 0,
                  child: Column(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(defaultSize * 1.8),
                            bottomLeft: Radius.circular(defaultSize * 1.8)),
                        child: Image.asset(
                          'assets/img/Lorenzo.jpg',
                          fit: BoxFit.fitWidth,
                        )),
                  ])),

              Expanded(
                  flex: 0,
                  child: Column(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(defaultSize * 1.8),
                            bottomLeft: Radius.circular(defaultSize * 1.8)),
                        child: SvgPicture.asset(
                          'assets/img/FirmaLorenzo.svg',width:300,height:300,
                        )),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}