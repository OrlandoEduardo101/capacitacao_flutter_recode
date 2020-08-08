import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/model/pokemon_model.dart';

abstract class IPokemonRepository implements Disposable {
  Future fetchPost();
  Future<List<PokemonModel>> getList();
}
