import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: 'Pokedex Modular',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
