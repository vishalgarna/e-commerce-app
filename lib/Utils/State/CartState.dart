
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../Models/CartModel.dart/Cart.dart';


part 'CartState.freezed.dart';
@freezed
class CartState with _$CartState {
  factory CartState({
     // CartModel ? cartmodel,
    CartModel ? cartmodel,
    @Default(false) bool isloading

}) = _CartState;
}