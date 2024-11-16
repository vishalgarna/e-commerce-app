// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      Productid: json['_id'] as String,
      ProductName: json['ProductName'] as String,
      ProductCategory: CategoryModel.fromJson(
          json['ProductCategory'] as Map<String, dynamic>),
      ProductImage: json['ProductImage'] as String,
      ProductSku: json['ProductSku'] as String?,
      ProductStatus: json['ProductStatus'] as String?,
      ProductDescribtion: json['ProductDescribtion'] as String?,
      ProductPrice: (json['ProductPrice'] as num?)?.toInt(),
      RelatedProducts: (json['RelatedProducts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'Productid': instance.Productid,
      'ProductName': instance.ProductName,
      'ProductCategory': instance.ProductCategory,
      'ProductImage': instance.ProductImage,
      'ProductSku': instance.ProductSku,
      'ProductStatus': instance.ProductStatus,
      'ProductDescribtion': instance.ProductDescribtion,
      'ProductPrice': instance.ProductPrice,
      'RelatedProducts': instance.RelatedProducts,
    };
