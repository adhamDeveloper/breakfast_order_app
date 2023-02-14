import 'package:flutter/material.dart';
import 'package:breackfast/widget/Custom_appbarAdmin.dart';

class TeaScreen extends StatefulWidget {
  @override
  TeaScreenState createState() => TeaScreenState();
}

class TeaScreenState extends State<TeaScreen> {
  List<String> listEmployee = ["Adham", "mheeb", "alashi"];
  List listRestaurant = ["Fahed", "Family", "kozondar"];

  String valueChoose;
  String valueChoose2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
          appBar: CustomAppbarAdmin(
            textAppbars: "Tea & Bill",
            icons: Icons.arrow_back,
            onTabs: () {
              Navigator.pop(context);
            },
            dates: "5/5/2005",
            times: "8:00",
          ),
          bottomSheet: TabBar(
            tabs: [
              Tab(
                  child: Text(
                "Requests table",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
              Tab(
                  child: Text("Bill",
                      style: TextStyle(fontSize: 20, color: Colors.black))),
            ],
          ),
          body: Container(
              child: TabBarView(
            children: [
              // teb 1
              Column(
                children: [
                  Card(
                      child: Container(
                          margin: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "FirstDay",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Column(
                                children: [
                                  Container(
                                      width: 190,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFCE2D8),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: DropdownButton(
                                            items: listEmployee.map((e2) {
                                              return DropdownMenuItem(
                                                value: e2,
                                                child: Text(e2),
                                              );
                                            }).toList(),
                                            hint: Text(
                                              "Employee Name",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            value: valueChoose,
                                            onChanged: (value) {
                                              setState(() {
                                                valueChoose = value;
                                              });
                                            }),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: 190,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFCE2D8),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: DropdownButton(
                                            items: listRestaurant.map((e) {
                                              return DropdownMenuItem(
                                                value: e,
                                                child: Text(e),
                                              );
                                            }).toList(),
                                            hint: Text(
                                              "Restaurant Name",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            value: valueChoose2,
                                            onChanged: (newValue) {
                                              setState(() {
                                                valueChoose2 = newValue;
                                              });
                                            },
                                          ))),
                                ],
                              ),
                            ],
                          ))),
                  Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            backgroundColor: Color(0xffFA4A0C),
                            child: Icon(
                              Icons.add,
                            ),
                            onPressed: () {},
                          )
                        ],
                      )),
                ],
              ),
              // tab 2
              Container(
                  child: Column(
                children: [
                  Container(
                    height: 300,
                    margin: EdgeInsets.all(10),
                    child: Card(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      SizedBox(height: 10),
                      Text("Name Restaurant",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Color(0xffFA4A0C),
                          child: Icon(
                            Icons.add,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ))),
    );
  }
}
