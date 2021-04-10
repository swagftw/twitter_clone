import 'package:dart_twitter_api/twitter_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/api/twitter_api.dart';
import 'package:twitter_client/states/user_tweet_state.dart';

//Using Asyncvalue for state
class TimelineApi extends StateNotifier<AsyncValue<List<Tweet>>> {
  TimelineApi(this._api, AsyncValue<List<Tweet>>? tweets)
      : super(tweets ?? AsyncValue.loading()) {
    getTimeline();
  }
  TwitterApi _api;
  Future getTimeline() async {
    if (state != AsyncValue.loading()) {
      state = AsyncValue.loading();
    }
    try {
      List<Tweet> timelineTweets =
          await _api.timelineService.homeTimeline(count: 30);
      state = AsyncValue.data(timelineTweets);
      timelineTweets.forEach((element) {});
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}

//Using freezed unions for state
class MyTweetProfileApi extends StateNotifier<UserTweetsState> {
  MyTweetProfileApi(this._api) : super(UserTweetsState.loading()) {
    getMyTweets();
  }

  TwitterApi _api;
  Future getMyTweets() async {
    try {
      if (state != UserTweetsState.loading()) {
        state = UserTweetsState.loading();
      }
      List<Tweet> tweets = await _api.timelineService.userTimeline();
      state = UserTweetsState.myTweets(tweets);
    } catch (e) {
      state = UserTweetsState.error();
    }
  }
}

class MyReTweetProfileApi extends StateNotifier<UserReTweetsState> {
  MyReTweetProfileApi(this._api) : super(UserReTweetsState.loading()) {
    getReTweets();
  }

  TwitterApi _api;
  Future getReTweets() async {
    try {
      if (state != UserTweetsState.loading()) {
        state = UserReTweetsState.loading();
      }
      List<Tweet> tweets = await _api.tweetService.retweetsOfMe();
      state = UserReTweetsState.myReTweets(tweets);
    } catch (e) {
      state = UserReTweetsState.error();
    }
  }
}

final timelineApiProvider =
    StateNotifierProvider<TimelineApi, AsyncValue<List<Tweet>>>((ref) {
  final twitterApiClient = ref.watch(twitterApiClientProvider).state;
  return TimelineApi(twitterApiClient, null);
});

final myTweetProfileApiProvider =
    StateNotifierProvider<MyTweetProfileApi, UserTweetsState>((ref) {
  final api = ref.watch(twitterApiClientProvider).state;
  return MyTweetProfileApi(api);
});

final reTweetProfileApiProvider =
    StateNotifierProvider<MyReTweetProfileApi, UserReTweetsState>((ref) {
  final api = ref.watch(twitterApiClientProvider).state;
  return MyReTweetProfileApi(api);
});
