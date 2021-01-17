import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';


Future<void> instagram() async {
  var url = 'https://www.instagram.com/ieee.unina/';

  if (await canLaunch(url)) {
    await launch(
      url,
      universalLinksOnly: true,
    );
  } else {
    throw 'There was a problem to open the url: $url';
  }
}
/*
Future<void> facebook() async {
  var url = 'https://www.facebook.com/ieee.unina/';

  if (await canLaunch(url)) {
    await launch(
      url,
      universalLinksOnly: true,
    );
  } else {
    throw 'There was a problem to open the url: $url';
  }
}
*/
void facebook() async {
  await FlutterWebBrowser.openWebPage(url: "https://www.facebook.com/ieee.unina/");
}
/*Future<void> web() async {
  var url = 'https://edu.ieee.org/it-unina/it/home-2/';

  if (await canLaunch(url)) {
    await launch(
      url,
      universalLinksOnly: true,
    );
  } else {
    throw 'There was a problem to open the url: $url';
  }
}
*/

Future<void> event() async {
  var url = 'https://www.eventbrite.it/e/biglietti-nerd-non-e-roba-per-donne-130285163431?aff=';

  if (await canLaunch(url)) {
    await launch(
      url,
      universalLinksOnly: true,
    );
  } else {
    throw 'There was a problem to open the url: $url';
  }
}

void web() async {
  await FlutterWebBrowser.openWebPage(url: "https://edu.ieee.org/it-unina/it/home-2/");
}



void help() async {
  await FlutterWebBrowser.openWebPage(url: "https://edu.ieee.org/it-unina/it/infoieee/");
}

void maps() async {
  var url = 'https://www.google.com/maps/place/Universit%C3%A0+degli+Studi+di+Napoli+Federico+II+-+Scuola+Politecnica+e+delle+Scienze+di+Base+-+Complesso+Napoli+Est/@40.836236,14.306482,10z/data=!4m5!3m4!1s0x0:0xcf27f380dd726ab7!8m2!3d40.8362358!4d14.3064821?hl=it-IT';

  if (await canLaunch(url)) {
    await launch(
      url,
      universalLinksOnly: true,
    );
  } else {
    throw 'There was a problem to open the url: $url';
  }
}