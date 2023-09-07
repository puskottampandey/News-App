import 'package:newsapp/controller/news_repo.dart';
import 'package:newsapp/models/news_headline_model.dart';

class NewsViewModel {
  final _repo = NewsRepositery();

  Future<ModelforHeadLine> fetchChannelHedlines() async {
    final response = await _repo.fetchChannelHedlines();
    return response;
  }
}
