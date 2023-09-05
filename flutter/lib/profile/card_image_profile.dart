import 'package:flutter/material.dart';

import 'description_card_image_profile.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage = "";
  String name = "";
  String description = "";
  String category = "";
  String detailSteps = "";

  CardImageProfile(this.pathImage, this.name, this.description, this.category,
      this.detailSteps);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      margin: const EdgeInsets.only(top: 50.0, left: 10.0),
      height: 240.0,
      width: 385.0,
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