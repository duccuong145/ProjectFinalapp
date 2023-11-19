import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/category_models.dart';

class CategoryProvider extends ChangeNotifier {
  Future<List<Category>> getCategoryr() async {
    const url = 'http://apiforlearning.zendvn.com/api/mobile/categories';
    try {
      final respone = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(respone.body);
      List<Category> data = List<Category>.from(
          jsonData.map((cate) => Category.fromJson(jsonEncode(cate)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }
}
