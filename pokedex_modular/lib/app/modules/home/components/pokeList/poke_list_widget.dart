import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/components/pokeList/poke_list_controller.dart';
import 'package:pokedex_modular/app/modules/home/model/pokemon_model.dart';

import '../../home_controller.dart';

class PokeListWidget extends StatelessWidget {
  PokeListController controller = Modular.get();
  //HomeController homeController = Modular.get();
  //List<PokemonModel> pokeList;

  @override
  Widget build(BuildContext context) {
    //return Container();
    _showDialog({PokemonModel model}) {
      model ??= PokemonModel();
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(model.name),
            content: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.red,
                            width: 1,
                          )),
                      child: Image.network(
                        model.img,
                        height: 100,
                        width: 100,
                      )),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Type: " + model.type[0]),
                    Text("Number: " + model.number),
                    Text("Weight: " + model.weight),
                    Text("Height: " + model.height),
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Fechar"))
            ],
          );
        },
      );
    }

    return Container(
      child: Observer(
        builder: (_) {
          if (controller.pokeList.value == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (controller.pokeList.error != null) {
            Center(
              child: Column(
                children: [
                  Text("Error: " + controller.pokeList.error.toString()),
                  FlatButton(
                    child: Text("Tente novamente"),
                    onPressed: controller.getList,
                  )
                ],
              ),
            );
          } else {
            print("Altura: " + MediaQuery.of(context).size.height.toString());
            return Container(
              padding: EdgeInsets.all(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    scrollDirection: Axis.vertical,
                    itemCount: controller.pokeList.value.length,
                    itemBuilder: (context, index) {
                      PokemonModel poke = controller.pokeList.value[index];
                      return Card(
                          child: SizedBox(
                        height: 80,
                        child: ListTile(
                          contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                          leading: CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Colors.grey,
                              backgroundImage: poke.img != null
                                  ? NetworkImage(poke.img)
                                  : CircularProgressIndicator()),
                          title: Text(
                            poke.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          subtitle: Text(
                            poke.number,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          onTap: () {
                            _showDialog(model: poke);
                          },
                        ),
                      ));
                    }),
              ),
            );
          }
        },
      ),
    );
  }
}
