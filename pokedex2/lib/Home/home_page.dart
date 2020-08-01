import 'package:flutter/material.dart';
import 'package:pokedex2/Home/home_controller.dart';

import 'components/pokeList_widget.dart';

class HomePage extends StatefulWidget {
  String nome;
  HomePage({this.nome});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem-vindo ${widget.nome} " + widget.nome),
      ),
      body: PokeListWidget(),
    );
  }
}
