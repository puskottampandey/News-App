import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/models/categories_news_model.dart';
import 'package:newsapp/models/news_headline_model.dart';

class NewsRepositery {
  Future<ModelforHeadLine> fetchChannelHedlines(String source) async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=$source&apiKey=1f1e06de5bb34210b34c84c412924746";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      return ModelforHeadLine.fromJson(body);
    }
    throw Exception("error");
  }

  Future<CategoriesModel> fetchCategoriesNewsapi(String categories) async {
    String url =
        "https://newsapi.org/v2/everything?q=$categories&apiKey=1f1e06de5bb34210b34c84c412924746";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      return CategoriesModel.fromJson(body);
    }
    throw Exception("error");
  }
}
