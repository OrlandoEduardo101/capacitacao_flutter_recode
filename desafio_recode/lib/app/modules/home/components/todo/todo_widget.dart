import 'package:desafio_recode/app/modules/home/components/todo/todo_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'item/item_widget.dart';

class TodoWidget extends StatelessWidget {
  final TodoController controller = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
          builder: (_) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 300,
                      child: TextField(
                        scrollPadding: EdgeInsets.all(12),
                        decoration:
                            InputDecoration(labelText: "Digite um item"),
                        onChanged: controller.setText,
                      ),
                    ),
                    GestureDetector(
                      child: Icon(Icons.add),
                      onTap: controller.save,
                    )
                  ],
                ),
                Container(
                  height: 450,
                  child: ListView.builder(
                itemCount: controller.list.length,
                itemBuilder: (_, index){
                  return ItemWidget(index: index,);
                }),
                )
              ],
            );
          }
      ),
      );
  }
}
