import 'package:dart_twitter_api/twitter_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_client/widgets/icons.dart';

class TweetWidget extends ConsumerWidget {
  final Tweet? tweet;

  TweetWidget({required this.tweet});
  @override
  Widget build(BuildContext context, watch) {
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: tweet?.user?.profileImageUrlHttps == null
                ? Container()
                : Image.network(
                    tweet?.user?.profileImageUrlHttps ??
                        "https://dummyimage.com/600x400/728394/ffffff&text=+",
                    fit: BoxFit.cover,
                    errorBuilder: (_, e, __) {
                      return Container();
                    },
                  ),
          ),
        ),
        Expanded(
          flex: 20,
          child: Container(
            margin: EdgeInsets.only(left: 12.w),
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Text(
                            tweet?.user?.name ?? "",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.ssp,
                                color: black,
                                fontWeight: FontWeight.w800),
                          ),
                          Expanded(
                            child: Text(
                              "  @${tweet?.user?.screenName} . ",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14.ssp, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        getTime(),
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 14.ssp, color: Colors.black54),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  child: Text(
                    tweet?.fullText ?? "",
                    style: TextStyle(
                        fontSize: 16.ssp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                tweet?.extendedEntities?.media?[0].mediaUrlHttps == null
                    ? Container()
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          tweet?.extendedEntities?.media?[0].mediaUrlHttps ??
                              "https://dummyimage.com/600x400/728394/ffffff&text=+",
                          errorBuilder: (_, er, __) {
                            return Container();
                          },
                        ),
                      ),
                SizedBox(
                  height: 12.h,
                ),
                tweet?.isQuoteStatus ?? false
                    ? Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey.shade200)),
                        child: QuoteTweet(tweet: tweet?.quotedStatus ?? null))
                    : Container(),
                tweet?.isQuoteStatus ?? false
                    ? SizedBox(
                        height: 12.h,
                      )
                    : Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TweetIcons(
                      icon: "speech",
                    ),
                    TweetIcons(
                      icon: "retweet",
                      count: tweet?.retweetCount,
                    ),
                    TweetIcons(
                      icon: "heart",
                      count: tweet?.favoriteCount,
                    ),
                    TweetIcons(icon: "forward")
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 6,
                color: Colors.black12,
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
          ),
        )
      ],
    );
  }

  String getTime() {
    if (DateTime.now().difference(tweet?.createdAt ?? DateTime.now()).inHours ==
        0) {
      return DateTime.now()
              .difference(tweet?.createdAt ?? DateTime.now())
              .inMinutes
              .toString() +
          "m";
    }
    return DateTime.now()
            .difference(tweet?.createdAt ?? DateTime.now())
            .inHours
            .toString() +
        "h";
  }
}

class QuoteTweet extends StatelessWidget {
  final Tweet? tweet;

  const QuoteTweet({Key? key, required this.tweet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: tweet?.user?.profileImageUrlHttps == null
                ? Container()
                : Image.network(
                    tweet?.user?.profileImageUrlHttps ??
                        "https://dummyimage.com/600x400/728394/ffffff&text=+",
                    fit: BoxFit.cover,
                    errorBuilder: (_, e, __) {
                      return Container();
                    },
                  ),
          ),
        ),
        Expanded(
          flex: 17,
          child: Container(
            padding: EdgeInsets.only(left: 8.h, top: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: tweet?.user?.name ?? "",
                        style: TextStyle(
                            fontSize: 14.ssp,
                            color: black,
                            fontWeight: FontWeight.w800),
                      ),
                      TextSpan(
                          text: "  @${tweet?.user?.screenName}",
                          style:
                              TextStyle(fontSize: 14.ssp, color: Colors.grey))
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  child: Text(
                    tweet?.fullText ?? "",
                    style: TextStyle(
                        fontSize: 16.ssp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                tweet?.extendedEntities?.media == null
                    ? Container()
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child:
                            tweet?.extendedEntities?.media?[0].mediaUrlHttps ==
                                    null
                                ? Container()
                                : Image.network(
                                    tweet?.extendedEntities?.media?[0]
                                            .mediaUrlHttps ??
                                        "https://dummyimage.com/600x400/728394/ffffff&text=+",
                                    errorBuilder: (_, er, __) {
                                      return Container();
                                    },
                                  ),
                      ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
          ),
        )
      ],
    );
  }
}
