import 'package:flutter/material.dart';

import 'package:ohns_guide/constants.dart';

/*
To-do:
- Split row into 1/3 image, 2/3 text (center text in container)
- Invert images into white outlines
 */

// ignore: must_be_immutable
class HomeButtonBox extends StatelessWidget {
  final String id;
  String buttonText;
  Color buttonColor;
  String image;
  final Widget specialtyWidget;

  HomeButtonBox({this.id, this.specialtyWidget}) {
    buttonText = Constants.map[id]['title'];
    buttonColor = Constants.map[id]['color'];
    image = Constants.map[id]['image'];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: RaisedButton(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/$image'),
                    Text(buttonText, textScaleFactor: 1.9)
                  ]),
              onPressed: () {
                print("Pressed home button: $buttonText");
                print(Constants.map[id]);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => specialtyWidget));
              },
              color: buttonColor,
              textColor: Colors.white,
              highlightColor: Colors.transparent),
        ));
  }
}
