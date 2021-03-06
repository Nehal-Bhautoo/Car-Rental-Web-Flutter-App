import 'package:car_rental/widgets/navbar.dart';
import 'package:flutter/material.dart';

class CarListPage extends StatefulWidget {
  @override
  _CarListPageState createState() => _CarListPageState();
}

class _CarListPageState extends State<CarListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavBar(),
        ],
      ),
    );
  }
}