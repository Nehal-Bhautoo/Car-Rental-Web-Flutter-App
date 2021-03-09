import 'package:car_rental/screens/car-listing/Dashboard.dart';
import 'package:car_rental/screens/car-listing/NavBar.dart';
import 'package:flutter/material.dart';

class CarListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarListPageState(),
    );
  }
}

class CarListPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavbar(),
          Dashboard()
        ],
      ),
    );
  }
}
