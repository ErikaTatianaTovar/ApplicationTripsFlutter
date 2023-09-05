import 'package:flutter/material.dart';

import 'description_card_image_profile.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage = "assets/img/lago.jpeg";
  String name = "Knuckles Mountains Range";
  String description = "Hiking. Water fall hunting. Natural bath";
  String category ="Scenery & Photography";
  String detailSteps = "Steps    123,123,123";

  CardImageProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 240.0,
      width: 385.0,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(top: 290.0, left: 15.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: const Alignment(0.2, 1.35),
      children: <Widget>[
        card,
        DescriptionCardImageProfile(name, description, category, detailSteps),
      ],
    );
  }
}
