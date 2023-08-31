import 'package:flutter/material.dart';

class InformationProfile extends StatelessWidget {
  String pathImage = "";
  String name = "";
  String email = "";

  InformationProfile(this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {

    final photoProfile = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 30.0),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 3.0,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          )),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "Lato", fontSize: 17.0, color: Colors.white),
      ),
    );

    final userEmail = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 17.0),
          child: Text(
              email,
              style: const TextStyle(fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
              textAlign: TextAlign.left
          ),
        ),
      ],
    );

    final userDetailsProfile = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userName,
          userEmail
        ],
      ),
    );

    final informationProfile = Row(
      children: <Widget>[
        photoProfile,
        userDetailsProfile,
      ],
    );

    return informationProfile;
    throw UnimplementedError();
  }
}