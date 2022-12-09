import 'package:flutter/material.dart';
import 'package:flutter_ui/views/home.dart';

import 'login.dart';

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

// void main(){
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: '>>> APP',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const LoginPageScreen(),
//     );
//   }
// }
