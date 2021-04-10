import 'package:flutter_riverpod/flutter_riverpod.dart';

class Environment {
  final consumerKey = "ac2YrROq2XsFYTXPkb55PJIR2";
  final consumerSecret = "1M7WzLGHVAZAy44wujvWSD1bFPJF0W3hPmEEIH0oI5q53Y3z4W";
  final secret = "zFr9R7B4BNSmQ2sd0cq12qyOgfO8YJLXiDlOf7SNB6Ceg";
  final token = "1119823417526538240-OWS8DroZJ90rKXuqNcC1flh5W76fO8";
}

final environmentProvider = Provider<Environment>((ref) {
  return Environment();
});
