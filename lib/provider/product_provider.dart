import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/model/product_model.dart';
import 'package:provider_state_management/service/product_api.dart';

class NewsProvider with ChangeNotifier {
  List<ProductModel> newsList = [];

  Future<List<ProductModel>> getNewsData() async {
    newsList = await NewsApiService.fetchnewsData();
    return newsList;
  }
}
