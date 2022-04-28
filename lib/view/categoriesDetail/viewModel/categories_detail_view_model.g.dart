// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriesDetailViewModel on _CategoriesDetailViewModelBase, Store {
  final _$categoriesDetailAtom =
      Atom(name: '_CategoriesDetailViewModelBase.categoriesDetail');

  @override
  List<Meals?> get categoriesDetail {
    _$categoriesDetailAtom.reportRead();
    return super.categoriesDetail;
  }

  @override
  set categoriesDetail(List<Meals?> value) {
    _$categoriesDetailAtom.reportWrite(value, super.categoriesDetail, () {
      super.categoriesDetail = value;
    });
  }

  final _$categoriesDetailModelAtom =
      Atom(name: '_CategoriesDetailViewModelBase.categoriesDetailModel');

  @override
  CategoriesDetail? get categoriesDetailModel {
    _$categoriesDetailModelAtom.reportRead();
    return super.categoriesDetailModel;
  }

  @override
  set categoriesDetailModel(CategoriesDetail? value) {
    _$categoriesDetailModelAtom.reportWrite(value, super.categoriesDetailModel,
        () {
      super.categoriesDetailModel = value;
    });
  }

  final _$isLoadingAtom =
      Atom(name: '_CategoriesDetailViewModelBase.isLoading');

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

  final _$fetchAsyncAction =
      AsyncAction('_CategoriesDetailViewModelBase.fetch');

  @override
  Future<void> fetch(String categories) {
    return _$fetchAsyncAction.run(() => super.fetch(categories));
  }

  final _$_CategoriesDetailViewModelBaseActionController =
      ActionController(name: '_CategoriesDetailViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_CategoriesDetailViewModelBaseActionController
        .startAction(name: '_CategoriesDetailViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_CategoriesDetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init(String categories) {
    final _$actionInfo = _$_CategoriesDetailViewModelBaseActionController
        .startAction(name: '_CategoriesDetailViewModelBase.init');
    try {
      return super.init(categories);
    } finally {
      _$_CategoriesDetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categoriesDetail: ${categoriesDetail},
categoriesDetailModel: ${categoriesDetailModel},
isLoading: ${isLoading}
    ''';
  }
}
