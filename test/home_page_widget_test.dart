import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:twitter_client/api/tweet_api.dart';
import 'package:twitter_client/pages/home_page.dart';
import 'package:twitter_client/pages/my_tweets_page.dart';
import 'package:twitter_client/widgets/tweet.dart';

class MockMyTweetProfile extends Mock implements MyTweetProfileApi {}

void main() {
  testWidgets("Testing home page", (tester) async {
    await tester.pumpWidget(
      mockNetworkImagesFor(() {
        return ProviderScope(
          child: MaterialApp(
            home: HomePage(),
          ),
        );
      }),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
