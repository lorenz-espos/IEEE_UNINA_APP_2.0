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
/*Future<void> help() async {
  var url = 'https://edu.ieee.org/it-unina/it/chi-siamo/';

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

void help() async {
  await FlutterWebBrowser.openWebPage(url: "https://edu.ieee.org/it-unina/it/infoieee/");
}