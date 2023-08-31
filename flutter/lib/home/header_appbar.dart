import 'package:application/home/card_image_list.dart';
import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Stack(
       children: <Widget> [
         GradientBack("Bienvenido"),
         CardImageList()
       ],
      );
    throw UnimplementedError();
  }

}