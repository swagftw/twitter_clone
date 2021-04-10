import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:twitter_client/api/tweet_api.dart';
import 'package:twitter_client/pages/my_tweets_page.dart';

class MockMyTweetProfile extends Mock implements MyTweetProfileApi {}

void main() {
  testWidgets("Testing my tweets page", (tester) async {
    MockMyTweetProfile mockMyTweetProfile = MockMyTweetProfile();
    when(mockMyTweetProfile.getMyTweets())
        .thenAnswer((_) => Future.value(null));
    await tester.pumpWidget(
      mockNetworkImagesFor(() {
        return ProviderScope(
          child: MaterialApp(
            home: MyTweetsPage(),
          ),
        );
      }),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
