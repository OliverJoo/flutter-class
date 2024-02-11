import '../model/air_result.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rxdart/rxdart.dart';

class AirBloc {
  final _airSubject = BehaviorSubject<AirResult>();

  AirBloc() {
    fetch();
  }

  void fetch() async {
    var airResult = await fetchData();
    print('airResult in air_bloc : $airResult');
    _airSubject.add(airResult);
  }

  Future<AirResult> fetchData() async {
    var response = await http.get(Uri.parse(
        'https://api.airvisual.com/v2/nearest_city?key=ea3a610a-1c88-4e9d-a50f-d1451f4840e4'));

    AirResult result = AirResult.fromJson(jsonDecode(response.body));

    return result;
  }

  Stream<AirResult> get airResult => _airSubject.stream;

}
