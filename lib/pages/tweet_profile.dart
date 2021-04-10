import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:twitter_client/pages/my_retweet_page.dart';
import 'package:twitter_client/pages/my_tweets_page.dart';
import 'package:twitter_client/styles.dart';

class TweetProfile extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: accentColor),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Twitter",
          style: headingStyle.copyWith(
              fontWeight: FontWeight.w600, fontSize: bodyFontSize),
        ),
      ),
      body: PersistentTabView(
        context,
        items: [
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(
              "assets/images/twitter.svg",
            ),
          ),
          PersistentBottomNavBarItem(
              icon: SvgPicture.asset(
            "assets/images/retweet.svg",
            color: accentColor,
          )),
        ],
        controller: PersistentTabController(),
        screens: [MyTweetsPage(), MyReTweetsPage()],
      ),
    );
  }
}
