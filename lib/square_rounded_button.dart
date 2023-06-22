import 'package:flutter/material.dart';

class SquareRoundedButton extends StatelessWidget {
  const SquareRoundedButton({Key? key, required this.color,  required this.icon, required this.onPressed, required this.height, required this.width}) : super(key: key);

  //Iconos de + -
  final IconData icon;
  final void Function() onPressed;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    //Personalizacion botones de flutter
    return RawMaterialButton(
      // *
        elevation: 0.0,
        child: Icon(icon),
        //
        constraints: BoxConstraints.tightFor(
            height: height,
            width: width
        ),
        //Bordes
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0
          ),
        ),

        fillColor: color,
        onPressed: onPressed
    );
  }
}
