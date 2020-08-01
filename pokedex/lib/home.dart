import 'package:flutter/material.dart';
import 'package:pokedex/home_controller.dart';
import 'package:pokedex/pokeList.dart';
import 'package:pokedex/poke_model.dart';

class Home extends StatefulWidget {
  String nome;
   Home({this.nome});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController controller = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.fetchData();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Olá ${widget.nome}"),
      ),
      body: PokeList()
    );
  }
}
