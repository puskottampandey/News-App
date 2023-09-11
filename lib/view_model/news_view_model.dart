import 'package:newsapp/controller/news_repo.dart';
import 'package:newsapp/models/news_headline_model.dart';

class NewsViewModel {
  final repo = NewsRepositery();

  Future<ModelforHeadLine> fetchChannelHedlines(String source) async {
    final response = await repo.fetchChannelHedlines(source);
    return response;
  }
}
