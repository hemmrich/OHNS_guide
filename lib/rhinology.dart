import 'package:flutter/material.dart';

import 'package:ohns_guide/gridviewbox.dart';
import 'package:ohns_guide/constants.dart';

class Rhinology extends StatelessWidget {

  final String id = 'rhinology';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(Constants.map[id]['title']),
            backgroundColor: Constants.map[id]['color']),
        body: Text('Rhinology screen')
    );
  }
}