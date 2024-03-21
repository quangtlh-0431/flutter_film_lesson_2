import 'package:dio/dio.dart';
import 'package:flutter_basic_lesson_2/data/models/show.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';

import 'api_dio.dart';

part 'api_service.g.dart';

final apiServiceProvider = Provider((ref) => ApiService(ref));
@RestApi()
abstract class ApiService {
  factory ApiService(Ref ref) => _ApiService(ref.read(dioProvider));
  
  @GET('shows/{id}')
  Future<Show> getShow(@Path('id') String id);
}