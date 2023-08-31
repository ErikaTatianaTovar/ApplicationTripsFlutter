import 'package:flutter/material.dart';
import 'card_image.dart';


class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/lago.jpeg"),
          CardImage("assets/img/arbol.jpeg"),
          CardImage("assets/img/montaña.jpeg"),
          CardImage("assets/img/muelle.jpeg"),
          CardImage("assets/img/rio.jpeg"),
          CardImage("assets/img/selva.jpeg"),
        ],
      ),
    );
  }
}