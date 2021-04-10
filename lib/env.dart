import 'package:flutter_riverpod/flutter_riverpod.dart';

class Environment {
  static const CONSUMER_KEY = const String.fromEnvironment('consumerKey');
  static const CONSUMER_SECRET = const String.fromEnvironment('consumerSecret');
  static const secret = "secret";
  static const token = "token";
}

final environmentProvider = Provider<Environment>((ref) {
  return Environment();
});
