import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
 final String story;
 final bool storystatus; 
 final String avatarimage;
 final String storytext;
 final bool displayborder;
 


  StoryCard({
   required this.story,
   required this.storystatus,
required this.avatarimage,
required this.storytext,
required this.displayborder,

  });
  

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      margin: EdgeInsets.only(top: 10,bottom: 10,left: 5,right: 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(story),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 2,
                    left: 2,
                    child: storystatus ? CircularButton(height: 40,width: 40,
                      btnaction: () {
                        print("add story");
                      },
                      buttonicon: Icons.add,
                      buttoncolor: Colors.blue,
                    ): Avatar(imagename: avatarimage, displaystatus:false,displayBorder: displayborder,height: 35,width: 35,)),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    storytext != null ? storytext :"",style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                )
              ],
            ),
          );
  }
}