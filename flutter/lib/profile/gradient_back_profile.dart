import 'package:application/profile/floating_action_buttons_appbar.dart';
import 'package:application/profile/information_profile.dart';
import 'package:flutter/material.dart';

class GradientBackProfile extends StatelessWidget {
  String title = "";
  String pathImage = "";
  String name = "";
  String email = "";

  GradientBackProfile(this.title, this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {
    final titleWidget = Container(
      margin: const EdgeInsets.only(top: 55.0, left: 20.0),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
    );

    final iconSettings = Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 90.0, right: 15.0),
          child: const Icon(
            Icons.settings,
            color: Color(0xffa2a2a2),
            size: 16.0,
          ),
        ),
      ],
    );

    final gradient = Container(
      height: 275.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.02, 0.9),
          end: FractionalOffset(0.9, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(6.0, -6.0),
            blurRadius: 10.0,
            spreadRadius: 0,
          ),
        ],
      ),
      alignment: const Alignment(1, -2),
    );

    final detailsAppBar =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      titleWidget,
      InformationProfile(pathImage, name, email),
      FloatingActionButtonsAppBar(),
    ]);

    return Stack(
      children: <Widget>[
        gradient,
        detailsAppBar,
        iconSettings,
      ],
    );
  }
}