import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:meals_app/core/base/view/base_view.dart';
import 'package:meals_app/view/categoriesDetail/viewModel/categories_detail_view_model.dart';
import 'package:meals_app/view/mealDetail/view/meal_detail_view.dart';

class CategoriesDetailView extends StatelessWidget {
  final String categories;
  const CategoriesDetailView({required this.categories, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CategoriesDetailViewModel>(
        viewModel: CategoriesDetailViewModel(),
        onModelReady: (model) {
          model.init(categories);
        },
        onPageBuilder:
            (BuildContext context, CategoriesDetailViewModel viewModel) {
          return Scaffold(
              appBar: AppBar(
                title: Text(
                  categories,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.redAccent,
              ),
              body: Observer(
                builder: (_) {
                  return viewModel.isLoading
                      ? ListView.builder(
                          itemCount: viewModel.categoriesDetail.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MealDetailView(
                                          meals: viewModel
                                                  .categoriesDetail[index]
                                                  ?.strMeal ??
                                              ""),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Divider(
                                            color: Colors.redAccent,
                                            height: 40,
                                            thickness: 10,
                                          ),
                                          Text(
                                            viewModel.categoriesDetail[index]
                                                    ?.strMeal ??
                                                "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          ClipRRect(
                                            child: Image.network(viewModel
                                                    .categoriesDetail[index]
                                                    ?.strMealThumb ??
                                                ""),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                          }),
                        )
                      : Center(
                          child: CircularProgressIndicator(
                          color: Colors.black,
                        ));
                },
              ));
        });
  }
}
