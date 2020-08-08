import 'package:mobx/mobx.dart';
import 'package:pokedex_modular/app/modules/home/repository/interfaces/pokemon_repository_interface.dart';

import 'model/pokemon_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  IPokemonRepository repository;
  _HomeControllerBase(this.repository) {
    //getPokes();
  }

  @observable
  ObservableFuture<List<PokemonModel>> pokeList;

  @action
  Future getPokes() async {
    pokeList = repository.getList().asObservable();
    print(pokeList.value);
  }
}
