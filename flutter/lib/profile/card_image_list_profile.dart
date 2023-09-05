import 'package:flutter/material.dart';
import 'card_image_profile.dart';

class CardImageListProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(50.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile("assets/img/lago.jpeg"),
          CardImageProfile("assets/img/arbol.jpeg"),
          CardImageProfile("assets/img/montaña.jpeg"),
          CardImageProfile("assets/img/muelle.jpeg"),
          CardImageProfile("assets/img/rio.jpeg"),
          CardImageProfile("assets/img/selva.jpeg"),
        ],
      ),
    );
  }
}
