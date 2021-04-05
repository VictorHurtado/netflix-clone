import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://lastfm.freetls.fastly.net/i/u/770x0/58f61b118f13192a821260bc24366f6d.jpg',
          height: 300,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
