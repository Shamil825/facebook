import 'dart:ffi';

import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
final String avatar;
final String name;
final String mutualfriends;
final double imageheight;

SuggestionCard({
  required this.avatar,
  required this.name,
  required this.mutualfriends,
  required this.imageheight,
});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggetionDetails(),
        ],
      ),
    );
  }

  Widget suggetionDetails() {
    return Positioned(
      bottom: 10,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        height: 130,
        child: Column(
          children: [
            ListTile(
              title: Text(name !=null ?name:""),
              subtitle: Text(mutualfriends  != null ? mutualfriends :""),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonicon: Icons.group_add_outlined,
                    buttontext: "add friend",
                    buttonTextColor: Colors.white,
                    buttoncolor: Colors.blue,
                    buttonIconColor: Colors.white,
                  ),
                  blankButton(
                      buttoncolor: Colors.grey.shade300,
                      buttonText: "Remove",
                      buttonTextColor: Colors.black)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required Color buttoncolor,
    required String buttonText,
    required Color buttonTextColor,
  }) {
    return FlatButton(
      onPressed: () {
        print("Removed");
      },
      color: buttoncolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget iconButton({
    required IconData buttonicon,
    required String buttontext,
    required Color buttonTextColor,
    required Color buttoncolor,
    required Color buttonIconColor,
  }) {
    return FlatButton.icon(
        color: buttoncolor,
        onPressed: () {
          print("requested");
        },
        icon: Icon(
          buttonicon,
          color: buttonIconColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        label: Text(
          buttontext,
          style: TextStyle(color: buttonTextColor),
        ));
  }

  Widget suggestionImage() {
    return Positioned(
      right: 0,
      left: 0,
      top: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child:avatar !=null ? Image.asset(avatar,
          fit: BoxFit.cover,
          height: imageheight,
        ) : SizedBox()
      ),
    );
  }
}
