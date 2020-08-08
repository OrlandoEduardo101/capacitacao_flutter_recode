
import 'components/pokeList/poke_list_controller.dart';
import 'repository/pokemon_repository.dart';
import 'repository/interfaces/pokemon_repository_interface.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokeListController(i())),
        Bind<IPokemonRepository>((i) => PokemonRepository(Dio())),
        Bind((i) => HomeController(i.get<IPokemonRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => HomePage(title: args.data)),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
