import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  FloatingActionButtonGreen(
      {Key? key, required this.onPressed, required this.iconData});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: widget.onPressed,
      child: Icon(widget.iconData),
    );
  }
}