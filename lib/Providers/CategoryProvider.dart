

import 'package:riverpod/riverpod.dart';
import '../Models/category.model/category.dart';
import '../Services/ApiServices.dart';

final CategoryProvider = FutureProvider<List<CategoryModel>?>((ref){

    final repo = ref.watch(apiservice);
    return repo.GetCategories();
});