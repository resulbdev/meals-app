// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categori_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriesViewModel on _CategoriesViewModelBase, Store {
  final _$currentIndexAtom =
      Atom(name: '_CategoriesViewModelBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$categoriesAtom = Atom(name: '_CategoriesViewModelBase.categories');

  @override
  List<Category?> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<Category?> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$categoriesModelAtom =
      Atom(name: '_CategoriesViewModelBase.categoriesModel');

  @override
  CategoriesModel? get categoriesModel {
    _$categoriesModelAtom.reportRead();
    return super.categoriesModel;
  }

  @override
  set categoriesModel(CategoriesModel? value) {
    _$categoriesModelAtom.reportWrite(value, super.categoriesModel, () {
      super.categoriesModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_CategoriesViewModelBase.isLoading');

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

  final _$fetchAsyncAction = AsyncAction('_CategoriesViewModelBase.fetch');

  @override
  Future<void> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$_CategoriesViewModelBaseActionController =
      ActionController(name: '_CategoriesViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_CategoriesViewModelBaseActionController.startAction(
        name: '_CategoriesViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_CategoriesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init() {
    final _$actionInfo = _$_CategoriesViewModelBaseActionController.startAction(
        name: '_CategoriesViewModelBase.init');
    try {
      return super.init();
    } finally {
      _$_CategoriesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTap(int index) {
    final _$actionInfo = _$_CategoriesViewModelBaseActionController.startAction(
        name: '_CategoriesViewModelBase.onTap');
    try {
      return super.onTap(index);
    } finally {
      _$_CategoriesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
categories: ${categories},
categoriesModel: ${categoriesModel},
isLoading: ${isLoading}
    ''';
  }
}
