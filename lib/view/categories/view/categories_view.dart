import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:meals_app/core/base/view/base_view.dart';
import 'package:meals_app/view/categoriesDetail/view/categories_detail_view.dart';
import '../viewModel/categori_viewmodel.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CategoriesViewModel>(
        viewModel: CategoriesViewModel(),
        onModelReady: (model) {
          model.init();
        },
        onPageBuilder: (BuildContext context, CategoriesViewModel viewModel) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Meals",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.redAccent,
            ),
            body: Observer(builder: (_) {
              return viewModel.isLoading
                  ? ListView.builder(
                      itemCount: viewModel.categories.length,
                      itemBuilder: ((context, index) {
                        return SizedBox(
                          height: 100,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoriesDetailView(
                                        categories: viewModel.categories[index]
                                                ?.strCategory ??
                                            ""),
                                  ));
                            },
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Image.network(viewModel.categories[index]
                                          ?.strCategoryThumb ??
                                      ""),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    viewModel.categories[index]?.strCategory ??
                                        "",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }))
                  : Center(
                      child: const CircularProgressIndicator(
                      color: Colors.black,
                    ));
            }),
            bottomNavigationBar: Observer(builder: (_) {
              return BottomNavigationBar(
                  selectedFontSize: 15,
                  currentIndex: viewModel.currentIndex,
                  onTap: (index) => viewModel.onTap(index),
                  selectedItemColor: Colors.black,
                  selectedLabelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.redAccent,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite), label: "Favorite"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.replay), label: "Random"),
                  ]);
            }),
          );
        });
  }
}
