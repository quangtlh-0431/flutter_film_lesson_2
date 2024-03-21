import 'package:flutter_basic_lesson_2/data/models/show.dart';

abstract class ApiRepository {
  Future<Show> getShow(String id);
}