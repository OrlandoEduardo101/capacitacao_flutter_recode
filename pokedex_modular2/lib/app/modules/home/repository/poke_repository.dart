import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:pokedex_modular2/app/modules/Shared/utils/constants.dart';
import 'package:pokedex_modular2/app/modules/home/model/pokemon_model.dart';
import 'interfaces/poke_repository_interface.dart';

class PokeRepository implements IPokeRepository {
  final Dio client;

  PokeRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Future<List<PokemonModel>> getPoke() async {
    List<PokemonModel> list = [];

    var response = await client.get(url);
    var decode = jsonDecode(response.data);

    for (var json in decode["pokemon"] as List) {
      PokemonModel poke = PokemonModel.fromJson(json);
      print(poke.name);
      list.add(poke);
    }
    return list;
  }
}
