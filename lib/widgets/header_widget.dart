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
              color: Color(0xff4e3bff),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              navigationIcon(icon: Icons.search),
            ],
          )
        ],
      ),
    );
  }

  Widget navigationIcon({icon}) {
    return Icon(
      icon,
      color: Colors.white
    );
  }
}
