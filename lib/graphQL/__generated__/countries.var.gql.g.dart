// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchCountriesVars> _$gFetchCountriesVarsSerializer =
    new _$GFetchCountriesVarsSerializer();

class _$GFetchCountriesVarsSerializer
    implements StructuredSerializer<GFetchCountriesVars> {
  @override
  final Iterable<Type> types = const [
    GFetchCountriesVars,
    _$GFetchCountriesVars
  ];
  @override
  final String wireName = 'GFetchCountriesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCountriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFetchCountriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFetchCountriesVarsBuilder().build();
  }
}

class _$GFetchCountriesVars extends GFetchCountriesVars {
  factory _$GFetchCountriesVars(
          [void Function(GFetchCountriesVarsBuilder)? updates]) =>
      (new GFetchCountriesVarsBuilder()..update(updates))._build();

  _$GFetchCountriesVars._() : super._();

  @override
  GFetchCountriesVars rebuild(
          void Function(GFetchCountriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCountriesVarsBuilder toBuilder() =>
      new GFetchCountriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCountriesVars;
  }

  @override
  int get hashCode {
    return 413797988;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GFetchCountriesVars').toString();
  }
}

class GFetchCountriesVarsBuilder
    implements Builder<GFetchCountriesVars, GFetchCountriesVarsBuilder> {
  _$GFetchCountriesVars? _$v;

  GFetchCountriesVarsBuilder();

  @override
  void replace(GFetchCountriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCountriesVars;
  }

  @override
  void update(void Function(GFetchCountriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCountriesVars build() => _build();

  _$GFetchCountriesVars _build() {
    final _$result = _$v ?? new _$GFetchCountriesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
