import 'package:flutter/material.dart';
import 'package:flutter_ui/signUp.dart';
import 'package:flutter_ui/views/home.dart';

import 'login.dart';

// void main() {
//   runApp(MaterialApp(
//     // theme: ThemeData(
//     //     primarySwatch: Colors.green,
//     //     appBarTheme: AppBarTheme(
//     //       backgroundColor: Color.fromARGB(255, 6, 22, 241),
//     //     )),
//     home: SignUpPageScreen(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '>>> APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPageScreen(),
    );
  }
}
