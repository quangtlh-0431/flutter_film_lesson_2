import 'package:flutter_basic_lesson_2/data/remote/schema_service.dart';
import 'package:flutter_basic_lesson_2/foundation/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/continents.dart';

final continentsServiceProviders = Provider((ref) => ContinentsService(ref));

class ContinentsService {
  final countriesReq = GFetchCountriesReq();
  final client = initClient(Constants.GraphQLEndPoint);

  final Ref _ref;

  ContinentsService(this._ref);

  Future<List<Continents>> getContinents() async {
    List<Continents> continents = [];
    var response = await client.request(countriesReq).first;
    if(response.data != null){
      response.data?.continents?.forEach((continent) {
        continents.add(
            Continents(code: continent?.code, name: continent?.name));
      });
    }
    return continents;
  }
}
