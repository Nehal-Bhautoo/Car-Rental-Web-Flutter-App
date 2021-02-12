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
                  Expanded(child: null),
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
}