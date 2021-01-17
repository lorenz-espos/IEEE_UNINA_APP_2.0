import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'link.dart';

class bottomSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                          icon: SvgPicture.asset('assets/icons/facebook.svg',
                              width: 35, height: 35),
                          onPressed: () {facebook();})
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset('assets/icons/instagram.svg',
                              width: 35, height: 35),
                          onPressed: () {instagram();})
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset('assets/icons/google-maps.svg',
                              width: 35, height: 35),
                          onPressed: () {maps();})
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset('assets/icons/chrome.svg',
                              width: 35, height: 35),
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
              ))
            ],
          ),
        ],
      ),
    );
  }
}
