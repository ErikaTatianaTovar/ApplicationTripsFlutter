import 'package:application/profile/card_image_list_profile.dart';
import 'package:application/profile/gradient_back_profile.dart';
import 'package:flutter/material.dart';

class HeaderAppBarProfile extends StatelessWidget {
  String title = "Profile";
  String pathImage = "assets/img/profile.jpg";
  String name = "Veronica Ozorio";
  String email = "veroozorio253@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBackProfile(title, pathImage, name, email),
      ],
    );
  }
}