import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
      child: const Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac purus in purus lobortis tincidunt. Quisque volutpat fermentum nisl, sit amet pellentesque sapien dictum quis. Proin nec dolor eu tellus bibendum auctor eget nec turpis. Integer pharetra elementum mi, ac congue nisl vulputate id. Nulla id augue eget velit tristique aliquam. Fusce at dolor vitae lectus commodo venenatis. In scelerisque metus eu lorem condimentum, eu ultrices orci lacinia.",
        style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Color(0xff808080)),
        textAlign: TextAlign.left,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: const Text(
            "Duwili Ella",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );
//estilo distinto tamañao letra pequeño, usa mismo conteiner y widgets en variable aparte, tex stayle, margenes
    return Column(
      children: <Widget>[titleStars, description],
    );
    throw UnimplementedError();
  }
}
