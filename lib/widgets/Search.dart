import 'package:flutter/material.dart';

class SeachBar extends StatefulWidget {
  const SeachBar({super.key});

  @override
  State<SeachBar> createState() => _SeachBarState();
}

class _SeachBarState extends State<SeachBar> {
  TextEditingController searchFieldController = TextEditingController();
  void submitHandler(value) {
    print('value entered in search bar is $value');
    searchFieldController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 5, 74, 131),
        padding: const EdgeInsets.all(10),
        child: TextField(
          onSubmitted: submitHandler,
          controller: searchFieldController,
          decoration: InputDecoration(
            hintText: '    Search Motors',
            prefixIcon: const Icon(
              Icons.search,
            ),
            focusColor: Colors.green,
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ));
  }
}
