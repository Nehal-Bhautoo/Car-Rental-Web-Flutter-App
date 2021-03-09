import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(20.0),
              ),
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, User!',
                          style: GoogleFonts.raleway(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'Welcome Back to Car Rental',
                          style: GoogleFonts.quicksand(
                              fontSize: 15.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.fill,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}