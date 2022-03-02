import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonicon; 
  final void Function() btnaction;
  final double height;
  final double width;
  Color buttoncolor;

  CircularButton({
   required this.btnaction,
   required this.buttonicon,
   this.buttoncolor=Colors.black,
  this.height=50,
  this.width=50,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
        ),
        child: IconButton(
          icon: Icon(buttonicon),
          color: buttoncolor,
          onPressed: () {
            btnaction;
          },
        ));
  }
}
