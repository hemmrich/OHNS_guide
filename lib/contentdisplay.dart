import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ContentDisplay extends StatefulWidget {

  final String title;
  final Color color;

  ContentDisplay({this.title, this.color});

  @override
  State<StatefulWidget> createState() {
    return ContentDisplayState(title: title, color: color, file: getContentFilename());
  }

  String getContentFilename() {
    print("Title: $title");
    String tmp = title.toLowerCase().replaceAll(' ', '_');
    print("Filename: $tmp");
    return title.toLowerCase().replaceAll(' ', '_');
  }
}

class ContentDisplayState extends State<ContentDisplay> {

  final String title;
  final Color color;
  final String file;
  String htmlContent = '';

  ContentDisplayState({this.title, this.color, this.file}) {
    loadAsset();
    print("Returning from ContentDisplayState constructor");
  }

  void loadAsset() async {
    String tmp = await rootBundle.loadString('assets/$file.html');
    updateState(tmp);
  }

  void updateState(String newState) {
    setState(() {
      print("Setting state for ContentDisplayState...");
      htmlContent = newState;
      print("Completed setState in ContentDisplayState.");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("In ContentDisplayState $title build");
    return WebviewScaffold(
      appBar: AppBar(title: Text(title), backgroundColor: color,),
      allowFileURLs: true,
      url: new Uri.dataFromString(htmlContent, mimeType: 'text/html').toString(),
      withZoom: false,
      withJavascript: true,
      withLocalStorage: true,
      hidden: true,
      useWideViewPort: true,
    );
  }
}
