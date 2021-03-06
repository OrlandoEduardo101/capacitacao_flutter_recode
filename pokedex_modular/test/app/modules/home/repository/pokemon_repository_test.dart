import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:pokedex_modular/app/modules/home/repository/interfaces/pokemon_repository_interface.dart';
import 'package:pokedex_modular/app/modules/home/repository/pokemon_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  IPokemonRepository repository;
  // MockClient client;

  setUp(() {
    // client = MockClient();
    repository = PokemonRepository(Dio());
    repository.fetchPost();
  });

  group('PokemonRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<PokemonRepository>());
    //  });

    test('returns a Post if the http call completes successfully', () async {
      //    when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //        .thenAnswer((_) async =>
      //            Response(data: {'title': 'Test'}, statusCode: 200));
      //    Map<String, dynamic> data = await repository.fetchPost(client);
      //    expect(data['title'], 'Test');
    });
  });
}
