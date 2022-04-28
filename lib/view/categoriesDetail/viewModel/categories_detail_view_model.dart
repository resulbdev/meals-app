import 'package:dio/dio.dart';
import 'package:meals_app/view/categoriesDetail/model/categories_detail_model.dart';
import 'package:meals_app/view/categoriesDetail/service/categories_detail_service.dart';
import 'package:mobx/mobx.dart';
part 'categories_detail_view_model.g.dart';

class CategoriesDetailViewModel = _CategoriesDetailViewModelBase
    with _$CategoriesDetailViewModel;

abstract class _CategoriesDetailViewModelBase with Store {
  late ICategoriesDetailService categoriesDetailService;
  @observable
  List<Meals?> categoriesDetail = [];

  @observable
  CategoriesDetail? categoriesDetailModel;

  @observable
  bool isLoading = true;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetch(String categories) async {
    changeLoading();
    categoriesDetail =
        (await categoriesDetailService.fetchCategoriesDetailItem(categories))
                ?.meals ??
            [];
    changeLoading();
  }

  @action
  void init(String categories) {
    categoriesDetailService = CategoriesDetailService(Dio(BaseOptions(
        baseUrl:
            'https://www.themealdb.com/api/json/v1/1/filter.php?c=$categories')));
    fetch(categories);
  }
}
