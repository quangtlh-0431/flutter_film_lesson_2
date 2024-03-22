// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../continents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Continents _$ContinentsFromJson(Map<String, dynamic> json) {
  return _Continents.fromJson(json);
}

/// @nodoc
mixin _$Continents {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinentsCopyWith<Continents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinentsCopyWith<$Res> {
  factory $ContinentsCopyWith(
          Continents value, $Res Function(Continents) then) =
      _$ContinentsCopyWithImpl<$Res, Continents>;
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class _$ContinentsCopyWithImpl<$Res, $Val extends Continents>
    implements $ContinentsCopyWith<$Res> {
  _$ContinentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContinentsImplCopyWith<$Res>
    implements $ContinentsCopyWith<$Res> {
  factory _$$ContinentsImplCopyWith(
          _$ContinentsImpl value, $Res Function(_$ContinentsImpl) then) =
      __$$ContinentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class __$$ContinentsImplCopyWithImpl<$Res>
    extends _$ContinentsCopyWithImpl<$Res, _$ContinentsImpl>
    implements _$$ContinentsImplCopyWith<$Res> {
  __$$ContinentsImplCopyWithImpl(
      _$ContinentsImpl _value, $Res Function(_$ContinentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ContinentsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinentsImpl implements _Continents {
  const _$ContinentsImpl({this.name, this.code});

  factory _$ContinentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinentsImplFromJson(json);

  @override
  final String? name;
  @override
  final String? code;

  @override
  String toString() {
    return 'Continents(name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinentsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinentsImplCopyWith<_$ContinentsImpl> get copyWith =>
      __$$ContinentsImplCopyWithImpl<_$ContinentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinentsImplToJson(
      this,
    );
  }
}

abstract class _Continents implements Continents {
  const factory _Continents({final String? name, final String? code}) =
      _$ContinentsImpl;

  factory _Continents.fromJson(Map<String, dynamic> json) =
      _$ContinentsImpl.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$ContinentsImplCopyWith<_$ContinentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
