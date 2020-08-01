import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var cor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: cor == Colors.blue ? Colors.white : Colors.black,
        child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Usuário',
                  hintText: 'Digite seu usuário',
                  border: OutlineInputBorder()),
              controller: _userController,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Senha',
                  hintText: 'Digite sua senha',
                  border: OutlineInputBorder()),
              controller: _passwordController,
            ),
          ),
          RaisedButton(
              color: Colors.greenAccent,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(22, 8, 22, 8),
              elevation: 0.5,
              child: Text(
                "Entrar",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              onPressed: () {
                print("pressionado");
                if (_userController.text == 'teste' &&
                    _passwordController.text == '123') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(
                                nome: _userController.text,
                              )));

                  print("Sucess");
                } else {
                  print("Failed");
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Login Falhou"),
                          content: Text(
                              "Você digitou algo errado, confira seu login."),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Fechar"))
                          ],
                        );
                      });
                }
              }),
          Padding(padding: EdgeInsets.only(top: 10)),
          RaisedButton(
              color: cor,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(22, 8, 22, 8),
              elevation: 0.5,
              child: Text(
                "Mudar cor",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  if(cor == Colors.blue){
                    cor = Colors.amber;
                  } else {
                    cor = Colors.blue;
                  }
                });
              })
        ],
      ),
      )
    );
  }
}
