import 'package:flutter/material.dart';
import 'card_image_profile.dart';

class CardImageListProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CardImageProfile(
            "assets/img/lago.jpeg",
            "Knuckles Mountains Range",
            "Hiking. Water fall hunting. Natural bath",
            "Scenery & Photography",
            "Steps    123,123,123"),
        CardImageProfile(
            "assets/img/arbol.jpeg",
            "Knuckles Mountains Range",
            "Hiking. Water fall hunting. Natural bath",
            "Scenery & Photography",
            "Steps    123,123,123"),
        CardImageProfile(
            "assets/img/montaña.jpeg",
            "Knuckles Mountains Range",
            "Hiking. Water fall hunting. Natural bath",
            "Scenery & Photography",
            "Steps    123,123,123"),
        CardImageProfile(
            "assets/img/muelle.jpeg",
            "Knuckles Mountains Range",
            "Hiking. Water fall hunting. Natural bath",
            "Scenery & Photography",
            "Steps    123,123,123"),
        CardImageProfile(
            "assets/img/rio.jpeg",
            "Knuckles Mountains Range",
            "Hiking. Water fall hunting. Natural bath",
            "Scenery & Photography",
            "Steps    123,123,123"),
        CardImageProfile(
            "assets/img/selva.jpeg",
            "Knuckles Mountains Range",
            "Hiking. Water fall hunting. Natural bath",
            "Scenery & Photography",
            "Steps    123,123,123"),
      ],
    );
  }
}