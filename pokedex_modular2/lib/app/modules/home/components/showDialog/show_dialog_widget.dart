import 'package:flutter/material.dart';
import 'package:pokedex_modular2/app/modules/home/model/pokemon_model.dart';

class ShowDialogWidget extends StatelessWidget {
  
  final PokemonModel model;

  const ShowDialogWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

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
  }
}
