import 'package:dio/dio.dart';

class PokemonData {
  final dio = Dio();

  Future<Map<String, dynamic>> getPokemonList() async {
    Response response;
    response = await dio.get('https://pokeapi.co/api/v2/pokemon/');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return {'error': 'falha na comunicação com servidor'};
    }
  }

  getIcon() async {
    Response response;
    response = await dio.get('https://pokeapi.co/api/v2/pokemon/1');
    print(response.data);
  }
}
