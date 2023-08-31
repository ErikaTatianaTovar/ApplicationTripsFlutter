import 'package:flutter/material.dart';
import 'button.dart';
import 'stars.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac purus in purus lobortis tincidunt. Quisque volutpat fermentum nisl, sit amet pellentesque sapien dictum quis. Proin nec dolor eu tellus bibendum auctor eget nec turpis. Integer pharetra elementum mi, ac congue nisl vulputate id. Nulla id augue eget velit tristique aliquam. Fusce at dolor vitae lectus commodo venenatis. In scelerisque metus eu lorem condimentum, eu ultrices orci lacinia.";

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(top: 320.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(children: <Widget>[star, star, star, star, star])
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff808080)),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStars, description, Button("Navigate")],
    );
  }
}
