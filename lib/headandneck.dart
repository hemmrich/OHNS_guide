import 'package:flutter/material.dart';

import 'package:ohns_guide/gridviewbox.dart';
import 'package:ohns_guide/constants.dart';

/*
Content:
- Pathologies
  - Oropharyngeal cancer
  - Salivary gland cancers
  - Thyroid and parathyroid
  - Tracheostomy
- Procedures
  - Parotidectomy
  - Thyroidectomy/parathyroidectomy
  - Neck dissection levels

- Add staging for cancers
- NCCN guidelines?
 */

class HeadAndNeck extends StatelessWidget {

  final String id = 'headandneck';

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
              text: 'Oropharyngeal Cancer', color: Colors.red[400]
            ),
            GridViewBox(
                text: 'Salivary Gland Cancer', color: Colors.red[300]
            ),
            GridViewBox(
                text: 'Thyroid and Parathyroid Cancer', color: Colors.red[300]
            ),
            GridViewBox(
                text: 'Tracheostomy', color: Colors.red[400]
            ),
            GridViewBox(
                text: 'Neck Dissection', color: Colors.red[400]
            )
          ],
      ));
  }
}