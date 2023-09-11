import 'package:application/Place/ui/widgets/card_image_list.dart';
import 'package:flutter/material.dart';
import '../../../widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Bienvenido"), CardImageList()],
    );
  }
}