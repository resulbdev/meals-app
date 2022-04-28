import 'package:dio/dio.dart';
import 'package:meals_app/view/mealDetail/model/meal_detail.dart';
import 'package:meals_app/view/mealDetail/service/meal_detail_service.dart';
import 'package:mobx/mobx.dart';
part 'meal_detail_view_model.g.dart';

class MealDetailViewModel = _MealDetailViewModelBase with _$MealDetailViewModel;

abstract class _MealDetailViewModelBase with Store {
  late IMealDetailService mealDetailService;
  @observable
  List<Meals?> mealDetail = [];

  @observable
  MealDetail? mealDetailModel;

  @observable
  bool isLoading = true;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetch(String meals) async {
    changeLoading();
    mealDetail =
        (await mealDetailService.fetchMealDetailItem(meals))?.meals ?? [];
    changeLoading();
  }

  @action
  void init(String meals) {
    mealDetailService = CategoriesDetailService(Dio(BaseOptions(
        baseUrl:
            'https://www.themealdb.com/api/json/v1/1/search.php?s=$meals')));
    fetch(meals);
  }
}
