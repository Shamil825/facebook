import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/bluetick.dart';

import 'headerButtonSection.dart';

class PostCard extends StatelessWidget {
  final String imagename;
  final String avatarname;
  final String publishedAt;
  final String postcaption;
  final String postpic;
  final bool verified;
  final String likecount;
  final String commentcount;
  final String sharecount;
  final String avatarimg;

  PostCard({
    required this.imagename,
    required this.avatarname,
    required this.publishedAt,
    required this.postcaption,
    required this.postpic,
    this.verified = false,
    required this.likecount,
    required this.commentcount,
    required this.sharecount,
    required this.avatarimg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postcardheader(),
          posttext(),
          postimage(),
          footerSection(),
          Divider(thickness: 1, color: Colors.grey[300]),
          HeaderButtonSection(
              buttonone: headerbuttons(
                  buttonaction: () {
                    print("like button clicked");
                  },
                  buttonicon: Icons.thumb_up_alt_outlined,
                  buttoniconcolor: Colors.grey,
                  buttontext: "Like"),
              buttontwo: headerbuttons(
                  buttonaction: () {
                    print("comment button clicked");
                  },
                  buttonicon: Icons.comment,
                  buttoniconcolor: Colors.grey,
                  buttontext: "Comment"),
              buttonthree: headerbuttons(
                  buttonaction: () {
                    print("shared button clicked");
                  },
                  buttonicon: Icons.share,
                  buttoniconcolor: Colors.grey,
                  buttontext: "Share")),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 10,
                    )),
                SizedBox(width: 5),
                textDisplay(label: likecount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                textDisplay(label: commentcount),
                SizedBox(width: 5),
                textDisplay(label: "comments"),
                SizedBox(width: 10),
                textDisplay(label: sharecount),
                SizedBox(width: 5),
                textDisplay(label: "shares"),
                SizedBox(width: 10),
                Avatar(
                  imagename: avatarimg,
                  displaystatus: false,
                  height: 30,
                  width: 30,
                  displayBorder: false,
                ),
                IconButton(
                  onPressed: () {
                    print("drop down");
                  },
                  icon: Icon(Icons.arrow_drop_down),
                  color: Colors.grey[700],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textDisplay({
    required String label,
  }) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget postimage() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postpic),
    );
  }

  Widget posttext() {
    return postcaption != null && postcaption !="" ?
    
    Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postcaption == null ? " " : postcaption,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    ) : SizedBox();
  }

  Widget postcardheader() {
    return ListTile(
      leading: Avatar(
        displaystatus: false,
        imagename: imagename,
        displayBorder: false,
      ),
      title: Row(
        children: [
          Text(
            avatarname,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          verified ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("pressed 3 dot");
        },
        icon: Icon(Icons.more_horiz),
        color: Colors.grey[700],
      ),
    );
  }
}
