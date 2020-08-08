import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                //child: Image.asset('img/logo.png'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Usuario',
                      hintText: 'digite username',
                      border: OutlineInputBorder()),
                  onChanged: controller.setUser,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      hintText: 'digite sua senha',
                      border: OutlineInputBorder()),
                  onChanged: controller.setPassword,
                ),
              ),
              RaisedButton(
                  child: Text("Login"), onPressed: controller.validate),
              Observer(builder: (_) {
                return RaisedButton(
                  color: controller.color,
                  onPressed: controller.changeColor);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
