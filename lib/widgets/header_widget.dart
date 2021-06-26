import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              navigationIcon(icon: Icons.search),
              navigationIcon(icon: Icons.send),
            ],
          )
        ],
      ),
    );
  }

  Widget navigationIcon({icon}) {
    return Icon(icon, color: Colors.white);
  }
}
