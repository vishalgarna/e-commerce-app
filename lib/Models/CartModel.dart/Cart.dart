

import 'package:freezed_annotation/freezed_annotation.dart';

import '../CARTProductModel/CartProducts.dart';

part 'Cart.freezed.dart';
part 'Cart.g.dart';
@freezed
abstract class CartModel  with _$CartModel {
  factory CartModel({
    required String userId,
    required List<CartProductModel>products,
    required String cartId
}) =_CartModel;

  factory CartModel.fromJson(Map<String,dynamic>json) => _$CartModelFromJson(json);
}

extension cartext on CartModel {
  double get grandtotal {
    return products.map((e)=>(e.product.ProductPrice )! * e.qty).fold(0 , (p,c)=>p + c!);
  }
}