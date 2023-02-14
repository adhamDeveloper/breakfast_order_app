import 'package:breackfast/api/menu_api.dart';
import 'package:breackfast/model/model_menu_restaurant.dart';
import 'package:flutter/material.dart';
import 'package:breackfast/widget/CustomDetailsAppBar.dart';
import 'package:breackfast/widget/Custom_Card_Home.dart';

class MenuScreen extends StatelessWidget {
  MenuApi menuApi = new MenuApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomDetailsAppBar(TextApp: "Menu"),
        body: Column(
          children: [
            Expanded(
                child: FutureBuilder(
                    future: menuApi.menuApi(20),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        ModelMenu modelMenu = snapshot.data;
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 0.8),
                          itemCount: modelMenu.menu.length,
                          itemBuilder: (context, index) {
                            return Custom_Card(
                                images: "${modelMenu.menu[index].picture}",
                                text: "${modelMenu.menu[index].itemName}",
                                textNum: modelMenu.menu[index].price,
                                icons: Icons.favorite_border,
                                icons2: Icons.shopping_cart);
                          },
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }))
          ],
        ));
  }
}
