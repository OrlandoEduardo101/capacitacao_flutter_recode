import 'components/showDialog/show_dialog_controller.dart';
import 'repository/poke_repository.dart';
import 'repository/interfaces/poke_repository_interface.dart';
import 'repository/poke_repository.dart';
import 'components/pokeList/poke_list_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ShowDialogController()),
        Bind<IPokeRepository>((i) => PokeRepository(Dio())),
        Bind((i) => PokeRepository(Dio())),
        Bind((i) => PokeListController(i())),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => HomePage(
                  title: args.data,
                )),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
