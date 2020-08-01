import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex/poke_model.dart';

class HomeController {
  String url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
  List<Pokemon> list = [];
  Future<List<Pokemon>> fetchData() async {
    var response = await Dio().get(url);
    var decode = jsonDecode(response.data);
    print(decode.toString());
    

   for (var json in decode["pokemon"] as List) {
      //print(json['pokemon']);
      Pokemon poke = Pokemon(
          id: json['id'],
          number: json['num'],
          name: json['name'],
          img: json['img'],
          weigth: json['weight'],
          height: json['height'],
          type: json['type'].cast<String>());
        print(poke.name);
        list.add(poke);
    }

    return list;
    //setState(() {});
  }

}
