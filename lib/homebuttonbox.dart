import 'package:flutter/material.dart';
import 'package:ohns_guide/headandneck.dart';
import 'package:ohns_guide/pediatrics.dart';
import 'package:ohns_guide/otology.dart';
import 'package:ohns_guide/rhinology.dart';
import 'package:ohns_guide/laryngology.dart';

class HomeButtonBox extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final double height;
  final String image;

  HomeButtonBox({this.buttonText, this.buttonColor, this.height, this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: height,
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
                switch (buttonText) {
                  case 'Head & Neck': {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HeadAndNeck()));
                  }
                  break;
                  case 'Pediatrics': {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pediatrics()));
                  }
                  break;
                  case 'Otology': {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Otology()));
                  }
                  break;
                  case 'Rhinology': {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rhinology()));
                  }
                  break;
                  case 'Laryngology': {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Laryngology()));
                  }
                  break;
                }
              },
              color: buttonColor,
              textColor: Colors.white,
              highlightColor: Colors.transparent),
        ));
  }
}
