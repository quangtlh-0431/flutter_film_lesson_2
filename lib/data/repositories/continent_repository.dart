import 'package:flutter_basic_lesson_2/data/models/continents.dart';

abstract class ContinentRepository {
  Future<List<Continents>> getContinents();
}