
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../Config/config.dart';

part 'category.g.dart';
part 'category.freezed.dart';



// ye cateforyfromjson fun one by  one dart object me create karega using map fun
List<CategoryModel> Categoryfromjson (dynamic str) => List<CategoryModel>.from
    (str.map((data) {
   return CategoryModel.fromJson(data);
}
) ).toList();
@freezed
abstract class CategoryModel with _$CategoryModel {

  factory CategoryModel({

    required String ? id,
    required String ? categoryName,
    required String ? categoryImage
}) = _CategoryModel;

 factory  CategoryModel.fromJson(Map<String , dynamic> json) =>
      _$CategoryModelFromJson(json);

}

extension ImagePath on CategoryModel {
  String get fullImagePath => '${Config.baseurl}/${categoryImage ?? ""}';
}