import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './homebuttonbox.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double dividedHeight = MediaQuery.of(context).size.height / 4;

    return Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              HomeButtonBox(
                buttonText: 'Head & Neck',
                buttonColor: Colors.red,
                image: 'icons8-head-profile-50.png',
                height: dividedHeight,
              ),
              HomeButtonBox(
                buttonText: 'Pediatrics',
                buttonColor: Colors.blue,
                image: 'icons8-baby-feet-50.png',
                height: dividedHeight,
              ),
              HomeButtonBox(
                buttonText: 'Otology',
                buttonColor: Colors.orange,
                image: 'icons8-hearing-50.png',
                height: dividedHeight,
              ),
              HomeButtonBox(
                buttonText: 'Rhinology',
                buttonColor: Colors.deepPurple,
                image: 'icons8-smelling-50.png',
                height: dividedHeight,
              )
            ]
        )
    );
  }
}

/*
Notes:
- Want vertically arranged buttons

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              textColor: Colors.white,
              color: Color(0xFF6200EE),
              highlightColor: Colors.transparent,
              onPressed: () {
                // Respond to button press
              },
              child: Text('CONTAINED BUTTON'),
            ),
            RaisedButton.icon(
              textColor: Colors.white,
              color: Color(0xFF6200EE),
              highlightColor: Colors.transparent,
              onPressed: () {
                // Respond to button press
              },
              icon: Icon(Icons.add, size: 18),
              label: Text("CONTAINED BUTTON"),
            ),
          ],
        ),
      ),
    );
  }
}



 */
