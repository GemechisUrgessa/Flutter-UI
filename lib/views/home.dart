import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
//
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void handleBotNavChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [
    Stack(
      children: [
        Container(
          color: Colors.purple.withOpacity(0.5),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1541675154750-0444c7d51e8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvZ3xlbnwwfHwwfHw%3D&w=1000&q=80',
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nature",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sample Button"),
                ),
              )
            ],
          )),
          width: double.infinity,
          height: double.infinity,
        )
      ],
    ),
    Center(
      child: Text("Favorite"),
    ),
    Center(child: Text("Orders")),
    Center(child: Text("Profile")),
  ];

  List drawerItems = [
    ['Home', Icons.home],
    ['Favorite', Icons.favorite],
    ['Orders', Icons.shop],
    ["Profile", Icons.person]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        child: Drawer(
          width: 250,
          child: ListView(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNCtcGbeqqw5GpWJG0C0271mwvMhS8b_Co2A&usqp=CAU',
                      ),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1270067126/photo/smiling-indian-man-looking-at-camera.jpg?s=170667a&w=0&k=20&c=XwgSl6ktDnX13WbmqSR_vYMllIMLqUX0ak6mn5sGuPI='),
                      ),
                      Text(
                        "Alex Smith",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: drawerItems.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.all(Radius.circular(20))
                    ),
                    child: Card(
                      child: ListTile(
                        selected: _selectedIndex == index,
                        selectedColor: Colors.white,
                        selectedTileColor: Color.fromARGB(255, 15, 192, 44),
                        onTap: () {
                          handleBotNavChange(index);
                          Navigator.pop(context);
                        },
                        title: Text('${drawerItems[index][0]}'),
                        leading: Icon(drawerItems[index][1]),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        title: Text(
          "Sample Page",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 85, 84, 84),
              spreadRadius: 3,
              blurRadius: 20
            )
          ]
        ),
        child: CurvedNavigationBar(
            index: _selectedIndex,
            onTap: handleBotNavChange,
            backgroundColor: Color.fromARGB(255, 15, 192, 44),
            // type: BottomNavigationBarType.fixed,
            items: drawerItems.map((item) {
              return (Icon(
                item[1],
                color: Color.fromARGB(255, 15, 192, 44),
              ));
            }).toList()),
      ),
    );
  }
}
