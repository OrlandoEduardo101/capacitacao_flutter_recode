import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular2/app/modules/home/model/pokemon_model.dart';


abstract class IPokeRepository implements Disposable {
  Future fetchPost();
  Future<List<PokemonModel>> getPoke();
}
