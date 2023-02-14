import 'package:flutter/material.dart';

class Custom_Card extends StatefulWidget {
  final String images;
  final String text;
  final IconData icons;
  final IconData icons2;
  final int textNum;
  final Container container;

  final Function onTabs;

  Custom_Card(
      {this.images,
      this.text,
      this.icons,
      this.textNum,
      this.icons2,
      this.onTabs,
      this.container});

  @override
  _Custom_CardState createState() => _Custom_CardState();
}

class _Custom_CardState extends State<Custom_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: widget.onTabs,
      child: Card(
        margin: EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 10,
        child: Column(
          children: [
            Image.network(
              "${widget.images}",
              fit: BoxFit.cover,
              height: 70,
              width: double.infinity,
            ),
            Text(widget.text, style: TextStyle(fontSize: 15)),
            Text(widget.textNum == null ? "" : "${widget.textNum}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold)),
            Container(child: widget.container),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.all(3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(widget.icons, color: Colors.red),
                    Icon(widget.icons2, color: Colors.black)
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
