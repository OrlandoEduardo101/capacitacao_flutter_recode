import 'package:flutter/material.dart';

import 'Login/login_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.red
    ),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
