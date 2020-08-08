import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_modular/app/modules/home/model/pokemon_model.dart';
import 'package:pokedex_modular/app/modules/home/repository/interfaces/pokemon_repository_interface.dart';

import '../../home_controller.dart';

part 'poke_list_controller.g.dart';

class PokeListController = _PokeListControllerBase with _$PokeListController;

abstract class _PokeListControllerBase with Store {
  //HomeController homeController = Modular.get();

  final IPokemonRepository repository;

  @observable
  int value = 0;

  @observable
  ObservableFuture<List<PokemonModel>> pokeList;

  _PokeListControllerBase(this.repository) {
    getList();
  }

  @action
  Future getList() async {
    pokeList = repository.getList().asObservable();
    print(pokeList.value);
    //await homeController.getPokes();
  }
}
