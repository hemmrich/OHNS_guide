import 'package:flutter/material.dart';

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
              },
              color: buttonColor,
              textColor: Colors.white,
              highlightColor: Colors.transparent),
        ));

    /*
        child: RaisedButton(
          child: Text(buttonText),
          onPressed: () {
            print("Pressed: $buttonText");
          },
          color: buttonColor,
          textColor: Colors.white,
          highlightColor: Colors.transparent,
        ));*/
  }
}
