import 'package:flutter/material.dart';

import '../screens/CartScreen.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String TextsApp;
  final String date;
  final String time;
  final IconData icons1;
  final IconData icons2;

  CustomAppbar(this.TextsApp, [this.icons1, this.date, this.time, this.icons2]);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Color(0xffF9C7B5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(icons1),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Text(
                  TextsApp,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                IconButton(
                  icon: Icon(icons2),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$date" == null ? "" : "$date",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('$time' == null ? "" : "$time",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
