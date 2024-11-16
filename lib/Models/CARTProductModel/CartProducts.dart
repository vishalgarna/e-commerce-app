

// CartProducts

import 'package:freezed_annotation/freezed_annotation.dart';

import '../productModel/product.dart';

part 'CartProducts.freezed.dart';
part 'CartProducts.g.dart';
@freezed
abstract class CartProductModel with _$CartProductModel{

  factory CartProductModel({
    required double qty,
    required ProductModel product,
}) =_CartProductModel;

  factory CartProductModel.fromJson(Map<String ,dynamic>json) => _$CartProductModelFromJson(json);

}
