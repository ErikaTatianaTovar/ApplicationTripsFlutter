import 'package:flutter/material.dart';
import '../../../widgets/stars.dart';

class Review extends StatelessWidget {
  String pathImage = "";
  String name = "";
  String details = "";
  String comment = "";
  int stars = 3;

  Review(this.pathImage, this.name, this.details, this.comment, this.stars);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final userInformation = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 17.0),
          child: Text(details,
              style: const TextStyle(
                  fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
              textAlign: TextAlign.left),
        ),
        StarsRow(4)
      ],
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userInformation,
          userComment,
        ],
      ),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}