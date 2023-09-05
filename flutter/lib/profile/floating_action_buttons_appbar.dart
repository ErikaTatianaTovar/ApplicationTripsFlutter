import 'package:flutter/material.dart';

class FloatingActionButtonsAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonsAppBar();
  }
}

class _FloatingActionButtonsAppBar extends State<FloatingActionButtonsAppBar> {
  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final iconBookmark = Container(
      margin: const EdgeInsets.only(top: 0.0, left: 10.0),
      child: FloatingActionButton(
        backgroundColor: Color(0xFFFFFFFF),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.bookmark_border_outlined,
          color: Color(0xFF584CD1),
        ),
      ),
    );

    final iconTv = Container(
      margin: const EdgeInsets.only(top: 0.0, left: 40.0),
      child: FloatingActionButton(
        backgroundColor: Color(0xFFFFFFFF),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.tv,
          color: Color(0xFF584CD1),
        ),
      ),
    );
    final iconAdd = Container(
      margin: const EdgeInsets.only(top: 5.0, left: 40.0),
      width: 55.0,
      height: 55.0,
      child: FloatingActionButton(
        backgroundColor: Color(0xFFFFFFFF),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.add_outlined,
          color: Color(0xFF584CD1),
          size: 50.0,
        ),
      ),

    );

    final iconEmail = Container(
      margin: const EdgeInsets.only(top: 0.0, left: 40.0),
      child: FloatingActionButton(
        backgroundColor: Color(0xFFFFFFFF),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.email_outlined,
          color: Color(0xFF584CD1),
        ),
      ),
    );

    final iconPerson = Container(
      margin: const EdgeInsets.only(top: 0.0,left: 30.0, right: 1.0),
      child: FloatingActionButton(
        backgroundColor: Color(0xFFFFFFFF),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.person,
          color: Color(0xFF584CD1),
        ),
      ),
    );

    return Row(
      children: <Widget>[iconBookmark, iconTv, iconAdd, iconEmail, iconPerson],
    );
  }
}
