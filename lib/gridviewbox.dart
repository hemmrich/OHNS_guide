import 'package:flutter/material.dart';

import 'package:ohns_guide/contentdisplay.dart';

class GridViewBox extends StatelessWidget {
  final String text;
  final Color color;

  GridViewBox({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ContentDisplay(title: text, color: color)));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(text, textScaleFactor: 1.5, textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
      )),
      color: color,
    ));
  }
}
