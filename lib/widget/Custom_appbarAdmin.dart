import "package:flutter/material.dart";

class CustomAppbarAdmin extends StatelessWidget with PreferredSizeWidget {
  final String textAppbars;
  final IconData icons;
  final String dates;
  final String times;
  final Function onTabs;

  const CustomAppbarAdmin(
      {this.textAppbars, this.icons, this.dates, this.times, this.onTabs});

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
              children: [
                IconButton(
                  icon: Icon(
                    icons,
                    color: Colors.black,
                  ),
                  onPressed: onTabs,
                ),
                SizedBox(
                  width: 90,
                  height: 50,
                ),
                Text(
                  textAppbars,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$dates" == null ? "" : "$dates",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('$times' == null ? "" : "$times",
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
  Size get preferredSize => Size.fromHeight(90);
}
