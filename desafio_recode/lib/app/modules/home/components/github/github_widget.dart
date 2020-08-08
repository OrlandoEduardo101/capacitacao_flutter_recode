import 'package:desafio_recode/app/modules/home/components/github/github_controller.dart';
import 'package:desafio_recode/app/modules/home/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class GithubWidget extends StatelessWidget {
  GithubController controller = Modular.get();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: TextField(
                    scrollPadding: EdgeInsets.all(12),
                    decoration: InputDecoration(
                        labelText: "Digite um usuario do GitHub"),
                    //onChanged: controller.setUserName,
                    controller: textController,
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.search),
                  onTap: () {
                    controller.setUserName(textController.text);
                    controller.getUser();
                  },
                )
              ],
            ),
            Container(
                //height: 450,
                padding: EdgeInsets.only(top: 12),
                child: Observer(builder: (_) {
                  UserModel model = controller.user.value;
                  print(controller.user);
                  
                  if (controller.username == "") {
                    //print("error: " + controller.user.error.toString());
                    return Container();
                  }
                  if (controller.user.value == null) {
                    print(controller.user.toString());
                    return Center(child: CircularProgressIndicator());
                  }
                  if (controller.user.error != null || model.name == null) {
                    return Center(child: Text("Erro"));
                  } else {
                    print(controller.user.toString());
                    print("SINGLECHILD");
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: Image.network(
                                  controller.user.value.avatar_url,
                                  width: 200,
                                  height: 200),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 0),
                                  child: Card(
                                    child: ListTile(
                                      title: Text("Name: " + model.name),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 0),
                                  child: Card(
                                    child: ListTile(
                                      title:
                                          Text("Username: " + model.username),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 0),
                                  child: Card(
                                    child: ListTile(
                                      title:
                                          Text("Bio: " + model.bio.toString()),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 0),
                                  child: Card(
                                    child: ListTile(
                                      title: Text("Company: " +
                                          model.company.toString()),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 0),
                                  child: Card(
                                      child: ListTile(
                                    title: Text(
                                      "Location: " + model.location.toString(),
                                    ),
                                  ))),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 0),
                                  child: Card(
                                    child: ListTile(
                                      title: Text("Repositories: " +
                                          model.repos.toString()),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 0),
                                  child: Card(
                                    child: ListTile(
                                      title: Text("Followers: " +
                                          model.follow.toString()),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                })),
          ],
        ),
      ),
    );
  }
}
