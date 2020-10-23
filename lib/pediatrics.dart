import 'package:flutter/material.dart';

import 'package:ohns_guide/gridviewbox.dart';
import 'package:ohns_guide/constants.dart';

class Pediatrics extends StatelessWidget {

  final String id = 'pediatrics';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Constants.map[id]['title']),
          backgroundColor: Constants.map[id]['color']),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: const EdgeInsets.all(25),
          children: [
            GridViewBox(
                text: 'Myringotomy Tubes', color: Colors.lightBlue[400]
            ),
            GridViewBox(
                text: 'Tonsillectomy', color: Colors.lightBlue[300]
            ),
            GridViewBox(
                text: 'Congenital Abnormalities', color: Colors.lightBlue[300]
            ),
            GridViewBox(
                text: 'Foreign Body Aspiration', color: Colors.lightBlue[400]
            ),
            GridViewBox(
                text: 'Peritonsillar Abscess', color: Colors.lightBlue[400]
            )
          ],
        ));
  }
}