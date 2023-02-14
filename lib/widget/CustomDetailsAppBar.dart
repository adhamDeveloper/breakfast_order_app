import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget with PreferredSizeWidget {
  final String TextApp;

  const CustomDetailsAppBar({this.TextApp});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ClipRRect(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Color(0xffF9C7B5),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 20),
                Center(
                    child: Text(
                      TextApp,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
