import 'dart:io';

import 'package:dio/dio.dart';
import 'package:meals_app/view/categories/model/categories_model.dart';

abstract class ICategoriesService {
  final Dio dio;
  ICategoriesService(this.dio);

  Future<CategoriesModel?> fetchCategoriesItem();
}

class CategoriesService extends ICategoriesService {
  CategoriesService(Dio dio) : super(dio);

  @override
  Future<CategoriesModel?> fetchCategoriesItem() async {
    final response =
        await dio.get('https://www.themealdb.com/api/json/v1/1/categories.php');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      return CategoriesModel.fromJson(jsonBody);
    }
    return null;
  }
}
