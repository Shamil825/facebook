
import 'package:flutter/material.dart';

Widget  headerbuttons({
    required void Function() buttonaction,
    required IconData buttonicon,
    required Color buttoniconcolor,
    required String buttontext,
  }) {
    return FlatButton.icon(
      onPressed: buttonaction,
      icon: Icon(
        buttonicon,
        color: buttoniconcolor,
      ),
      label: Text(buttontext),
    );
  }