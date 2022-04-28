// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MealDetailViewModel on _MealDetailViewModelBase, Store {
  final _$mealDetailAtom = Atom(name: '_MealDetailViewModelBase.mealDetail');

  @override
  List<Meals?> get mealDetail {
    _$mealDetailAtom.reportRead();
    return super.mealDetail;
  }

  @override
  set mealDetail(List<Meals?> value) {
    _$mealDetailAtom.reportWrite(value, super.mealDetail, () {
      super.mealDetail = value;
    });
  }

  final _$mealDetailModelAtom =
      Atom(name: '_MealDetailViewModelBase.mealDetailModel');

  @override
  MealDetail? get mealDetailModel {
    _$mealDetailModelAtom.reportRead();
    return super.mealDetailModel;
  }

  @override
  set mealDetailModel(MealDetail? value) {
    _$mealDetailModelAtom.reportWrite(value, super.mealDetailModel, () {
      super.mealDetailModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_MealDetailViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_MealDetailViewModelBase.fetch');

  @override
  Future<void> fetch(String meals) {
    return _$fetchAsyncAction.run(() => super.fetch(meals));
  }

  final _$_MealDetailViewModelBaseActionController =
      ActionController(name: '_MealDetailViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_MealDetailViewModelBaseActionController.startAction(
        name: '_MealDetailViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_MealDetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init(String meals) {
    final _$actionInfo = _$_MealDetailViewModelBaseActionController.startAction(
        name: '_MealDetailViewModelBase.init');
    try {
      return super.init(meals);
    } finally {
      _$_MealDetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mealDetail: ${mealDetail},
mealDetailModel: ${mealDetailModel},
isLoading: ${isLoading}
    ''';
  }
}
