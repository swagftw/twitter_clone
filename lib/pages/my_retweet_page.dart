import 'package:dart_twitter_api/api/tweets/data/tweet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/api/tweet_api.dart';
import 'package:twitter_client/styles.dart';
import 'package:twitter_client/widgets/tweet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReTweetsPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final tweetsProvider = watch(reTweetProfileApiProvider);
    return tweetsProvider.when(
        loading: () => Center(
              child: CircularProgressIndicator(),
            ),
        error: () => Center(
              child: TextButton(
                onPressed: () {},
                child: Text("Retry"),
              ),
            ),
        myReTweets: (tweets) => MyReTweetTimeLine(tweets: tweets));
  }
}

class MyReTweetTimeLine extends ConsumerWidget {
  final List<Tweet> tweets;

  MyReTweetTimeLine({required this.tweets});
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return tweets.length == 0
        ? Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "No Retweets found",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () async {
                      await context
                          .read(reTweetProfileApiProvider.notifier)
                          .getReTweets();
                    },
                    child: Text("Retry"))
              ],
            ),
          )
        : RefreshIndicator(
            onRefresh: () async => await context
                .read(reTweetProfileApiProvider.notifier)
                .getReTweets(),
            child: Container(
              color: backgroundColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: tweets.length,
                  itemBuilder: (_, index) {
                    return tweets.length == 0
                        ? Center(
                            child: Text("No retweets yet"),
                          )
                        : Padding(
                            padding: EdgeInsets.only(top: 12.h),
                            child: TweetWidget(
                              tweet: tweets[index],
                            ));
                  },
                ),
              ),
            ),
          );
  }
}
