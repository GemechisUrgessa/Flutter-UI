import 'package:flutter/material.dart';
import 'package:flutter_ui/models/car_model.dart';

class CarCard extends StatefulWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 200.0,
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.car.imageUrl))),
            child: Icon(Icons.favorite_border_outlined),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              widget.car.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "\$${widget.car.price}",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      ),
    );
  }
}
