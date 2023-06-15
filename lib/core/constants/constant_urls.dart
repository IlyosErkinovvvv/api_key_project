import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConstantUrls {
  // API KEY //
  static String apiKey = dotenv.get('API_KEY');

  // NEWS API URLS //
  static String appleUrl =
      'https://newsapi.org/v2/everything?q=apple&from=2023-04-24&to=2023-04-24&sortBy=popularity&apiKey=$apiKey';
  static String teslaUrl =
      'https://newsapi.org/v2/everything?q=tesla&from=2023-03-25&sortBy=publishedAt&apiKey=$apiKey';
  static String businessUrl =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$apiKey';
  static String technologyUrl =
      'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey';
  static String magazineUrl =
      'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=$apiKey';
}
