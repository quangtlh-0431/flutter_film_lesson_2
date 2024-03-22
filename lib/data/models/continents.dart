import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/continents.freezed.dart';
part 'generated/continents.g.dart';

@freezed
class Continents with _$Continents{
  const factory Continents({
    String? name,
    String? code
  }) = _Continents;

  factory Continents.fromJson(Map<String, dynamic> json) => _$ContinentsFromJson(json);
}