import 'package:flutter/material.dart';

class CustomCardAdmin extends StatelessWidget {
  final String imageCard;
  final String textCard;
  final Function onTabs;

  const CustomCardAdmin({this.imageCard, this.textCard,this.onTabs});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
          onTap: onTabs,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageCard),
              SizedBox(height: 20),
              Text(
                textCard,
                style: TextStyle(
                    color: Color(0xffF9C8B7),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          )),
    ));
  }
}
