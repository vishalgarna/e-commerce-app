
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../Config/config.dart';
import '../category.model/category.dart';

part 'product.g.dart';
part 'product.freezed.dart';

List<ProductModel> productfromjson(dynamic str) {
  return List<ProductModel>.from(
      str.map((data) => ProductModel.fromJson(data))
  ).toList();
}


@freezed
abstract class ProductModel  with _$ProductModel {

  factory ProductModel({
    required String  Productid,
    required String  ProductName,
    required CategoryModel  ProductCategory,
    required String  ProductImage ,
    required String ? ProductSku ,
    required String ? ProductStatus ,
    required String ? ProductDescribtion ,
    required int  ? ProductPrice,
    List<String>? RelatedProducts

  }) = _ProductModel;

  factory  ProductModel.fromJson(Map<String , dynamic> json) =>
      _$ProductModelFromJson(json);

}

extension ImagePath on ProductModel {
  String get fullImagePathProduct => '${Config.baseurl}/${ProductImage ?? ""}';
}