import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatefulWidget {
  @override
  _CarListScreenState createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height,
            width: 101.0,
            decoration: BoxDecoration(
              color: Color(0xff332A7C),
              borderRadius: BorderRadius.circular(20.0),
            ),
          )
        ],
      ),
    );
  }
}