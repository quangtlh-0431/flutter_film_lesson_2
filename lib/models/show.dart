// To parse this JSON data, do
//
//     final show = showFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'show.freezed.dart';
part 'show.g.dart';

Show showFromJson(String str) => Show.fromJson(json.decode(str));

String showToJson(Show data) => json.encode(data.toJson());

@freezed
class Show with _$Show {
  const factory Show({
    int? id,
    String? url,
    String? name,
    String? type,
    String? language,
    List<String>? genres,
    String? status,
    int? runtime,
    int? averageRuntime,
    DateTime? premiered,
    DateTime? ended,
    String? officialSite,
    Schedule? schedule,
    Rating? rating,
    int? weight,
    Network? network,
    dynamic webChannel,
    dynamic dvdCountry,
    Externals? externals,
    Image? image,
    String? summary,
    int? updated,
    Links? links,
  }) = _Show;

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);
}

@freezed
class Externals with _$Externals {
  const factory Externals({
    int? tvrage,
    int? thetvdb,
    String? imdb,
  }) = _Externals;

  factory Externals.fromJson(Map<String, dynamic> json) => _$ExternalsFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    String? medium,
    String? original,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    Previousepisode? self,
    Previousepisode? previousepisode,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Previousepisode with _$Previousepisode {
  const factory Previousepisode({
    String? href,
  }) = _Previousepisode;

  factory Previousepisode.fromJson(Map<String, dynamic> json) => _$PreviousepisodeFromJson(json);
}

@freezed
class Network with _$Network {
  const factory Network({
    int? id,
    String? name,
    Country? country,
    String? officialSite,
  }) = _Network;

  factory Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    String? name,
    String? code,
    String? timezone,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    double? average,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    String? time,
    List<String>? days,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}
