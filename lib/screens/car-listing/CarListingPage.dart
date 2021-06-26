import 'package:car_rental/screens/car-listing/Dashboard.dart';
import 'package:car_rental/screens/car-listing/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car List',
      theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
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
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: SideNavbar()
          ),
          Expanded(
            flex: 12,
            child: Dashboard()
          )
        ],
      ),
    );
  }
}
