import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:meals_app/core/base/view/base_view.dart';
import 'package:meals_app/view/mealDetail/viewModel/meal_detail_view_model.dart';

class MealDetailView extends StatelessWidget {
  final String meals;
  const MealDetailView({required this.meals, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MealDetailViewModel>(
        viewModel: MealDetailViewModel(),
        onModelReady: (model) {
          model.init(meals);
        },
        onPageBuilder: (BuildContext context, MealDetailViewModel viewModel) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                meals,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.redAccent,
            ),
            body: Observer(builder: (_) {
              return viewModel.isLoading
                  ? ListView.builder(
                      itemCount: viewModel.mealDetail.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.network(
                              viewModel.mealDetail[index]?.strMealThumb ?? "",
                            ),
                            Text(viewModel.mealDetail[index]?.strInstructions ??
                                "")
                          ],
                        );
                      })
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            }),
          );
        });
  }
}
