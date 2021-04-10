// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_client/auth/twitter_auth.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter_client/main.dart';

import 'package:twitter_client/pages/sign_in.dart';
import 'package:network_image_mock/network_image_mock.dart';

class MockFirebaseApp extends Mock implements FirebaseApp {}

void main() {
  testWidgets('Firebase app loading test -> AuthWidget loading test',
      (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firebaseProvider.overrideWithProvider(FutureProvider((ref) {
              return Future.value(MockFirebaseApp());
            })),
            authStateProvider
                .overrideWithProvider(StreamProvider.autoDispose((ref) {
              return Stream.value(null);
            }))
          ],
          child: MaterialApp(
            home: TwitterTestClient(),
          ),
        ),
      );

      // expecting loading state
      expect(find.byType(SvgPicture), findsOneWidget);
      await tester.pump();

      // expecting authwidgetbuild widget to load in tree
      expect(find.byType(AuthWidgetBuilder), findsOneWidget);

      //expecting loading state for authentication flow
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await tester.pump();

      //expecting SignIn page as no user is provided
      expect(find.byType(SignIn), findsOneWidget);
    });
  });
}
