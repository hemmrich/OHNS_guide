import 'package:flutter/material.dart';

import 'package:ohns_guide/gridviewbox.dart';
import 'package:ohns_guide/constants.dart';

/*
Content:
- Pathologies
  - Acute otitis media + complications
  - Chronic otitis media
  - Otitis media with effusion
  - Mastoiditis
  - Cholesteatoma
  - Hearing loss
  - Dizziness
- Procedures
  - Mastoidectomy
  - Tympanoplasty
  - Ossicular chain reconstruction and stapedectomy
  - Cochlear implant
- Otoscopy images
- Audiometry
 */


class Otology extends StatelessWidget {

  final String id = 'otology';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(Constants.map[id]['title']),
            backgroundColor: Constants.map[id]['color']),
        body: Text('Otology screen')
    );
  }
}