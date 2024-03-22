import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

export 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.req.gql.dart';
export 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.var.gql.dart';
export 'package:flutter_basic_lesson_2/graphQL/__generated__/countries.data.gql.dart';
Client initClient(String url){
  final link = HttpLink(url);
  
  final client = Client(link: link);

  return client;
}