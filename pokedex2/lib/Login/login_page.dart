import 'package:flutter/material.dart';
import 'package:pokedex2/Home/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color color = Colors.amber;

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
                child: Image.asset('assets/img/logo.png'),
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
                  controller: _userController,
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
                  controller: passwordController,
                ),
              ),
              RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    if (_userController.text == "naruto" &&
                        passwordController.text == "123") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    nome: _userController.text,
                                  )));
                    }
                  }),
              RaisedButton(
                  color: color,
                  onPressed: () {
                    if (color == Colors.blue) {
                      setState(() {
                        color = Colors.amber;
                      });
                    } else {
                      setState(() {
                        color = Colors.blue;
                      });
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
