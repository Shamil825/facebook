import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Roombutton(),
          Avatar(imagename: dq,displaystatus: true,),
          Avatar(imagename: lal,displaystatus: true,),
          Avatar(imagename: mamooty,displaystatus: true,),
          Avatar(imagename: raj,displaystatus: true,),
          Avatar(imagename: sebin,displaystatus: true,),
          Avatar(imagename: strell,displaystatus: true,),
          Avatar(imagename: dq,displaystatus: true,),
          Avatar(imagename: lal,displaystatus: true,),
          Avatar(imagename: mamooty,displaystatus: true,),
          Avatar(imagename: raj,displaystatus: true,),
          Avatar(imagename: sebin,displaystatus: true,),
          Avatar(imagename: strell,displaystatus: true,),
        ],
      ),
    );
  }
}

Widget Roombutton() {
  return Container(
    padding: EdgeInsets.only(right: 5),
    child: OutlineButton.icon(
      shape: StadiumBorder(),
      borderSide: BorderSide(color: Colors.blue),
      onPressed: () {
        print("Room create button");
      },
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text("Create \nRoom"),
    ),
  );
}
