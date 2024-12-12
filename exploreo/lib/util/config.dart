import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static final String apiUrl = dotenv.env['API_URL'] ?? '';
  static final String imageApiKey = dotenv.env['IMAGE_API_KEY'] ?? '';
}