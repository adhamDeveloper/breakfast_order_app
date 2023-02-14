import 'package:breackfast/api/restaurant_api.dart';
import 'package:breackfast/model/model_all_restaurants.dart';
import 'package:flutter/material.dart';
import 'file:///D:/adham/breackfast/lib/screens/detailsRestaurants.dart';
import 'package:breackfast/widget/Custom_Card_Resturants.dart';
import 'package:breackfast/widget/MyDrawer.dart';
import 'package:breackfast/widget/custom_app_bar.dart';

class Restaurants extends StatelessWidget {
  RestaurantApi restaurantApi = new RestaurantApi();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppbar(
              "Restaurants",
              Icons.menu,
              "5/12/2002",
              "9:00",
              Icons.shopping_cart,
            ),
            drawer: MyDrawer(),
            body: FutureBuilder(
                future: restaurantApi.restaurantsApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    ModelAllRerstaurants modelRes = snapshot.data;
                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 1.0),
                        itemCount: modelRes.restaurants.length,
                        itemBuilder: (context, index) {
                          return CustomRestaurants(
                            image: "${modelRes.restaurants[index].picture}",
                            text: "${modelRes.restaurants[index].name}",
                            onTabs: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsRestaurant()));
                            },
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
