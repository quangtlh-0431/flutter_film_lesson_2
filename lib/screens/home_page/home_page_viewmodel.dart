import 'package:dio/dio.dart';
import 'package:flutter_basic_lesson_2/models/show.dart';
import 'package:riverpod/riverpod.dart';
import '../../service/api_service.dart';


final showProvider = FutureProvider<Show>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getShow('2');
});

final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = Dio(); // Setup Dio instance
  return ApiService(dio);
});
