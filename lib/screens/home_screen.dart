import 'package:chat/widgets/category_selector.dart';
import 'package:chat/widgets/favorite_contacts.dart';
import 'package:chat/widgets/recent_chats.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          title: const Center(
              child: Text(
            'Chats',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          )),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 30.0,
                color: Colors.white)
          ],
        ),
        body: Column(
          children: <Widget>[
            const CategorySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Column(
                  children: const <Widget>[FavoriteContacts(), RecentChats()],
                ),
              ),
            )
          ],
        ));
  }
}
