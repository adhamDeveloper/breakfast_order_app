import 'package:flutter/material.dart';

class CustomPreviousOrder extends StatefulWidget {
  @override
  _CustomPreviousOrderState createState() => _CustomPreviousOrderState();
}

class _CustomPreviousOrderState extends State<CustomPreviousOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: Card(
            child: Column(children: [
          SizedBox(height: 10),
          Text("Name Restaurant",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 15),
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Product", style: TextStyle(fontSize: 20)),
                  Text("Quantit", style: TextStyle(fontSize: 20)),
                  Text("price", style: TextStyle(fontSize: 20)),
                ],
              )),
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Manakish thyme", style: TextStyle(fontSize: 15)),
                    Text("2", style: TextStyle(fontSize: 15)),
                    Text("4&", style: TextStyle(fontSize: 15)),
                  ])),
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Manakish thyme", style: TextStyle(fontSize: 15)),
                    Text("2", style: TextStyle(fontSize: 15)),
                    Text("4&", style: TextStyle(fontSize: 15)),
                  ])),
          Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.photo_size_select_actual),
                    Icon(Icons.delete_forever),
                  ])),
        ])));
  }
}
