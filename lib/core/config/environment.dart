import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Environment {
  static String get baseUrl => dotenv.env['BASE_URL'] ?? '';
  static String get giphyApiKey => dotenv.env['GIPHY_API_KEY'] ?? '';
}
