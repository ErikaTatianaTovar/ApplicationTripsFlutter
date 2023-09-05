import 'package:flutter/material.dart';

class StarsRow extends StatelessWidget {
  final int stars;

  StarsRow(this.stars);

  @override
  Widget build(BuildContext context) {
    List<Widget> starWidgets = [];
    for (int i = 0; i < stars; i++) {
      starWidgets.add(
        Container(
          margin: const EdgeInsets.only(top: 0, right: 0),
          child: const Icon(
            Icons.star,
            color: Color(0xFFf2c611),
          ),
        ),
      );
    }
    return Row(
      children: starWidgets,
    );
  }
}