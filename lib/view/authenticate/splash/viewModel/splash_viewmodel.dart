import 'package:flutter/material.dart';
import 'package:meals_app/view/categories/view/categories_view.dart';
import 'package:mobx/mobx.dart';
part 'splash_viewmodel.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store {
  init(BuildContext context) {
    Future<void>.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CategoriesView()),
      );
    });
  }
}
