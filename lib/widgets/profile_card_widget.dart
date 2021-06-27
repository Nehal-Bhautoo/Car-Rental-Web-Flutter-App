import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/user/1.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "Nehal Bhautoo",
                    style: TextStyle(
                      color: Color(0xff4e3bff),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Developer",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          profileListTile("Joined Date", "18-Apr-2021"),
          profileListTile("Projects", "32 Active"),
          profileListTile("Accomplishment", "125"),
        ],
      ),
    );
  }

  Widget profileListTile(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.grey
            )
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70
            ),
          ),
        ],
      ),
    );
  }
}
