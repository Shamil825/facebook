import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            story: dq,
            storystatus: true,
            storytext: "add to story",
            avatarimage: dq,
            displayborder: true,
            
          ),
          StoryCard(
              story: lalstory,
              storystatus: false,
              avatarimage: lal,
              storytext: "Mohanlal",
              displayborder: true,
              ),
          StoryCard(
              story: mamootystory,
              storystatus: false,
              avatarimage: mamooty,
              storytext: "Mamooty",
              displayborder: true,
              ),
          StoryCard(
              story: strellstory,
              storystatus: false,
              avatarimage: strell,
              storytext: "Strell",
              displayborder: true,
              ),
          StoryCard(
              story: sebinstory,
              storystatus: false,
              avatarimage: sebin,
              storytext: "Sebin Cyriac",
              displayborder: true,
             ),
          StoryCard(
              story: rajstory,
              storystatus: false,
              avatarimage: raj,
              storytext: "Real Raj",
              displayborder: true,
             )
        ],
      ),
    );
  }
}
