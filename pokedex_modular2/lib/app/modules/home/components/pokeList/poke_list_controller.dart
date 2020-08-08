import 'package:mobx/mobx.dart';
import 'package:pokedex_modular2/app/modules/home/model/pokemon_model.dart';
import 'package:pokedex_modular2/app/modules/home/repository/interfaces/poke_repository_interface.dart';

part 'poke_list_controller.g.dart';

class PokeListController = _PokeListControllerBase with _$PokeListController;

abstract class _PokeListControllerBase with Store {
  final IPokeRepository repository;

  @observable
  int value = 0;

  @observable
  ObservableFuture<List<PokemonModel>> pokeList;

  _PokeListControllerBase(this.repository) {
    getList();
  }

  @action
  void increment() {
    value++;
  }

  @action
  getList() {
    pokeList = repository.getPoke().asObservable();
  }
}
