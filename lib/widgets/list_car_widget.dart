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
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xff262626),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    allCars.cars[i].image,
                    width: 180,
                    height: 120,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        allCars.cars[i].brand,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 10,
                          ),
                          SizedBox(
                            width: 5.0
                          ),
                          Text(
                            allCars.cars[i].name,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w200
                            ),
                          ),
                          SizedBox(
                            width: 5.0
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 10,
                          ),
                          SizedBox(
                              width: 5.0
                          ),
                          Text(
                            allCars.cars[i].fuel,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w200
                            ),
                          ),
                          SizedBox(
                            width: 5.0
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 10,
                          ),
                          SizedBox(
                              width: 5.0
                          ),
                          Text(
                            allCars.cars[i].color,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w200
                            ),
                          ),
                        ]
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12,
                          ),
                          SizedBox(
                              width: 5.0
                          ),
                          Text(
                            allCars.cars[i].rating,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w200
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 12,
                          ),
                          SizedBox(
                              width: 5.0
                          ),
                          Text(
                            allCars.cars[i].location,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w200
                            ),
                          ),
                        ],
                      )
                    ]
                  )
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 85),
                          child: favoriteButton(Icons.favorite),
                        ),
                        Text(
                          allCars.cars[i].price.toString() + "/weeks",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w200
                          ),
                        )
                      ],
                    )
                  ),
                )
              ]
            ),
          )
        ),
      ),
      ),
    );
  }

  Widget favoriteButton(icons) {
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
