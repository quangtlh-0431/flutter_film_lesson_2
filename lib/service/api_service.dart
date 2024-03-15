import 'package:dio/dio.dart';
import 'package:flutter_basic_lesson_2/models/show.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';
@RestApi(baseUrl: 'https://api.tvmaze.com/')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
  
  @GET('shows/{id}')
  Future<Show> getShow(@Path('id') String id);
}