// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_basic_lesson_2/graphQL/__generated__/serializers.gql.dart'
    as _i1;

part 'countries.data.gql.g.dart';

abstract class GFetchCountriesData
    implements Built<GFetchCountriesData, GFetchCountriesDataBuilder> {
  GFetchCountriesData._();

  factory GFetchCountriesData(
      [Function(GFetchCountriesDataBuilder b) updates]) = _$GFetchCountriesData;

  static void _initializeBuilder(GFetchCountriesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFetchCountriesData_continents?>? get continents;
  static Serializer<GFetchCountriesData> get serializer =>
      _$gFetchCountriesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchCountriesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchCountriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchCountriesData.serializer,
        json,
      );
}

abstract class GFetchCountriesData_continents
    implements
        Built<GFetchCountriesData_continents,
            GFetchCountriesData_continentsBuilder> {
  GFetchCountriesData_continents._();

  factory GFetchCountriesData_continents(
          [Function(GFetchCountriesData_continentsBuilder b) updates]) =
      _$GFetchCountriesData_continents;

  static void _initializeBuilder(GFetchCountriesData_continentsBuilder b) =>
      b..G__typename = 'Continent';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get code;
  String? get name;
  static Serializer<GFetchCountriesData_continents> get serializer =>
      _$gFetchCountriesDataContinentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFetchCountriesData_continents.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFetchCountriesData_continents? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFetchCountriesData_continents.serializer,
        json,
      );
}
