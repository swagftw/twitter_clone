import 'package:dart_twitter_api/twitter_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_client/env.dart';

final twitterApiClientProvider = StateProvider<TwitterApi>((ref) {
  final env = ref.watch(environmentProvider);
  return TwitterApi(
    client: TwitterClient(
      consumerKey: const String.fromEnvironment('CONSUMER_KEY'),
      consumerSecret: const String.fromEnvironment('CONSUMER_SECRET'),
      secret: "",
      token: "",
    ),
  );
});
