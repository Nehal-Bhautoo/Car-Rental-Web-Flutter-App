import 'package:car_rental/widgets/list_car_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarList extends StatefulWidget {
  @override
  _CarListState createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80.0,
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Car Rental',
                              style: GoogleFonts.raleway(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
                Container(
                  //padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Filters',
                          style: GoogleFonts.raleway(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'More Filters',
                            textAlign: TextAlign.end,
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4e3bff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Container(
                  //padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        filterButton(
                          Icons.car_rental,
                          "Car Rental",
                        ),
                        filterButton2(
                          Icons.electric_car,
                          "Electric Car",
                        ),
                        filterButton3(
                          Icons.edit_location,
                          "Nearby",
                        ),
                        filterButton4(
                          Icons.car_repair,
                          "Car Repair",
                        ),
                      ],
                    ),
                  )
                ),
                SizedBox(
                  height: 14.0,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(child: ListCar()),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container()
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget filterButton(icons, name) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: _hasBeenPressed1 ? Color(0xe8454545) : Color(0xe8303030),
        primary: _hasBeenPressed1 ? Color(0xe8454545) : Color(0xe8303030),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        side: BorderSide(
          width: 1,
          color: Color(0xe8454545)
        ),
      ),
      onPressed: () {
        setState(() {
          _hasBeenPressed1 = !_hasBeenPressed1;
        });
      },
      child: Container(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: _hasBeenPressed1 ? Color(0xff4e3bff) : Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icons,
                color: _hasBeenPressed1 ? Colors.white70 : Colors.grey,
                size: 20.0,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              name,
              style: TextStyle(
                color: _hasBeenPressed1 ? Colors.white70 : Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget filterButton2(icons, name) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: _hasBeenPressed2 ? Color(0xe8454545) : Color(0xe8303030),
        primary: _hasBeenPressed2 ? Color(0xe8454545) : Color(0xe8303030),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        side: BorderSide(
            width: 1,
            color: Color(0xe8454545)
        ),
      ),
      onPressed: () {
        setState(() {
          _hasBeenPressed2 = !_hasBeenPressed2;
        });
      },
      child: Container(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: _hasBeenPressed2 ? Color(0xff4e3bff) : Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icons,
                color: _hasBeenPressed2 ? Colors.white70 : Colors.grey,
                size: 20.0,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              name,
              style: TextStyle(
                  color: _hasBeenPressed2 ? Colors.white70 : Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget filterButton3(icons, name) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: _hasBeenPressed3 ? Color(0xe8454545) : Color(0xe8303030),
        primary: _hasBeenPressed3 ? Color(0xe8454545) : Color(0xe8303030),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        side: BorderSide(
            width: 1,
            color: Color(0xe8454545)
        ),
      ),
      onPressed: () {
        setState(() {
          _hasBeenPressed3 = !_hasBeenPressed3;
        });
      },
      child: Container(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: _hasBeenPressed3 ? Color(0xff4e3bff) : Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icons,
                color: _hasBeenPressed3 ? Colors.white70 : Colors.grey,
                size: 20.0,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              name,
              style: TextStyle(
                  color: _hasBeenPressed3 ? Colors.white70 : Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget filterButton4(icons, name) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: _hasBeenPressed4 ? Color(0xe8454545) : Color(0xe8303030),
        primary: _hasBeenPressed4 ? Color(0xe8454545) : Color(0xe8303030),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        side: BorderSide(
            width: 1,
            color: Color(0xe8454545)
        ),
      ),
      onPressed: () {
        setState(() {
          _hasBeenPressed4 = !_hasBeenPressed4;
        });
      },
      child: Container(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: _hasBeenPressed4 ? Color(0xff4e3bff) : Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icons,
                color: _hasBeenPressed4 ? Colors.white70 : Colors.grey,
                size: 20.0,
              ),
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              name,
              style: TextStyle(
                  color: _hasBeenPressed4 ? Colors.white70 : Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
}
