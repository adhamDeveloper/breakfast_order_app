import 'package:flutter/material.dart';
import 'package:breackfast/widget/Custom_PreviousOrder.dart';
import 'package:breackfast/widget/MyDrawer.dart';
import 'package:breackfast/widget/custom_app_bar.dart';

class PreviousOrder extends StatefulWidget {
  @override
  _PreviousOrderState createState() => _PreviousOrderState();
}

class _PreviousOrderState extends State<PreviousOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Previous Order", Icons.menu,"1/12/2001","6:00",  Icons.shopping_cart),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          CustomPreviousOrder(),
          CustomPreviousOrder(),
          CustomPreviousOrder(),
          CustomPreviousOrder(),
        ],
      ),
    );
  }
}
