// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CartState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
// CartModel ? cartmodel,
  CartModel? get cartmodel => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({CartModel? cartmodel, bool isloading});

  $CartModelCopyWith<$Res>? get cartmodel;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartmodel = freezed,
    Object? isloading = null,
  }) {
    return _then(_value.copyWith(
      cartmodel: freezed == cartmodel
          ? _value.cartmodel
          : cartmodel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res>? get cartmodel {
    if (_value.cartmodel == null) {
      return null;
    }

    return $CartModelCopyWith<$Res>(_value.cartmodel!, (value) {
      return _then(_value.copyWith(cartmodel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel? cartmodel, bool isloading});

  @override
  $CartModelCopyWith<$Res>? get cartmodel;
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartmodel = freezed,
    Object? isloading = null,
  }) {
    return _then(_$CartStateImpl(
      cartmodel: freezed == cartmodel
          ? _value.cartmodel
          : cartmodel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  _$CartStateImpl({this.cartmodel, this.isloading = false});

// CartModel ? cartmodel,
  @override
  final CartModel? cartmodel;
  @override
  @JsonKey()
  final bool isloading;

  @override
  String toString() {
    return 'CartState(cartmodel: $cartmodel, isloading: $isloading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.cartmodel, cartmodel) ||
                other.cartmodel == cartmodel) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartmodel, isloading);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  factory _CartState({final CartModel? cartmodel, final bool isloading}) =
      _$CartStateImpl;

// CartModel ? cartmodel,
  @override
  CartModel? get cartmodel;
  @override
  bool get isloading;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
