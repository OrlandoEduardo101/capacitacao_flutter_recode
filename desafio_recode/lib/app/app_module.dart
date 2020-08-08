import 'package:desafio_recode/app/shared/repositories/localstorage/local_storage_hive.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:desafio_recode/app/app_widget.dart';
import 'package:desafio_recode/app/modules/home/home_module.dart';

import 'modules/home/components/todo/todo_controller.dart';
import 'shared/repositories/localstorage/local_storage_interface.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => TodoController()),
        Bind<ILocalStorage>((i) => LocalStorageHive()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
