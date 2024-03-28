import 'package:flutter_basic_lesson_2/data/models/continents.dart';
import 'package:flutter_basic_lesson_2/data/remote/countries_service.dart';
import 'package:flutter_basic_lesson_2/data/repositories/continent_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContinentRepositoryImpl implements ContinentRepository {
  final Ref _ref;

  ContinentRepositoryImpl(this._ref);

  late final ContinentsService _continentsServiceService = _ref.read(continentsServiceProviders);

  @override
  Future<List<Continents>> getContinents() {
    return _continentsServiceService.getContinents();
  }

}