import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

import './homepage.dart';

const assets_baseurl = 'https://drive.google.com/drive/folders/1eo8Q2U6Lg_keoRPROTQdlkMe3rfWCvln';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // download html and img assets
    print('Calling _downloadAssets()');
    _downloadAssets();


    return MaterialApp(
      title: "OHNS Guide",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
    );
  }

  Future<void> _downloadAssets() async {
    print('In _downloadAssets()');
    String assetsDir = (await getApplicationDocumentsDirectory()).path;
    //assetsDir = assetsDir + '/flutter_assets/web';

    print('assetsDir = ' + assetsDir);

    var downloadUs = [
      'tonsillectomy.html',
      'neck_dissection.html',
      'style.css',
      'neck_dissection_levels.png',
      'tonsilbloodsupply.jpg'
    ];


    for (String filename in downloadUs) {
      String url = assets_baseurl + '/' + filename;
      print("Downloading $url");
      var request = await http.Client().get(Uri.parse(url));
      var file = File('$assetsDir/$filename');
      file.writeAsBytes(request.bodyBytes);
    }
    print('Finished _downloadAssets()');
  }
}