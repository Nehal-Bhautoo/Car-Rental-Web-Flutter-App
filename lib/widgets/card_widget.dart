import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),
                  children: [
                    TextSpan(text: "Hello"),
                    TextSpan(
                      text: "User",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ]
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
