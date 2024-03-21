import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_lesson_2/data/models/show.dart';
import 'package:flutter_basic_lesson_2/data/repositories/api_repository.dart';
import 'package:flutter_basic_lesson_2/providers/data_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/film.dart';

final homeViewModelProvider =
    ChangeNotifierProvider((ref) => HomeViewModel(ref));

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._ref);

  final Ref _ref;

  bool _loading = false;

  bool? get loading => _loading;
  Show? _show;

  Show? get show => _show;
  final List<Film> _listFilm = [];

  List<Film> get listFilm => _listFilm;

  late final ApiRepository _apiRepository = _ref.read(apiProvider);

  Future<Show> fetchShow(String id) {
    _loading = true;
    return _apiRepository.getShow(id).then((value) {
      _loading = false;
      notifyListeners();
      _show = value;
      for (int i = 0; i < 20; i++) {
        _listFilm.add(Film(
            urlImg: _show!.image!.original.toString(),
            description: _show!.summary.toString(),
            title: _show!.name.toString(),
            rate: 6.5));
      }
      return value;
    });
  }
}
