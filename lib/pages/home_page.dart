import 'package:dart_twitter_api/api/tweets/data/tweet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/api/tweet_api.dart';
import 'package:twitter_client/widgets/app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_client/widgets/custom_drawer.dart';
import 'package:twitter_client/widgets/tweet.dart';
import '../api/tweet_api.dart';
import 'package:twitter_client/styles.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final tweetsApi = watch(timelineApiProvider);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: SafeArea(
        child: tweetsApi.when(
            data: (tweets) => TweetTimeLine(tweets: tweets),
            loading: () => Center(
                  child: CircularProgressIndicator(),
                ),
            error: (e, _) => Center(
                  child: TextButton(
                    onPressed: () async {
                      await context
                          .read(timelineApiProvider.notifier)
                          .getTimeline();
                    },
                    child: Text("Retry"),
                  ),
                )),
      ),
    );
  }
}

class TweetTimeLine extends ConsumerWidget {
  final List<Tweet> tweets;

  TweetTimeLine({required this.tweets});
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return RefreshIndicator(
      onRefresh: () async =>
          await context.read(timelineApiProvider.notifier).getTimeline(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: tweets.length,
          itemBuilder: (_, index) {
            return Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: TweetWidget(
                  tweet: tweets[index],
                ));
          },
        ),
      ),
    );
  }
}
