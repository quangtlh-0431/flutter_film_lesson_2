import 'package:flutter_basic_lesson_2/data/models/show.dart';
import 'package:flutter_basic_lesson_2/data/remote/api_service.dart';
import 'package:flutter_basic_lesson_2/data/repositories/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiRepositoryImpl implements ApiRepository {
  final Ref _ref;

  ApiRepositoryImpl(this._ref);

  late final ApiService _apiService = _ref.read(apiServiceProvider);
  @override
  Future<Show> getShow(String id) {
    return _apiService.getShow(id);
  }
  
}