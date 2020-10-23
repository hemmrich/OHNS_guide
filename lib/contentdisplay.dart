import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';

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

  ContentDisplayState({this.title, this.color});

  WebViewController _controller;

  Future<void> loadHtmlFromAssets(String filename, controller) async {
    String fileText = await rootBundle.loadString(filename);
    controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html').toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: color),
      body: WebView(
        initialUrl: '',
        onWebViewCreated: (WebViewController webViewController) async {
          _controller = webViewController;
          await loadHtmlFromAssets('assets/neck_dissection.html', _controller);
        },
      )
    );
  }
}
