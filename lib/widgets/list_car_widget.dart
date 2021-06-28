import 'package:car_rental/models/cars.dart';
import 'package:flutter/material.dart';

class ListCar extends StatefulWidget {
  @override
  _ListCarState createState() => _ListCarState();
}

class _ListCarState extends State<ListCar> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.fromLTRB(10,10,10,0),
          height: 220,
          width: double.maxFinite,
          child: Card(
            shadowColor: Color(0xff181818),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xff292929),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(7),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
