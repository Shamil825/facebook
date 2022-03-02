import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 447,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: jay3,
                  name: "Jaya Surya",
                  mutualfriends: "4 Mutual Friends",
                  imageheight: 370,
                ),
                SuggestionCard(
                  avatar: kunja,
                  name: "Kunchacko Boban",
                  mutualfriends: "6 Mutual Friends",
                  imageheight: 300,
                ),
                SuggestionCard(
                    avatar: ndra,
                    name: "Indrajith",
                    mutualfriends: "7 Mutual Friends",
                    imageheight: 300),
                SuggestionCard(
                    avatar: nivin2,
                    name: "Nivin",
                    mutualfriends: "7 Mutual Friends",
                    imageheight: 300),
                     SuggestionCard(
                  avatar: damu2,
                  mutualfriends: "4 Mutual Friends",
                  name: "Damu",
                  imageheight: 260,
                ),
              ],
            ),
               
          ),
        ],
      ),
    );
  }
}
