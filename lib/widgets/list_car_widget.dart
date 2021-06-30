import 'package:car_rental/models/cars.dart';
import 'package:flutter/material.dart';

class ListCar extends StatefulWidget {
  @override
  _ListCarState createState() => _ListCarState();
}

class _ListCarState extends State<ListCar> {
  bool _hasBeenPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.fromLTRB(10,10,10,0),
          height: 180,
          width: double.maxFinite,
          child: Card(
            shadowColor: Color(0xff181818),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xff292929),
            elevation: 5,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      allCars.cars[i].image,
                      width: 180,
                      height: 120,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                allCars.cars[i].brand,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, top: 4.5),
                              child: Icon(
                                Icons.circle,
                                color: Colors.grey,
                                size: 8,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                allCars.cars[i].name,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5, top: 4.5),
                              child: Icon(
                                Icons.circle,
                                color: Colors.grey,
                                size: 8,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                allCars.cars[i].fuel,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5, top: 4.5),
                              child: Icon(
                                Icons.circle,
                                color: Colors.grey,
                                size: 8,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                allCars.cars[i].color,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, top: 4),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 8,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                allCars.cars[i].rating,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 5),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                allCars.cars[i].location,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          filterButton(
                            Icons.favorite,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ),
        ),
      ),
      ),
    );
  }

  Widget filterButton(icons) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: _hasBeenPressed2 ? Color(0xFF3023AE) : Color(0xe8303030),
        primary: _hasBeenPressed2 ? Color(0xFF3023AE) : Color(0xe8303030),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        side: BorderSide(
            width: 0,
            color: Colors.transparent
        ),
      ),
      onPressed: () {
        setState(() {
          _hasBeenPressed2 = !_hasBeenPressed2;
        });
      },
      child: Icon(
        icons,
        color: _hasBeenPressed2 ? Colors.white70 : Colors.grey,
        size: 20.0,
      ),
    );
  }
}