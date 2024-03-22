// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchCountriesData> _$gFetchCountriesDataSerializer =
    new _$GFetchCountriesDataSerializer();
Serializer<GFetchCountriesData_continents>
    _$gFetchCountriesDataContinentsSerializer =
    new _$GFetchCountriesData_continentsSerializer();

class _$GFetchCountriesDataSerializer
    implements StructuredSerializer<GFetchCountriesData> {
  @override
  final Iterable<Type> types = const [
    GFetchCountriesData,
    _$GFetchCountriesData
  ];
  @override
  final String wireName = 'GFetchCountriesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCountriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.continents;
    if (value != null) {
      result
        ..add('continents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GFetchCountriesData_continents)
            ])));
    }
    return result;
  }

  @override
  GFetchCountriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchCountriesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'continents':
          result.continents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GFetchCountriesData_continents)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchCountriesData_continentsSerializer
    implements StructuredSerializer<GFetchCountriesData_continents> {
  @override
  final Iterable<Type> types = const [
    GFetchCountriesData_continents,
    _$GFetchCountriesData_continents
  ];
  @override
  final String wireName = 'GFetchCountriesData_continents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchCountriesData_continents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchCountriesData_continents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchCountriesData_continentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchCountriesData extends GFetchCountriesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GFetchCountriesData_continents?>? continents;

  factory _$GFetchCountriesData(
          [void Function(GFetchCountriesDataBuilder)? updates]) =>
      (new GFetchCountriesDataBuilder()..update(updates))._build();

  _$GFetchCountriesData._({required this.G__typename, this.continents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchCountriesData', 'G__typename');
  }

  @override
  GFetchCountriesData rebuild(
          void Function(GFetchCountriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCountriesDataBuilder toBuilder() =>
      new GFetchCountriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCountriesData &&
        G__typename == other.G__typename &&
        continents == other.continents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, continents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchCountriesData')
          ..add('G__typename', G__typename)
          ..add('continents', continents))
        .toString();
  }
}

class GFetchCountriesDataBuilder
    implements Builder<GFetchCountriesData, GFetchCountriesDataBuilder> {
  _$GFetchCountriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFetchCountriesData_continents?>? _continents;
  ListBuilder<GFetchCountriesData_continents?> get continents =>
      _$this._continents ??= new ListBuilder<GFetchCountriesData_continents?>();
  set continents(ListBuilder<GFetchCountriesData_continents?>? continents) =>
      _$this._continents = continents;

  GFetchCountriesDataBuilder() {
    GFetchCountriesData._initializeBuilder(this);
  }

  GFetchCountriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _continents = $v.continents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchCountriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCountriesData;
  }

  @override
  void update(void Function(GFetchCountriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCountriesData build() => _build();

  _$GFetchCountriesData _build() {
    _$GFetchCountriesData _$result;
    try {
      _$result = _$v ??
          new _$GFetchCountriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFetchCountriesData', 'G__typename'),
              continents: _continents?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'continents';
        _continents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFetchCountriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchCountriesData_continents extends GFetchCountriesData_continents {
  @override
  final String G__typename;
  @override
  final String? code;
  @override
  final String? name;

  factory _$GFetchCountriesData_continents(
          [void Function(GFetchCountriesData_continentsBuilder)? updates]) =>
      (new GFetchCountriesData_continentsBuilder()..update(updates))._build();

  _$GFetchCountriesData_continents._(
      {required this.G__typename, this.code, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFetchCountriesData_continents', 'G__typename');
  }

  @override
  GFetchCountriesData_continents rebuild(
          void Function(GFetchCountriesData_continentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchCountriesData_continentsBuilder toBuilder() =>
      new GFetchCountriesData_continentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchCountriesData_continents &&
        G__typename == other.G__typename &&
        code == other.code &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFetchCountriesData_continents')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('name', name))
        .toString();
  }
}

class GFetchCountriesData_continentsBuilder
    implements
        Builder<GFetchCountriesData_continents,
            GFetchCountriesData_continentsBuilder> {
  _$GFetchCountriesData_continents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GFetchCountriesData_continentsBuilder() {
    GFetchCountriesData_continents._initializeBuilder(this);
  }

  GFetchCountriesData_continentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchCountriesData_continents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchCountriesData_continents;
  }

  @override
  void update(void Function(GFetchCountriesData_continentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFetchCountriesData_continents build() => _build();

  _$GFetchCountriesData_continents _build() {
    final _$result = _$v ??
        new _$GFetchCountriesData_continents._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GFetchCountriesData_continents', 'G__typename'),
            code: code,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
