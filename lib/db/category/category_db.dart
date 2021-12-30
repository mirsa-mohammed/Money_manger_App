import 'package:hive/hive.dart';
import 'package:money_manager/models/category/category_model.dart';

abstract class CategoryDbFunctions {
 Future <List<CategoryModel>> getCategories();
  Future<void> insertCategory(CategoryModel value);
}

const CATEGORY_DB_NAME = 'category-database';

class CategoryDb implements CategoryDbFunctions {
  @override
  Future<void> insertCategory(CategoryModel value) async {

    // add 
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    await _categoryDB.add(value);
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    // display
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    // .toList() to convert to List
    return _categoryDB.values.toList();
  }
}