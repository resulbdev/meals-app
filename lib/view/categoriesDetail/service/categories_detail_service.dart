import 'dart:io';
import 'package:dio/dio.dart';
import '../model/categories_detail_model.dart';

abstract class ICategoriesDetailService {
  final Dio dio;
  ICategoriesDetailService(this.dio);

  Future<CategoriesDetail?> fetchCategoriesDetailItem(String categories);
}

class CategoriesDetailService extends ICategoriesDetailService {
  CategoriesDetailService(Dio dio) : super(dio);

  @override
  Future<CategoriesDetail?> fetchCategoriesDetailItem(String categories) async {
    final response = await dio.get(
        'https://www.themealdb.com/api/json/v1/1/filter.php?c=$categories');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      return CategoriesDetail.fromJson(jsonBody);
    }
    return null;
  }
}
