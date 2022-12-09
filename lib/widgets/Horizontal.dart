import 'package:flutter/material.dart';

class HorizontalSlider extends StatefulWidget {
  const HorizontalSlider({super.key});

  @override
  State<HorizontalSlider> createState() => _HorizontalSliderState();
}

class _HorizontalSliderState extends State<HorizontalSlider> {
  List items = [
    {"name": "Browse All", 'icon': Icons.car_rental_outlined},
    {"name": "Classic", 'icon': Icons.bus_alert},
    {"name": "Convertable", 'icon': Icons.airline_seat_flat_outlined},
    {"name": "Hibrid", 'icon': Icons.motorcycle},
    {"name": "Disel", 'icon': Icons.card_travel},
    {"name": "Electric", 'icon': Icons.tire_repair},
    {"name": "Browse All", 'icon': Icons.book},
    {"name": "Classic", 'icon': Icons.engineering},
    {"name": "Convertable", 'icon': Icons.home},
    {"name": "Hibrid", 'icon': Icons.bike_scooter},
    {"name": "Disel", 'icon': Icons.motion_photos_auto},
    {"name": "Electric", 'icon': Icons.ballot},
  ];

  void tapHandler =(value){
    print("slidder pressed: $value");
  }; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 1
          )
        ]
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: ()=> {
              // handler goes here
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Icon(
                    items[index]['icon'],
                    size: 40,
                    color: Color.fromARGB(255, 138, 137, 137),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Text(
                      items[index]['name'],
                      style: TextStyle(
                        color: Color.fromARGB(255, 44, 44, 44)
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
