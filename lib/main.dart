import 'package:flutter/material.dart';
import 'package:flutter_ui/views/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 15, 192, 44),
        )),
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}