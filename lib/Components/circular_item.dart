import 'package:flutter/material.dart';

class CircularItem extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 110,
              height: 110,
              child: ClipOval(
                child: Image.network(
                    'https://i.blogs.es/d1f406/avengers-endgame-poster-cropped/1366_2000.jpg',
                    fit: BoxFit.cover),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                  border: Border.all(color: Colors.yellow, width: 2.0)),
            ),
            Container(
              width: 100,
              child: Image.network(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/846a9086-8a40-43e0-aa10-2fc7d6d73730/dcunetv-e452e13f-9a29-4c72-9ad1-db96a0537609.png/v1/fill/w_1280,h_542,strp/avengers__endgame__2019__logo_png__2_by_mintmovi3_dcunetv-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD01NDIiLCJwYXRoIjoiXC9mXC84NDZhOTA4Ni04YTQwLTQzZTAtYWExMC0yZmM3ZDZkNzM3MzBcL2RjdW5ldHYtZTQ1MmUxM2YtOWEyOS00YzcyLTlhZDEtZGI5NmEwNTM3NjA5LnBuZyIsIndpZHRoIjoiPD0xMjgwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.aLeeUW3KqwVE-zxO0B2N1kBZz1LpdRZ4FRlp5V6Bsuc'),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
