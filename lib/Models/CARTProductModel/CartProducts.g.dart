// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CartProducts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductModelImpl _$$CartProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CartProductModelImpl(
      qty: (json['qty'] as num).toDouble(),
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartProductModelImplToJson(
        _$CartProductModelImpl instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'product': instance.product,
    };
