import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Environment {
  String get baseUrl => dotenv.get('BASE_URL', fallback: '');
  String get giphyApiKey => dotenv.get('GIPHY_API_KEY', fallback: '');
}
