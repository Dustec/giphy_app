import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Environment {
  static String get baseUrl => dotenv.get('BASE_URL', fallback: '');
  static String get giphyApiKey => dotenv.get('GIPHY_API_KEY', fallback: '');
}
