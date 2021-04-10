import 'package:dart_twitter_api/twitter_api.dart' as dta;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twitter_client/api/twitter_api.dart';
import 'package:twitter_client/env.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_twitter_login/flutter_twitter_login.dart';

class TwitterAuthentication {
  TwitterAuthentication(this._twitterLogin, this._ref);
  TwitterLogin _twitterLogin;
  ProviderReference _ref;

  Future login() async {
    final pref = await SharedPreferences.getInstance();
    final result = await _twitterLogin.authorize();
    final cred = TwitterAuthProvider.credential(
        accessToken: result.session.token, secret: result.session.secret);

    await pref.setString("name", result.session.username);
    await pref.setString("accessToken", cred.accessToken ?? "");
    await pref.setString("secret", cred.secret ?? "");
    final userCred = await FirebaseAuth.instance.signInWithCredential(cred);

    _ref.read(twitterApiClientProvider).state = dta.TwitterApi(
      client: dta.TwitterClient(
        consumerKey: const String.fromEnvironment('CONSUMER_KEY'),
    consumerSecret: const String.fromEnvironment('CONSUMER_SECRET'),
        secret: cred.secret ?? "",
        token: cred.accessToken ?? "",
      ),
    );
    _ref.read(userProvider).state = userCred.user;
    authStateChanges();
  }

  Stream<User?> authStateChanges() {
    return FirebaseAuth.instance.userChanges().map((event) => event);
  }

  Future signOut() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove("accessToken");
    await pref.remove("secret");
    await FirebaseAuth.instance.signOut();
  }
}

final firebaseProvider = FutureProvider<FirebaseApp>((ref) async {
  final pref = await SharedPreferences.getInstance();
  final secret = pref.getString("secret");
  final accessToken = pref.getString("accessToken");
  ref.read(sharePrefProvider).state = pref;
  ref.read(twitterApiClientProvider).state = dta.TwitterApi(
      client: dta.TwitterClient(
    consumerKey: const String.fromEnvironment('CONSUMER_KEY'),
    consumerSecret: const String.fromEnvironment('CONSUMER_SECRET'),
    secret: secret ?? "",
    token: accessToken ?? "",
  ));
  return await Firebase.initializeApp();
});

final twitterAuthProvider = Provider<TwitterAuthentication>((ref) {
  final twitterLogin = ref.watch(twitterLoginProvider);
  return TwitterAuthentication(twitterLogin, ref);
});

final twitterLoginProvider = Provider<TwitterLogin>((ref) {
  final env = ref.read(environmentProvider);
  return TwitterLogin(
    consumerKey: const String.fromEnvironment('CONSUMER_KEY'),
    consumerSecret: const String.fromEnvironment('CONSUMER_SECRET'),
  );
});

final userProvider = StateProvider<User?>((ref) {
  return FirebaseAuth.instance.currentUser;
});

final sharePrefProvider = StateProvider<SharedPreferences?>((ref) {
  return null;
});
