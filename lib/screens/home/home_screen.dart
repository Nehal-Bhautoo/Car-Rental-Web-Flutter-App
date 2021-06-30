import 'package:car_rental/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/utils/responsiveLayout.dart';
import 'package:car_rental/widgets/search.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xe8303030),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      )
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LargeChild();
}

class _LargeChild extends State<LargeChild> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load('rive/buggy.riv').then((data) async {
      final file = RiveFile();
      if(file.import(data)) {
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('idle'));
        setState(() => _riveArtboard = artboard);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: _riveArtboard == null ? const SizedBox() : Rive(artboard: _riveArtboard),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat-Regular",
                      color: Colors.white70
                    )
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Welcome To ",
                      style: TextStyle(
                        fontSize: 60,
                          color: Colors.white70
                      ),
                      children: [
                        TextSpan(
                          text: "Car Rental",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4e3bff)
                          )
                        )
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text(
                      "LET’S EXPLORE THE WORLD",
                      style: TextStyle(
                          color: Colors.white70
                      )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SmallChildState();
}

class _SmallChildState extends State<SmallChild> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load('rive/buggy.riv').then((data) async {
      final file = RiveFile();
      if(file.import(data)) {
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('idle'));
        setState(() => _riveArtboard = artboard);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFFE2E3E9),
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat-Regular"
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'WellCome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFFE2E3E9)),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Car Rental',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                        color: Color(0xff4e3bff)
                    )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("LET’S EXPLORE THE WORLD"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: _riveArtboard == null ? const SizedBox() : Rive(artboard: _riveArtboard),
            ),
            SizedBox(
              height: 32,
            ),
            Search(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
