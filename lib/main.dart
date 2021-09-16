import 'package:flutter/material.dart';
import 'package:tatv_ui/home_page.dart';
import 'package:tatv_ui/inspiration_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

