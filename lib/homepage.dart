import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:ohns_guide/homebuttonbox.dart';
import 'package:ohns_guide/headandneck.dart';
import 'package:ohns_guide/pediatrics.dart';
import 'package:ohns_guide/otology.dart';
import 'package:ohns_guide/rhinology.dart';
import 'package:ohns_guide/laryngology.dart';
import 'package:ohns_guide/facialplastics.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    print("Phone height: $screenHeight");
    double appBarHeight = screenHeight * 0.05 + 5;
    print("appBarHeight: $appBarHeight");

    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text('Otolaryngology Clerkship Guide'),
                       toolbarHeight: appBarHeight,
                       backgroundColor: Colors.grey[800]),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              HomeButtonBox(
                id: 'headandneck',
                specialtyWidget: HeadAndNeck(),
              ),
              HomeButtonBox(
                id: 'pediatrics',
                specialtyWidget: Pediatrics(),
              ),
              HomeButtonBox(
                id: 'otology',
                specialtyWidget: Otology(),
              ),
              HomeButtonBox(
                id: 'rhinology',
                specialtyWidget: Rhinology(),
              ),
              HomeButtonBox(
                id: 'laryngology',
                specialtyWidget: Laryngology(),
              ),
              HomeButtonBox(
                  id: 'facialplastics',
                specialtyWidget: FacialPlastics(),
              )
            ]
        )
    );
  }
}