import 'components/todo/todo_controller.dart';
import 'components/github/github_controller.dart';
import 'repository/github_repository.dart';
import 'package:desafio_recode/app/shared/utils/constants.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //Bind((i) => TodoController()),
        Bind((i) => GithubController(i())),
        Bind((i) => GithubRepository(Dio(BaseOptions(baseUrl: URL_BASE)))),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
