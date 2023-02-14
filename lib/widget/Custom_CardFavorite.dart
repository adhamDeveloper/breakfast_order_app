import 'package:flutter/material.dart';

class CustomFavorite extends StatefulWidget {
  @override
  _CustomFavoriteState createState() => _CustomFavoriteState();
}

class _CustomFavoriteState extends State<CustomFavorite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/photo/Mask.png",
              height: 100,
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.all(5),
                    child: Text("Falafel sandwich",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
                Container(
                    width: 200,
                    margin: EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.orange,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )),
                Container(
                    width: 225,
                    margin: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 90,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF0F4F8)),
                            child: Center(
                                child: Text("-  0  +",
                                    style: TextStyle(fontSize: 25)))),
                        Icon(Icons.library_books),
                        Icon(Icons.delete_forever),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
