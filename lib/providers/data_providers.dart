import 'package:flutter_basic_lesson_2/data/repositories/api_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = Provider((ref) => ApiRepositoryImpl(ref));