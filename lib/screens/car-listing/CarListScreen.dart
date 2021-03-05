import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CarListScreen extends StatefulWidget {
  @override
  _CarListScreenState createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  List<IconData> icon = [
    Feather.folder,
    Feather.user,
    Feather.monitor,
    Feather.lock,
    Feather.message_circle
  ];
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
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Column(
                    children: icon.map((e) => NavBarItem(icon: e)).toList(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function onTap;
  final bool selected;
  NavBarItem({
    this.icon,
    this.onTap,
    this.selected
  });
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101.0,
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            child: CustomPaint(
              painter: CurvePainter(),
            ),
          ),
          Container(
            height: 80.0,
            width: 101.0,
            child: Center(
              child: Icon(
                widget.icon,
                color: Colors.black45,
                size: 18.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    
    path.moveTo(101, 0);
    path.quadraticBezierTo(101, 20, 75, 20);
    path.lineTo(50, 20);
    path.quadraticBezierTo(25, 20, 25, 40);
    paint.color = Colors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}