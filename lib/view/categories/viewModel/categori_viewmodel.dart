import 'package:dio/dio.dart';
import 'package:meals_app/view/categories/model/categories_model.dart';
import 'package:meals_app/view/categories/service/categories_service.dart';
import 'package:mobx/mobx.dart';
part 'categori_viewmodel.g.dart';

class CategoriesViewModel = _CategoriesViewModelBase with _$CategoriesViewModel;

abstract class _CategoriesViewModelBase with Store {
  late ICategoriesService categoriesService;

  @observable
  int currentIndex = 0;

  @observable
  List<Category?> categories = [];

  @observable
  CategoriesModel? categoriesModel;

  @observable
  bool isLoading = true;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetch() async {
    changeLoading();
    categories =
        (await categoriesService.fetchCategoriesItem())?.categories ?? [];
    changeLoading();
  }

  @action
  void init() {
    categoriesService = CategoriesService(Dio(BaseOptions(
        baseUrl: 'https://www.themealdb.com/api/json/v1/1/categories.php')));
    fetch();
  }

  @action
  void onTap(int index) {
    currentIndex = index;
  }
}
