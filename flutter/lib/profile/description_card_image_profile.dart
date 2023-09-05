import 'package:application/profile/floating_action_button_cardview.dart';
import 'package:flutter/material.dart';

class DescriptionCardImageProfile extends StatelessWidget {
  String name = "";
  String description = "";
  String category = "";
  String detailSteps = "";

  DescriptionCardImageProfile(
      this.name, this.description, this.category, this.detailSteps);

  @override
  Widget build(BuildContext context) {
    final namePlace = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
    );

    final descriptionPlace = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(description,
          style: const TextStyle(
              fontFamily: "Lato", fontSize: 12.0, color: Color(0xFFa3a5a7)),
          textAlign: TextAlign.left),
    );

    final categoryPlace = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(category,
          style: const TextStyle(
              fontFamily: "Lato", fontSize: 12.0, color: Color(0xFFa3a5a7)),
          textAlign: TextAlign.left),
    );

    final steps = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
      child: Text(detailSteps,
          style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xffeaa770),
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.left),
    );

    final boxInformationPlace = Container(
      margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      child: Container(
        height: 115.0,
        width: 295.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[namePlace, descriptionPlace, categoryPlace, steps],
        ),
      ),
    );

    final informationPlaceWithButton = Stack(
      alignment: const Alignment(0.7, 1.05),
      children: <Widget>[boxInformationPlace, FloatingActionButtonCardview()],
    );
    return informationPlaceWithButton;
  }
}