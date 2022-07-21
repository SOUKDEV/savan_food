// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:savan_food/Screen/home.dart';
import 'package:savan_food/Screen/login.dart';
import 'package:savan_food/Screen/menu.dart';
import 'package:savan_food/Screen/order.dart';
import 'package:savan_food/Screen/register.dart';
import 'package:savan_food/Screen/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'lao'),
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        "/login": (_) => LoginScreen(),
        "/register": (_) => RegisterScreen(),
        "/home": (_) => HomeScreen(),
        "/menu": (_) => MenuScreen(),
        "/order": (_) => OrderScreen(),
        "/status": (_) => StatusScreen(),
      },
    );
  }
}
