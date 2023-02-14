import 'package:flutter/material.dart';

class CustomRestaurants extends StatefulWidget {
  final String image;
  final String text;
  final Function onTabs;

  const CustomRestaurants({this.image, this.text, this.onTabs});

  @override
  _CustomRestaurantsState createState() => _CustomRestaurantsState();
}

class _CustomRestaurantsState extends State<CustomRestaurants> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: widget.onTabs,
      child: Card(
        margin: EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          children: [
            Image.network(
              "${widget.image}",
              height: 70,
            ),
            Text("${widget.text}", style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    ));
  }
}
