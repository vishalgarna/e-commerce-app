// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CartProducts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartProductModel _$CartProductModelFromJson(Map<String, dynamic> json) {
  return _CartProductModel.fromJson(json);
}

/// @nodoc
mixin _$CartProductModel {
  double get qty => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;

  /// Serializes this CartProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductModelCopyWith<CartProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductModelCopyWith<$Res> {
  factory $CartProductModelCopyWith(
          CartProductModel value, $Res Function(CartProductModel) then) =
      _$CartProductModelCopyWithImpl<$Res, CartProductModel>;
  @useResult
  $Res call({double qty, ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$CartProductModelCopyWithImpl<$Res, $Val extends CartProductModel>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductModelImplCopyWith<$Res>
    implements $CartProductModelCopyWith<$Res> {
  factory _$$CartProductModelImplCopyWith(_$CartProductModelImpl value,
          $Res Function(_$CartProductModelImpl) then) =
      __$$CartProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double qty, ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$CartProductModelImplCopyWithImpl<$Res>
    extends _$CartProductModelCopyWithImpl<$Res, _$CartProductModelImpl>
    implements _$$CartProductModelImplCopyWith<$Res> {
  __$$CartProductModelImplCopyWithImpl(_$CartProductModelImpl _value,
      $Res Function(_$CartProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? product = null,
  }) {
    return _then(_$CartProductModelImpl(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductModelImpl implements _CartProductModel {
  _$CartProductModelImpl({required this.qty, required this.product});

  factory _$CartProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductModelImplFromJson(json);

  @override
  final double qty;
  @override
  final ProductModel product;

  @override
  String toString() {
    return 'CartProductModel(qty: $qty, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductModelImpl &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, qty, product);

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      __$$CartProductModelImplCopyWithImpl<_$CartProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductModelImplToJson(
      this,
    );
  }
}

abstract class _CartProductModel implements CartProductModel {
  factory _CartProductModel(
      {required final double qty,
      required final ProductModel product}) = _$CartProductModelImpl;

  factory _CartProductModel.fromJson(Map<String, dynamic> json) =
      _$CartProductModelImpl.fromJson;

  @override
  double get qty;
  @override
  ProductModel get product;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
