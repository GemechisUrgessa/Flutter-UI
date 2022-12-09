import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/BottomNav.dart';

import '../widgets/Discover.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Discover(),
      ]),
      bottomNavigationBar: BottomNav(),
    );
  }
}
