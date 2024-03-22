import 'package:flutter_basic_lesson_2/data/remote/schema_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/continents.dart';

final continentsServiceProviders = Provider((ref) => ContinentsService(ref));

class ContinentsService {
  final countriesReq = GFetchCountriesReq();
  final client = initClient('https://countries.trevorblades.com/graphql');

  final Ref _ref;

  ContinentsService(this._ref);

  Future<List<Continents>> getContinents() async {
    List<Continents> continents = [];
    client.request(countriesReq).listen((response) {
      final results = response.data?.continents;
      results?.forEach((continent) {
        continents.add(
            Continents(code: continent?.code, name: continent?.name));
      });
    });
    return continents;
  }

// client.request(countriesReq).listen((response) {
//   final results = response.data?.continents;
//
//   if(results!.isNotEmpty){
//     results.forEach((country) {
//       print('''===${country?.toJson()} ===''');
//     });
//   }
// });
}
