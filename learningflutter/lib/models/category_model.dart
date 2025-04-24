import 'package:flutter/material.dart';
import 'package:learningflutter/images/icons.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;
  static List<CategoryModel> categories = [];

  CategoryModel({
    required this.name,
    required this.boxColor,
    required this.iconPath,
  });
  List<CategoryModel> getCategories() {
    categories.add(
      CategoryModel(
        name: 'Hotdog',
        boxColor: Colors.yellow,
        iconPath: IconsAsset.hotdogIcon,
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Pizza',
        boxColor: Colors.green,
        iconPath: IconsAsset.pizzaIcon,
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Burger',
        boxColor: Colors.blue,
        iconPath: IconsAsset.burgerIcon,
      ),
    );
    return categories;
  }
}
