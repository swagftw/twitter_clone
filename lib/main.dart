import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twitter_client/auth/twitter_auth.dart';
import 'package:twitter_client/pages/home_page.dart';
import 'package:twitter_client/styles.dart';
import 'pages/sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: TwitterTestClient()));
}

class TwitterTestClient extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final firebaseFutureProvider = watch(firebaseProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
        accentColor: accentColor,
      ),
      home: firebaseFutureProvider.when(
        data: (app) => InitializeApp(),
        loading: () => Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: SvgPicture.asset("assets/images/twitter.svg"),
            ),
          ),
        ),
        error: (err, _) => Scaffold(
          body: Center(
            child: Text(err.toString()),
          ),
        ),
      ),
    );
  }
}

class InitializeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      allowFontScaling: true,
      designSize: Size(size.width, size.height),
      builder: () => AuthWidgetBuilder(),
    );
  }
}

class AuthWidgetBuilder extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final autState = watch(authStateProvider);
    return autState.when(
      data: (user) => user == null ? SignIn() : HomePage(),
      loading: () => Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (err, _) => Scaffold(
        body: Center(
          child: Text(err.toString()),
        ),
      ),
    );
  }
}

final authStateProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(twitterAuthProvider).authStateChanges();
});
