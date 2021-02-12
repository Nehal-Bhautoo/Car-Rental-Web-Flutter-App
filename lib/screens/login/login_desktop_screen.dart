import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class LoginDesktop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load('rive/neon_car.riv').then((data) async {
      final file = RiveFile();
      if(file.import(data)) {
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('drive'));
        setState(() => _riveArtboard = artboard);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 130, vertical: 25),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: Container(
              width: double.infinity,
              height: 650.0,
              child: Padding(padding: EdgeInsets.all(35.0),
              child: Row(
                children: <Widget>[
                  Expanded(child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Sign-In",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50.0),
                        customTextField("Email", "you@example.com", Icons.mail, false),
                        SizedBox(height: 25.0),
                        customTextField("Password", "Enter Password", Icons.lock, true),
                      ],
                    ),
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(17.0),
                        child: _riveArtboard == null ? const SizedBox() : Rive(artboard: _riveArtboard),
                      ),
                    ),
                  )
                ],
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextField(String title, String hintText, IconData icon, bool isPassword) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black
          ),
        ),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon)
          ),
        )
      ],
    );
  }
}