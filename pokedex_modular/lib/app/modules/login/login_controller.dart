import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  Color color = Colors.amber;

  @observable
  String user;

  @action
  setUser(value) => user = value;

  @observable
  String password;

  @action
  setPassword(value) => password = value;

  void validate() {
    if (user == "naruto" && password == "123") {
      Modular.to.pushNamed('/home', arguments: user);
    }
  }

  @action
  changeColor() {
    if (color == Colors.blue) {
                      color = Colors.amber;
                      
                    } else {
                        color = Colors.blue;
                      
                    }
  }
}
