import 'package:flutter/material.dart';

class FloatingActionButtonCardview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonCardview();
  }
}

class _FloatingActionButtonCardview
    extends State<FloatingActionButtonCardview> {
  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final FloatingActionButtonCardview = Container(
      width: 30.0,
      height: 30.0,
      child: FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.favorite,
          size: 17,
        ),
      ),
    );
    return FloatingActionButtonCardview;
  }
}