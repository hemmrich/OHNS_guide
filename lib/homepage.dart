import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    final double dividedHeight = MediaQuery.of(context).size.height / 6;

    return Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              HomeButtonBox(
                id: 'headandneck',
                height: dividedHeight,
                specialtyWidget: HeadAndNeck(),
              ),
              HomeButtonBox(
                id: 'pediatrics',
                height: dividedHeight,
                specialtyWidget: Pediatrics(),
              ),
              HomeButtonBox(
                id: 'otology',
                height: dividedHeight,
                specialtyWidget: Otology(),
              ),
              HomeButtonBox(
                id: 'rhinology',
                height: dividedHeight,
                specialtyWidget: Rhinology(),
              ),
              HomeButtonBox(
                id: 'laryngology',
                height: dividedHeight,
                specialtyWidget: Laryngology(),
              ),
              HomeButtonBox(
                  id: 'facialplastics',
                  height: dividedHeight,
                specialtyWidget: FacialPlastics(),
              )
            ]
        )
    );
  }
}