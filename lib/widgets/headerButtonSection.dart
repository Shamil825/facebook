
import 'package:flutter/material.dart';



class HeaderButtonSection extends StatelessWidget {
  final Widget buttonone;
  final Widget buttontwo;
  final Widget buttonthree;

  HeaderButtonSection({
    required this.buttonone,
    required this.buttontwo,
    required this.buttonthree,
  });


@override
Widget build(BuildContext context) {
  Widget verticalDivider = VerticalDivider(
    color: Colors.grey[300],
    thickness: 1,
  );
  return Container(
    height: 40,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       buttonone,
        verticalDivider,
      buttontwo,
        verticalDivider,
      buttonthree,
      ],
    ),
  );
}
}
