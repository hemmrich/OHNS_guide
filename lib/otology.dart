import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Otology'), backgroundColor: Colors.orange),
        body: Text('Otology screen')
    );
  }
}