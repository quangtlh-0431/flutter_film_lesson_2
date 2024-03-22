// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.ast.gql.dart'
    as _i5;
import 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.data.gql.dart'
    as _i2;
import 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.var.gql.dart'
    as _i3;
import 'package:flutter_basic_lesson_2/graphQL/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'countries.req.gql.g.dart';

abstract class GFetchCountriesReq
    implements
        Built<GFetchCountriesReq, GFetchCountriesReqBuilder>,
        _i1.OperationRequest<_i2.GFetchCountriesData, _i3.GFetchCountriesVars> {
  GFetchCountriesReq._();

  factory GFetchCountriesReq([Function(GFetchCountriesReqBuilder b) updates]) =
      _$GFetchCountriesReq;

  static void _initializeBuilder(GFetchCountriesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'FetchCountries',
    )
    ..executeOnListen = true;

  @override
  _i3.GFetchCountriesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GFetchCountriesData? Function(
    _i2.GFetchCountriesData?,
    _i2.GFetchCountriesData?,
  )? get updateResult;
  @override
  _i2.GFetchCountriesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GFetchCountriesData? parseData(Map<String, dynamic> json) =>
      _i2.GFetchCountriesData.fromJson(json);

  static Serializer<GFetchCountriesReq> get serializer =>
      _$gFetchCountriesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFetchCountriesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchCountriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFetchCountriesReq.serializer,
        json,
      );
}
