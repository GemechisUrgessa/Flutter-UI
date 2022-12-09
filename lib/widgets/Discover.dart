import 'package:flutter/material.dart';
import 'package:flutter_ui/models/car_model.dart';
import 'package:flutter_ui/widgets/CarCard.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(carModels.length, (index) {
              var car = carModels[index];
              return CarCard(car: car);
            }))

        // child: ListView.builder(
        //     itemCount: carModels.length,
        //     scrollDirection: Axis.vertical,
        //     itemBuilder: (BuildContext context, int index) {
        //       var car = carModels[index];
        //       return (CarCard(car: car));
        //     }),
        );
  }
}
