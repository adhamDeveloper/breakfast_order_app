import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:breackfast/widget/Custom_CardFavorite.dart';
import 'package:breackfast/widget/MyDrawer.dart';
import 'package:breackfast/widget/custom_app_bar.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar("Favorite", Icons.menu,"25/2/1999","12:00",Icons.shopping_cart),
        drawer: MyDrawer(),
        body: Container(
            child: ListView(
          children: [
            InkWell(
                onTap: () {},
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        CustomFavorite(),
                        CustomFavorite(),
                        CustomFavorite(),
                        CustomFavorite(),
                        CustomFavorite(),
                      ],
                    )))
          ],
        )));
  }
}
