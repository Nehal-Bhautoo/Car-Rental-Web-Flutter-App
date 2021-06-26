import 'package:flutter/material.dart';

class NewCar extends StatefulWidget {
  @override
  _NewCarState createState() => _NewCarState();
}

class _NewCarState extends State<NewCar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [BoxShadow(
          color: Colors.black26,
          blurRadius: 5.0,
          spreadRadius: 1
        )]
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Car Available",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              // Table Header
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    )
                  )
                ),
                children: [
                  tableHeader("Cars"),
                  tableHeader("Price per Month"),
                  tableHeader("Availability"),
                  tableHeader(""),
                ]
              ),
              // Table Content
              tableRow(
                context,
                cars: "Civic",
                image: "assets/cars/civic.png",
                price: "12345",
                brand: "Available",
                color: Colors.green
              ),
              tableRow(
                context,
                cars: "R35 GTR",
                image: "assets/cars/nissan_gtr_0.png",
                price: "12345",
                brand: "Not-Available",
                color: Colors.red
              ),
              tableRow(
                context,
                cars: "Focus",
                image: "assets/cars/ford_0.png",
                price: "12345",
                brand: "Available later",
                color: Colors.grey
              ),
              tableRow(
                context,
                cars: "488 Spider",
                image: "assets/cars/ferrari_spider_488_0.png",
                price: "12345",
                brand: "Available",
                color: Colors.green
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Showing 4 out of 4 Results",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xff4e3bff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    );
  }

  TableRow tableRow(context, {cars, image, price, brand, color}) {
    return TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  image,
                  width: 30,
                ),
              ),
              SizedBox(width: 10,),
              Text(cars, style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        Text(price, style: TextStyle(color: Colors.white)),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(width: 10,),
            Text(brand, style: TextStyle(color: Colors.white)),
          ],
        ),
        Icon(
          Icons.add,
          color: Colors.white,
        )
      ]
    );
  }
}
