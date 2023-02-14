import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String Text;
  final IconData icons;
  final Function onTap;
  final Color color;

  CustomListTile({this.Text, this.icons, this.onTap, this.color});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          widget.Text,
          style: TextStyle(fontSize: 20),
        ),
        leading: Icon(widget.icons, color: widget.color),
        onTap: widget.onTap,
      ),
    );
  }
}
