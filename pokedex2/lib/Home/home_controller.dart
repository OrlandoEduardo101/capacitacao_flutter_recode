import 'package:pokedex2/Home/pokemon_model.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class HomeController {
  String url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  List<PokemonModel> list = [];

  Future<List<PokemonModel>> getList() async {
    var response = await Dio().get(url);
    var decode = jsonDecode(response.data);

    for (var json in decode["pokemon"] as List) {
      PokemonModel poke = PokemonModel(
        id: json['id'],
        number: json['num'],
        name: json['name'],
        img: json['img'],
        weigth: json['weight'],
        height: json['height'],
        type: json['type'].cast<String>()
      );
      print(poke.name);
      list.add(poke);
    }
    return list;
  }
}
