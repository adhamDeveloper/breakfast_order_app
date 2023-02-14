import 'package:flutter/material.dart';

import '../widget/MyDrawer.dart';
import '../widget/custom_app_bar.dart';
class BillScreen extends StatefulWidget {
  @override
  _BillScreenState createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          "Bill",
          Icons.menu,
          "25/3/1976",
          "5:00",
          Icons.shopping_cart,
        ),
        drawer: MyDrawer(),
        body: Container(
          height: 280,
          margin: EdgeInsets.all(5),
          child: Card(
              child: SingleChildScrollView(
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
            Divider(color: Colors.grey, height: 1.5),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Manakish thyme", style: TextStyle(fontSize: 15)),
                      Text("2", style: TextStyle(fontSize: 15)),
                      Text("4&", style: TextStyle(fontSize: 15)),
                    ])),
            Divider(color: Colors.grey, height: 1.5),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Manakish thyme", style: TextStyle(fontSize: 15)),
                      Text("2", style: TextStyle(fontSize: 15)),
                      Text("4&", style: TextStyle(fontSize: 15)),
                    ])),
            Divider(color: Colors.grey, height: 1.5),
            Padding(
                padding: EdgeInsets.all(15),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text("Total"),
                  SizedBox(width: 70),
                  Text("4&")
                ])),
            Divider(color: Colors.grey, height: 1.5),
            Padding(
                padding: EdgeInsets.all(15),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Icon(Icons.photo_size_select_actual),
                  SizedBox(width: 70),
                  Icon(Icons.delete_forever),
                ])),
          ]))),
        ));
  }
}
