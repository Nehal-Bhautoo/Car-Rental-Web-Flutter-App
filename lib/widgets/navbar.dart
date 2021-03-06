import 'package:car_rental/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {

  final navLinks = ["Features", "Contact"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat-Bold"
          )
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFC86DD7),
                      Color(0xFF3023AE),
                    ], begin: Alignment.bottomRight, end: Alignment.topLeft
                  )
                ),
                child: Center(
                  child: Icon(
                    Icons.directions_car_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Car Rental",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                )
              )
            ],
          ),
          if(!ResponsiveLayout.isSmallScreen(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[...navItem()]..add(InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                width: 120,
                height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF6078ea).withOpacity(.3),
                    offset: Offset(0, 8),
                    blurRadius: 8)
                ]
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1,
                        fontFamily: "Montserrat-Bold"
                      )
                    ),
                  ),
                ),
              ),
            ))),
          )
          else
            Image.network("assets/icons/menu.png", width: 26, height: 26)
        ],
      ),
    );
  }
}
