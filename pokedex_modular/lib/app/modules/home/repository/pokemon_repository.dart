import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:pokedex_modular/app/Shared/utils/constants.dart';
import 'package:pokedex_modular/app/modules/home/model/pokemon_model.dart';
import 'interfaces/pokemon_repository_interface.dart';

class PokemonRepository implements IPokemonRepository {
  final Dio client;

  PokemonRepository(this.client);

  Future fetchPost() async {
    final response = await client.get('');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Future<List<PokemonModel>> getList() async {
    List<PokemonModel> list = [];
    var response = await Dio().get(url);
    var decode = jsonDecode(response.data);

    //print(response.data);
    for (var json in decode["pokemon"] as List) {
      PokemonModel poke = PokemonModel.fromJson(json);
      print(json['name']);
      print("Namee " + poke.name);
      list.add(poke);
    }
    print(response.data);
    return list;

    //return list.pokemon;
  }
}
