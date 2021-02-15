import 'package:car_rental/screens/home/home_screen.dart';
import 'package:car_rental/screens/login/login_screen.dart';
import 'package:car_rental/screens/sign-up/signup_desktop_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SignupDesktop()
      },
    );
  }
}