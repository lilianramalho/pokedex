import 'package:dio/dio.dart';

class PokemonDetailsData {
  final dio = Dio();

  Future<Map<String, dynamic>> getPokemonDetails(String url) async {
    Response response;
    response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return {'error': 'falha na comunicação com servidor'};
    }
  }
}
