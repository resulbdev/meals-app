import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meals_app/view/mealDetail/model/meal_detail.dart';

abstract class IMealDetailService {
  final Dio dio;
  IMealDetailService(this.dio);

  Future<MealDetail?> fetchMealDetailItem(String meals);
}

class CategoriesDetailService extends IMealDetailService {
  CategoriesDetailService(Dio dio) : super(dio);

  @override
  Future<MealDetail?> fetchMealDetailItem(String meals) async {
    final response = await dio
        .get('https://www.themealdb.com/api/json/v1/1/search.php?s=$meals');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      return MealDetail.fromJson(jsonBody);
    }
    return null;
  }
}
