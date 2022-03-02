import 'package:facebook/assets.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';

import 'widgets/headerButtonSection.dart';

class Home extends StatelessWidget {
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.blue,
            ),
          ),
          actions: [
            CircularButton(
              btnaction: () {
                print("searchbtn clicked");
              },
              buttonicon: Icons.search,
            ),
            CircularButton(
                btnaction: () {
                  print("messagebtn clicked");
                },
                buttonicon: Icons.message),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonone: headerbuttons(
                  buttonaction: () {},
                  buttonicon: Icons.video_call,
                  buttoniconcolor: Colors.red,
                  buttontext: "live"),
              buttontwo: headerbuttons(
                  buttonaction: () {},
                  buttonicon: Icons.photo_library,
                  buttoniconcolor: Colors.green,
                  buttontext: "photo"),
              buttonthree: headerbuttons(
                  buttonaction: () {},
                  buttonicon: Icons.video_call,
                  buttoniconcolor: Colors.purple,
                  buttontext: "Room"),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              imagename: lal,
              avatarname: "Mohanlal",
              avatarimg: lal,
              publishedAt: "5h",
              postcaption: "He he",
              postpic: lalstory,
              verified: true,
              commentcount: "1k",
              likecount: "10k",
              sharecount: "1k",
            ),
            thickDivider,
             PostCard(
              imagename: dq,
              avatarname: "Dulquer salmaan",
              avatarimg: dq,
              publishedAt: "7h",
              postcaption: "KURUP",
              postpic:dqpost ,
              verified: true,
              commentcount: "2k",
              likecount: "100k",
              sharecount: "3k",
            ),
             thickDivider,
             PostCard(
              imagename: strell,
              avatarname: "STRELL",
              avatarimg: strell,
              publishedAt: "8h",
              postcaption: "sunset",
              postpic:strellpost ,
              verified: true,
              commentcount: "4k",
              likecount: "102k",
              sharecount: "3k",
            ),
            thickDivider,
            SuggestionSection(),
             thickDivider,
             PostCard(
              imagename: sebin,
              avatarname: "Sebin Cyriac",
              avatarimg: sebin,
              publishedAt: "8h",
              postcaption: "",
              postpic:sebinpost ,
              verified: true,
              commentcount: "3k",
              likecount: "10k",
              sharecount: "2k",
            ),
             thickDivider,
             PostCard(
              imagename: raj,
              avatarname: "RealRAJ",
              avatarimg: raj,
              publishedAt: "8h32m",
              postcaption: "",
              postpic:rajpost ,
              verified: true,
              commentcount: "4k",
              likecount: "200k",
              sharecount: "6k",
            ),
             thickDivider,
             PostCard(
              imagename: mamooty,
              avatarname: "Mammootty",
              avatarimg: mamooty,
              publishedAt: "9h",
              postcaption: "",
              postpic:mamootypost ,
              verified: true,
              commentcount: "4k",
              likecount: "200k",
              sharecount: "3k",
            ),
            PostCard(
              imagename: mamooty,
              avatarname: "Mammootty",
              avatarimg: mamooty,
              publishedAt: "9h",
              postcaption: "",
              postpic:mamootypost ,
              verified: true,
              commentcount: "4k",
              likecount: "200k",
              sharecount: "3k",
            ),
          ],
        ),
      ),
    );
  }
}
