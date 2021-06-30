import 'package:car_rental/screens/car-listing/NavBar.dart';
import 'package:car_rental/screens/home/home_screen.dart';
import 'package:car_rental/screens/login/login_screen.dart';
import 'package:car_rental/screens/sign-up/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
  MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      ),
      routes: {
        '/': (context) => SideNavbar()
      },
    );
  }
}
