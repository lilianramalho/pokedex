import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/src/provider/data/pokemon_data.dart';

import 'pokemon_data_test.mocks.dart';

@GenerateMocks([Dio])
main(){
  test('Sucesso em buscar lista de pokemonsss', () async {
    final client = MockDio();
    final pokemonData = PokemonData();
    final responseMap = {'response' : [{
      'teste' : 'teste',
    }]};
    final response = Response(data: responseMap, requestOptions: RequestOptions());

    when(client.get('https://pokeapi.co/api/v2/pokemon/')).thenAnswer((_) async => response);

    final result = await pokemonData.getPokemonList();
    expect(result, isA<Map>());
  });

}