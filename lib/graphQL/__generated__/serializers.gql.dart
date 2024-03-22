// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.data.gql.dart'
    show GFetchCountriesData, GFetchCountriesData_continents;
import 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.req.gql.dart'
    show GFetchCountriesReq;
import 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.var.gql.dart'
    show GFetchCountriesVars;
import 'package:flutter_basic_lesson_2/graphQL/__generated__/schema.schema.gql.dart'
    show GCacheControlScope, GUpload;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GFetchCountriesData,
  GFetchCountriesData_continents,
  GFetchCountriesReq,
  GFetchCountriesVars,
  GUpload,
])
final Serializers serializers = _serializersBuilder.build();
