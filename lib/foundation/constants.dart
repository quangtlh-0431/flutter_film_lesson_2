import 'package:flutter/cupertino.dart';

enum Flavor { development, production }

@immutable
class Constants {
  static const String endpoint = 'https://api.tvmaze.com/';
  static const String GraphQLEndPoint = "https://countries.trevorblades.com/graphql";
}