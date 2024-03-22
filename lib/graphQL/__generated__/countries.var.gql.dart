// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_basic_lesson_2/graphQL/__generated__/serializers.gql.dart'
    as _i1;

part 'countries.var.gql.g.dart';

abstract class GFetchCountriesVars
    implements Built<GFetchCountriesVars, GFetchCountriesVarsBuilder> {
  GFetchCountriesVars._();

  factory GFetchCountriesVars(
      [Function(GFetchCountriesVarsBuilder b) updates]) = _$GFetchCountriesVars;

  static Serializer<GFetchCountriesVars> get serializer =>
      _$gFetchCountriesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchCountriesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchCountriesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchCountriesVars.serializer,
        json,
      );
}
