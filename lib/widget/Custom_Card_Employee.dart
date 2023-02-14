import 'package:flutter/material.dart';

class CustomCardEmployee extends StatefulWidget {
  final String imageEmployee;
  final String nameEmployee;

  const CustomCardEmployee({this.imageEmployee, this.nameEmployee});

  @override
  _CustomCardEmployeeState createState() => _CustomCardEmployeeState();
}

class _CustomCardEmployeeState extends State<CustomCardEmployee> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(2),
        height: 80,
        child: Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.imageEmployee, height: 50, color: Colors.black),
            Text(
              widget.nameEmployee,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            IconButton(
              icon: Icon(
                Icons.delete_forever,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        )));
  }
}
