import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider_state_management/model/product_model.dart';

class NewsApiService {
  static Future<List<ProductModel>> fetchnewsData() async {
    List<ProductModel> newsList = [];
    var link = Uri.parse('https://fakestoreapi.com/products');
    var response = await http.get(link);
    var data = jsonDecode(response.body);
    ProductModel products;
    for (var i in data) {
      products = ProductModel.fromJson(i);
      newsList.add(products);
    }
    return newsList;
  }
}
