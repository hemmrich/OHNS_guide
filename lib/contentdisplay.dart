import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ContentDisplay extends StatefulWidget {

  final String title;
  final Color color;

  ContentDisplay({this.title, this.color});

  @override
  State<StatefulWidget> createState() {
    return ContentDisplayState(title: title, color: color);
  }
}

class ContentDisplayState extends State<ContentDisplay> {

  final String title;
  final Color color;
  String htmlContent = '';

  ContentDisplayState({this.title, this.color}) {
    loadAsset();
  }

  void loadAsset() async {
    String tmp = await rootBundle.loadString('assets/neck_dissection.html');
    setState(() {
      htmlContent = tmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("In ContentDisplayState $title build");
    return WebviewScaffold(
      appBar: AppBar(title: Text(title), backgroundColor: color,),
      allowFileURLs: true,
      url: new Uri.dataFromString(htmlContent, mimeType: 'text/html').toString(),
      withZoom: true,
      withJavascript: true,
      withLocalStorage: true,
      hidden: true,
      useWideViewPort: true,
    );
  }
}
