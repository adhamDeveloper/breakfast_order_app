import 'package:flutter/material.dart';
import 'package:breackfast/widget/Custom_appbarAdmin.dart';

class CoffeeScreen extends StatefulWidget {
  @override
  _CoffeeScreenState createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  String valueChoose;

  List listEmployee = [
    "Adham",
    "Ahmed",
    "Mohammad",
    "Mahmud",
    "Ramadan",
    "Hashim"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarAdmin(
          textAppbars: "Coffee",
          times: "11:30",
          dates: "5/5/2006",
          icons: Icons.arrow_back,
          onTabs: () {
            Navigator.pop(context);
          },
        ),
        body: Column(
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
                        Container(
                            width: 190,
                            decoration: BoxDecoration(
                                color: Color(0xffFCE2D8),
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 12),
                                child: DropdownButton(
                              value: valueChoose,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose = newValue;
                                });
                              },
                              items: listEmployee.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                              hint: Text(
                                "Employee Name",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              isExpanded: true,
                              underline: SizedBox(),
                            ))),
                      ],
                    ))),
            Padding(
                padding: EdgeInsets.all(15),
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
        ));
  }
}
