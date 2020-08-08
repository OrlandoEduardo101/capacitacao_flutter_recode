import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/state_manager.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String user;

  @action
  setUser(value) {
    return user = value;
  }

  @observable
  String password;

  @action
  setPassword(value) => password = value;

  @observable
  Color color = Colors.amber;

  @action
  void alternateColor() {
    if (color == Colors.blue) {
      color = Colors.amber;
    } else {
      color = Colors.blue;
    }
  }

  void loginValidate() {
    if (user == "naruto" && password == "123") {
      print("Sucess");
      Modular.to.pushReplacementNamed("/home", arguments: user);
    } else {
      print("Failed");
    }
  }
}
