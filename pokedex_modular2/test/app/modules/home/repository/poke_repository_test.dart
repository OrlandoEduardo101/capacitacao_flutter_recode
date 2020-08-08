import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:pokedex_modular2/app/modules/home/repository/interfaces/poke_repository_interface.dart';

class MockClient extends Mock implements Dio {}

void main() {
  IPokeRepository repository;
  // MockClient client;

  setUp(() {
    // client = MockClient();
    // repository = PokeRepository(client);
  });

  group('PokeRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<PokeRepository>());
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
