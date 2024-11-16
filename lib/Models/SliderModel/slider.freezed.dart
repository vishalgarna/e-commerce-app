// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

slidermodel _$slidermodelFromJson(Map<String, dynamic> json) {
  return _slidermodel.fromJson(json);
}

/// @nodoc
mixin _$slidermodel {
  String get SliderName => throw _privateConstructorUsedError;
  String get SliderImage => throw _privateConstructorUsedError;

  /// Serializes this slidermodel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of slidermodel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $slidermodelCopyWith<slidermodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $slidermodelCopyWith<$Res> {
  factory $slidermodelCopyWith(
          slidermodel value, $Res Function(slidermodel) then) =
      _$slidermodelCopyWithImpl<$Res, slidermodel>;
  @useResult
  $Res call({String SliderName, String SliderImage});
}

/// @nodoc
class _$slidermodelCopyWithImpl<$Res, $Val extends slidermodel>
    implements $slidermodelCopyWith<$Res> {
  _$slidermodelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of slidermodel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? SliderName = null,
    Object? SliderImage = null,
  }) {
    return _then(_value.copyWith(
      SliderName: null == SliderName
          ? _value.SliderName
          : SliderName // ignore: cast_nullable_to_non_nullable
              as String,
      SliderImage: null == SliderImage
          ? _value.SliderImage
          : SliderImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$slidermodelImplCopyWith<$Res>
    implements $slidermodelCopyWith<$Res> {
  factory _$$slidermodelImplCopyWith(
          _$slidermodelImpl value, $Res Function(_$slidermodelImpl) then) =
      __$$slidermodelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String SliderName, String SliderImage});
}

/// @nodoc
class __$$slidermodelImplCopyWithImpl<$Res>
    extends _$slidermodelCopyWithImpl<$Res, _$slidermodelImpl>
    implements _$$slidermodelImplCopyWith<$Res> {
  __$$slidermodelImplCopyWithImpl(
      _$slidermodelImpl _value, $Res Function(_$slidermodelImpl) _then)
      : super(_value, _then);

  /// Create a copy of slidermodel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? SliderName = null,
    Object? SliderImage = null,
  }) {
    return _then(_$slidermodelImpl(
      SliderName: null == SliderName
          ? _value.SliderName
          : SliderName // ignore: cast_nullable_to_non_nullable
              as String,
      SliderImage: null == SliderImage
          ? _value.SliderImage
          : SliderImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$slidermodelImpl implements _slidermodel {
  _$slidermodelImpl({required this.SliderName, required this.SliderImage});

  factory _$slidermodelImpl.fromJson(Map<String, dynamic> json) =>
      _$$slidermodelImplFromJson(json);

  @override
  final String SliderName;
  @override
  final String SliderImage;

  @override
  String toString() {
    return 'slidermodel(SliderName: $SliderName, SliderImage: $SliderImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$slidermodelImpl &&
            (identical(other.SliderName, SliderName) ||
                other.SliderName == SliderName) &&
            (identical(other.SliderImage, SliderImage) ||
                other.SliderImage == SliderImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, SliderName, SliderImage);

  /// Create a copy of slidermodel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$slidermodelImplCopyWith<_$slidermodelImpl> get copyWith =>
      __$$slidermodelImplCopyWithImpl<_$slidermodelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$slidermodelImplToJson(
      this,
    );
  }
}

abstract class _slidermodel implements slidermodel {
  factory _slidermodel(
      {required final String SliderName,
      required final String SliderImage}) = _$slidermodelImpl;

  factory _slidermodel.fromJson(Map<String, dynamic> json) =
      _$slidermodelImpl.fromJson;

  @override
  String get SliderName;
  @override
  String get SliderImage;

  /// Create a copy of slidermodel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$slidermodelImplCopyWith<_$slidermodelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
