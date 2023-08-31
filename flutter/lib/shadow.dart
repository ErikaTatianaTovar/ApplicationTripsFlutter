import 'package:flutter/material.dart';
BoxDecoration buildBoxDecorationWithShadow() {
  return BoxDecoration(
    gradient: const LinearGradient(
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
  );
}
