import 'package:flutter/material.dart';
import 'package:breackfast/widget/Custom_Card_Home.dart';
import 'package:breackfast/widget/Custom_appbarAdmin.dart';

class MenuAdminScreen extends StatefulWidget {
  @override
  _MenuAdminScreenState createState() => _MenuAdminScreenState();
}

class _MenuAdminScreenState extends State<MenuAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarAdmin(
          textAppbars: "Menu",
          times: "5:30",
          icons: Icons.arrow_back,
          dates: "6/6/2006",
          onTabs: () {}),
      body: Column(children: [
        Container(
            margin: EdgeInsets.all(15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Families bakery",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xffFA4A0C), width: 1.5)),
                    child: Text(
                      "Add a restaurant",
                      style: TextStyle(fontSize: 18, color: Color(0xffFA4A0C)),
                    ),
                    onPressed: () {},
                  ),
                ])),
        Expanded(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7, crossAxisCount: 3),
            children: [
              Custom_Card(
                  images: "assets/photo/Falafel.png",
                  text: "Falafel sandwich",
                  textNum: 2,
                  icons: Icons.favorite_border,
                  icons2: Icons.shopping_cart),
              Custom_Card(
                  images: "assets/photo/Falafel.png",
                  text: "Falafel sandwich",
                  textNum: 2,
                  icons: Icons.favorite_border,
                  icons2: Icons.shopping_cart),
              Custom_Card(
                  images: "assets/photo/Falafel.png",
                  text: "Falafel sandwich",
                  textNum: 2,
                  icons: Icons.favorite_border,
                  icons2: Icons.shopping_cart),
              Custom_Card(
                  images: "assets/photo/Falafel.png",
                  text: "Falafel sandwich",
                  textNum: 2,
                  icons: Icons.favorite_border,
                  icons2: Icons.shopping_cart),
              Custom_Card(
                  images: "assets/photo/Falafel.png",
                  text: "Falafel sandwich",
                  textNum: 2,
                  icons: Icons.favorite_border,
                  icons2: Icons.shopping_cart),
            ],
          ),
        )
      ]),
    );
  }
}
