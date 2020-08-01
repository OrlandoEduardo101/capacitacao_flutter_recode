import 'package:flutter/material.dart';
import 'package:pokedex/poke_model.dart';

import 'home_controller.dart';

class PokeList extends StatefulWidget {
  @override
  _PokeListState createState() => _PokeListState();
}

class _PokeListState extends State<PokeList> {
  HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {

    _showDialog({Pokemon model}) {
      model ??= Pokemon();
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(model.name),
              content: Row(
                children: [
                      Padding(
                      padding: EdgeInsets.fromLTRB(0, 0*MediaQuery.of(context).size.height, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                    child: Image.network(model.img),//_account_circle, //Image(image: _account_circle,/*image: 180,color: Colors.white,*/),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Type: "+model.type[0]),
                    Text("Number: "+model.number),
                    Text("Weigth: "+model.weigth),
                    Text("Height: "+model.height),
                  ],
                )
                ],
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Fechar'),
                ),
              ],
            );
          });
    }

    return FutureBuilder(
        future: controller.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Column(
                children: [
                  Text("Error"),
                  RaisedButton(
                      child: Text("Tente Novamente"),
                      onPressed: () {
                        controller.fetchData();
                      })
                ],
              ),
            );
          } else {
            return Container(
              padding: EdgeInsets.all(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    scrollDirection: Axis.vertical,
                    itemCount: controller.list.length,
                    itemBuilder: (context, index) {
                      Pokemon poke = snapshot.data[index];
                    
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
                                : CircularProgressIndicator(),
                            //child: Image.network(poke.img),
                          ),
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
                          onTap:() => _showDialog(model: poke),
                        ),
                      )

                          /*child:SizedBox(
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.only(left:10, right: 10),
                        child: Row(
                        children: [
                          CircleAvatar(child: Image.network(poke.img),),
                          Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Text(poke.name, 
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              )
                              ),
                            
                          ),
                        ],

                      )
                      )
                    ),*/

                          );
                    }),
              ),
            );
          }
        });
  }
}
