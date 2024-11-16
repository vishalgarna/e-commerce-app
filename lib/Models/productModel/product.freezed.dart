// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get Productid => throw _privateConstructorUsedError;
  String get ProductName => throw _privateConstructorUsedError;
  CategoryModel get ProductCategory => throw _privateConstructorUsedError;
  String get ProductImage => throw _privateConstructorUsedError;
  String? get ProductSku => throw _privateConstructorUsedError;
  String? get ProductStatus => throw _privateConstructorUsedError;
  String? get ProductDescribtion => throw _privateConstructorUsedError;
  int? get ProductPrice => throw _privateConstructorUsedError;
  List<String>? get RelatedProducts => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String Productid,
      String ProductName,
      CategoryModel ProductCategory,
      String ProductImage,
      String? ProductSku,
      String? ProductStatus,
      String? ProductDescribtion,
      int? ProductPrice,
      List<String>? RelatedProducts});

  $CategoryModelCopyWith<$Res> get ProductCategory;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Productid = null,
    Object? ProductName = null,
    Object? ProductCategory = null,
    Object? ProductImage = null,
    Object? ProductSku = freezed,
    Object? ProductStatus = freezed,
    Object? ProductDescribtion = freezed,
    Object? ProductPrice = freezed,
    Object? RelatedProducts = freezed,
  }) {
    return _then(_value.copyWith(
      Productid: null == Productid
          ? _value.Productid
          : Productid // ignore: cast_nullable_to_non_nullable
              as String,
      ProductName: null == ProductName
          ? _value.ProductName
          : ProductName // ignore: cast_nullable_to_non_nullable
              as String,
      ProductCategory: null == ProductCategory
          ? _value.ProductCategory
          : ProductCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      ProductImage: null == ProductImage
          ? _value.ProductImage
          : ProductImage // ignore: cast_nullable_to_non_nullable
              as String,
      ProductSku: freezed == ProductSku
          ? _value.ProductSku
          : ProductSku // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductStatus: freezed == ProductStatus
          ? _value.ProductStatus
          : ProductStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductDescribtion: freezed == ProductDescribtion
          ? _value.ProductDescribtion
          : ProductDescribtion // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductPrice: freezed == ProductPrice
          ? _value.ProductPrice
          : ProductPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      RelatedProducts: freezed == RelatedProducts
          ? _value.RelatedProducts
          : RelatedProducts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get ProductCategory {
    return $CategoryModelCopyWith<$Res>(_value.ProductCategory, (value) {
      return _then(_value.copyWith(ProductCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String Productid,
      String ProductName,
      CategoryModel ProductCategory,
      String ProductImage,
      String? ProductSku,
      String? ProductStatus,
      String? ProductDescribtion,
      int? ProductPrice,
      List<String>? RelatedProducts});

  @override
  $CategoryModelCopyWith<$Res> get ProductCategory;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Productid = null,
    Object? ProductName = null,
    Object? ProductCategory = null,
    Object? ProductImage = null,
    Object? ProductSku = freezed,
    Object? ProductStatus = freezed,
    Object? ProductDescribtion = freezed,
    Object? ProductPrice = freezed,
    Object? RelatedProducts = freezed,
  }) {
    return _then(_$ProductModelImpl(
      Productid: null == Productid
          ? _value.Productid
          : Productid // ignore: cast_nullable_to_non_nullable
              as String,
      ProductName: null == ProductName
          ? _value.ProductName
          : ProductName // ignore: cast_nullable_to_non_nullable
              as String,
      ProductCategory: null == ProductCategory
          ? _value.ProductCategory
          : ProductCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      ProductImage: null == ProductImage
          ? _value.ProductImage
          : ProductImage // ignore: cast_nullable_to_non_nullable
              as String,
      ProductSku: freezed == ProductSku
          ? _value.ProductSku
          : ProductSku // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductStatus: freezed == ProductStatus
          ? _value.ProductStatus
          : ProductStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductDescribtion: freezed == ProductDescribtion
          ? _value.ProductDescribtion
          : ProductDescribtion // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductPrice: freezed == ProductPrice
          ? _value.ProductPrice
          : ProductPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      RelatedProducts: freezed == RelatedProducts
          ? _value._RelatedProducts
          : RelatedProducts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {required this.Productid,
      required this.ProductName,
      required this.ProductCategory,
      required this.ProductImage,
      required this.ProductSku,
      required this.ProductStatus,
      required this.ProductDescribtion,
      required this.ProductPrice,
      final List<String>? RelatedProducts})
      : _RelatedProducts = RelatedProducts;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String Productid;
  @override
  final String ProductName;
  @override
  final CategoryModel ProductCategory;
  @override
  final String ProductImage;
  @override
  final String? ProductSku;
  @override
  final String? ProductStatus;
  @override
  final String? ProductDescribtion;
  @override
  final int? ProductPrice;
  final List<String>? _RelatedProducts;
  @override
  List<String>? get RelatedProducts {
    final value = _RelatedProducts;
    if (value == null) return null;
    if (_RelatedProducts is EqualUnmodifiableListView) return _RelatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductModel(Productid: $Productid, ProductName: $ProductName, ProductCategory: $ProductCategory, ProductImage: $ProductImage, ProductSku: $ProductSku, ProductStatus: $ProductStatus, ProductDescribtion: $ProductDescribtion, ProductPrice: $ProductPrice, RelatedProducts: $RelatedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.Productid, Productid) ||
                other.Productid == Productid) &&
            (identical(other.ProductName, ProductName) ||
                other.ProductName == ProductName) &&
            (identical(other.ProductCategory, ProductCategory) ||
                other.ProductCategory == ProductCategory) &&
            (identical(other.ProductImage, ProductImage) ||
                other.ProductImage == ProductImage) &&
            (identical(other.ProductSku, ProductSku) ||
                other.ProductSku == ProductSku) &&
            (identical(other.ProductStatus, ProductStatus) ||
                other.ProductStatus == ProductStatus) &&
            (identical(other.ProductDescribtion, ProductDescribtion) ||
                other.ProductDescribtion == ProductDescribtion) &&
            (identical(other.ProductPrice, ProductPrice) ||
                other.ProductPrice == ProductPrice) &&
            const DeepCollectionEquality()
                .equals(other._RelatedProducts, _RelatedProducts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      Productid,
      ProductName,
      ProductCategory,
      ProductImage,
      ProductSku,
      ProductStatus,
      ProductDescribtion,
      ProductPrice,
      const DeepCollectionEquality().hash(_RelatedProducts));

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {required final String Productid,
      required final String ProductName,
      required final CategoryModel ProductCategory,
      required final String ProductImage,
      required final String? ProductSku,
      required final String? ProductStatus,
      required final String? ProductDescribtion,
      required final int? ProductPrice,
      final List<String>? RelatedProducts}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String get Productid;
  @override
  String get ProductName;
  @override
  CategoryModel get ProductCategory;
  @override
  String get ProductImage;
  @override
  String? get ProductSku;
  @override
  String? get ProductStatus;
  @override
  String? get ProductDescribtion;
  @override
  int? get ProductPrice;
  @override
  List<String>? get RelatedProducts;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
