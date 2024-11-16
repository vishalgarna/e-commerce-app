// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      userId: json['userId'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cartId: json['cartId'] as String,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'products': instance.products,
      'cartId': instance.cartId,
    };
