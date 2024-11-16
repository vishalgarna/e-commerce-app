
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../Models/productModel/product.dart';

part 'ProductState.freezed.dart';

@freezed
class ProductState with _$ProductState{

  //@Default lagane se: Default value automatically set
  // hoti hai, null pointer exceptions avoid hote hain.

  // @Default nahi lagane se: Field null ho sakti
  // hai agar manually initialize nahi ki gayi,
  // jo errors aur crashes cause kar sakti hai.
  factory ProductState({
    @Default(<ProductModel> []) List<ProductModel> products,
    @Default(true) bool hasnext,
    @Default(false) bool isLoading ,

}) = _ProductState ;
}