import 'package:flutter/material.dart';

class ButtonWhite extends StatefulWidget {
  final String text;
  double? width = 0.0;
  double? height = 0.0;
  final VoidCallback onPressed;

  ButtonWhite(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.height,
      this.width})
      : super(key: key);

  @override
  State createState() {
    return _ButtonWhite();
  }
}

class _ButtonWhite extends State<ButtonWhite> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(-2.0, 7.0),
                blurRadius: 10.0,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Lato",
                  color: Colors.black45,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
