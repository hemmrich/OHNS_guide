import 'package:flutter/material.dart';

import 'package:ohns_guide/constants.dart';

class Laryngology extends StatelessWidget {

  final String id = 'laryngology';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(Constants.map[id]['title']),
            backgroundColor: Constants.map[id]['color']),
        body: Text('Laryngology screen')
    );
  }
}