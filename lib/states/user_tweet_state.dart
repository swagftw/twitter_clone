import 'package:dart_twitter_api/api/tweets/data/tweet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_tweet_state.freezed.dart';

@freezed
class UserTweetsState with _$UserTweetsState {
  const factory UserTweetsState.loading() = TweetsLoading;
  const factory UserTweetsState.error() = TweetsError;
  const factory UserTweetsState.myTweets(List<Tweet> tweets) = MyTweetsData;
 
}

@freezed
class UserReTweetsState with _$UserReTweetsState {
  const factory UserReTweetsState.loading() = ReTweetsLoading;
  const factory UserReTweetsState.error() = ReTweetsError;
  const factory UserReTweetsState.myReTweets(List<Tweet> tweets) = MyReTweetsData;
  
}
