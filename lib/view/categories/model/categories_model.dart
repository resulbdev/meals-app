// To parse this JSON data, do
//
//     final categoriesModel = categoriesModelFromJson(jsonString);

import 'dart:convert';

CategoriesModel categoriesModelFromJson(String str) => CategoriesModel.fromJson(json.decode(str));

String categoriesModelToJson(CategoriesModel data) => json.encode(data.toJson());

class CategoriesModel {
    CategoriesModel({
        this.categories,
    });

    List<Category>? categories;

    factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories!.map((x) => x.toJson())),
    };
}

class Category {
    Category({
        this.idCategory,
        this.strCategory,
        this.strCategoryThumb,
        this.strCategoryDescription,
    });

    String? idCategory;
    String? strCategory;
    String? strCategoryThumb;
    String? strCategoryDescription;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        idCategory: json["idCategory"],
        strCategory: json["strCategory"],
        strCategoryThumb: json["strCategoryThumb"],
        strCategoryDescription: json["strCategoryDescription"],
    );

    Map<String, dynamic> toJson() => {
        "idCategory": idCategory,
        "strCategory": strCategory,
        "strCategoryThumb": strCategoryThumb,
        "strCategoryDescription": strCategoryDescription,
    };
}
