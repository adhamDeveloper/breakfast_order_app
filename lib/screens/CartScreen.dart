import 'package:flutter/material.dart';

import '../widget/MyDrawer.dart';
import '../widget/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar("Cart",Icons.menu,"20/5/2020","2:00",Icons.shopping_cart),
        drawer: MyDrawer(),
        body: ListView(children: [
          Container(
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
                Divider(color: Colors.grey, height: 1.5),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Manakish thyme",
                              style: TextStyle(fontSize: 15)),
                          Text("2", style: TextStyle(fontSize: 15)),
                          Text("4&", style: TextStyle(fontSize: 15)),
                        ])),
                Divider(color: Colors.grey, height: 1.5),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Manakish thyme",
                              style: TextStyle(fontSize: 15)),
                          Text("2", style: TextStyle(fontSize: 15)),
                          Text("4&", style: TextStyle(fontSize: 15)),
                        ])),
                Divider(color: Colors.grey, height: 1.5),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Total"),
                          SizedBox(width: 70),
                          Text("4&")
                        ])),
                Divider(color: Colors.grey, height: 1.5),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.photo_size_select_actual),
                          SizedBox(width: 70),
                          Icon(Icons.delete_forever),
                        ])),
              ]))),
          Container(
              child: Card(
                  child: Column(
            children: [
              SizedBox(height: 15),
              Text(
                "Check Out",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "Total : 8&",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      ),
                    ],
                  )),
              Divider(color: Colors.grey, height: 1.5),
              Container(
                  width: 300,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        child: Text("00"),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:
                                BorderSide(color: Color(0xffF9C7B5), width: 2)),
                      ),
                      RaisedButton(
                          color: Color(0xffFCE2D8),
                          child: Text("Remaining Amount"),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                    color: Color(0xffFF9570),
                    child: Text("Confirmation"),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ],
          ))),
        ]));
  }
}
