import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:local_assets_server/local_assets_server.dart';

class ContentDisplay extends StatefulWidget {

  final String title;
  final Color color;
  ContentDisplay({this.title, this.color});

  @override
  State<StatefulWidget> createState() {
    return _ContentDisplayState(title: title, color: color, file: getContentFilename());
  }

  String getContentFilename() {
    print("Title: $title");
    String tmp = title.toLowerCase().replaceAll(' ', '_');
    print("Filename: $tmp");
    return title.toLowerCase().replaceAll(' ', '_');
  }
}

class _ContentDisplayState extends State<ContentDisplay> {

  bool isListening = false;
  String address;
  int port;

  final String title;
  final Color color;
  final String file;

  _ContentDisplayState({this.title, this.color, this.file});

  @override
  void initState() {
    _initServer();

    super.initState();
  }

  _initServer() async {
    final server = new LocalAssetsServer(address: InternetAddress.loopbackIPv4,
                                         assetsBasePath: 'web');
    final internetAddress = await server.serve();

    setState(() {
      address = internetAddress.address;
      this.port = server.boundPort;
      isListening = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title: Text(title), backgroundColor: color,),
      url: "http://$address:$port/$file.html",
      withZoom: false,
      withJavascript: true,
      withLocalStorage: true,
      hidden: true,
      useWideViewPort: true,
    );
  }
}