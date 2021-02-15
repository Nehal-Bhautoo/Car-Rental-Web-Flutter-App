import 'package:car_rental/screens/sign-up/signup_desktop_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // mobile: ,
      desktop: SignupDesktop(),
    );
  }

}