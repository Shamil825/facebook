import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(imagename: dq,displaystatus: false),
      title: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.black),
          hintText: "whats in your mind",
          enabledBorder:InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none, 
        ),
      ),
    );
  }
}
