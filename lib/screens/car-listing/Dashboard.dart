import 'package:car_rental/widgets/header_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  height: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      spreadRadius: 1
                    )]
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'List',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Unique Cars Available for rent',
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(color: Colors.green),
          ),
          flex: 3,
        ),
      ],
    );
  }
}
