import 'package:desafio_recode/app/modules/home/components/github/github_widget.dart';
import 'package:desafio_recode/app/modules/home/components/todo/todo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> with TickerProviderStateMixin {
  //use 'controller' variable to access controller

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController( vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          indicatorWeight: 4,
          labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: "GitHub",),
            Tab(text: "ToDo",),
          ],
      ),
      ),

      body:TabBarView(
        controller: _tabController,
        children: <Widget>[
          GithubWidget(),
          TodoWidget(),
        ],
      )
    );
  }
}
