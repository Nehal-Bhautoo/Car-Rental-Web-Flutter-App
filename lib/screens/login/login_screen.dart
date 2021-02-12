import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../login/login_mobile_screen.dart';
import '../login/login_desktop_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LoginMobile(),
      desktop: LoginDesktop(),
    );
  }
}