import 'package:flutter/material.dart';
import 'package:pokedex2/Home/home_controller.dart';
import 'package:pokedex2/Home/pokemon_model.dart';

class PokeListWidget extends StatefulWidget {
  @override
  _PokeListWidgetState createState() => _PokeListWidgetState();
}

class _PokeListWidgetState extends State<PokeListWidget> {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {

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
                    child: Image.network(model.img, 
                    height: 100,
                    width: 100,
                    
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10)),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Type: " + model.type[0]),
                      Text("Number: " + model.number),
                      Text("Weight: " + model.weigth),
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

    return FutureBuilder(
      future: controller.getList(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          Center(
            child: Column(
              children: [
                Text("Error: " + snapshot.error.toString()),
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
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                    PokemonModel poke = snapshot.data[index];
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
    );
  }
}
