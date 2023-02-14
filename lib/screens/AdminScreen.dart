import 'package:flutter/material.dart';
import 'AddRestaurantScreen.dart';
import 'CoffeeScreen.dart';
import 'EmployeeScreen.dart';
import 'Tea_BillScreen.dart';
import '../widget/Custom_CardAdmin.dart';
import '../widget/Custom_appbarAdmin.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarAdmin(
          textAppbars: "Admin",
          icons: Icons.exit_to_app,
          dates: "25/3/2009",
          times: "4:00",
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                CustomCardAdmin(
                    imageCard: "assets/photo/account.png",
                    textCard: "Employee",
                    onTabs: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmployeeScreen()));
                    }),
                CustomCardAdmin(
                    imageCard: "assets/photo/restaurant.png",
                    textCard: "Restaurant",
                    onTabs: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddRestaurant()));
                    }),
                CustomCardAdmin(
                    imageCard: "assets/photo/tea.png",
                    textCard: "Tea & Bill ",
                    onTabs: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TeaScreen()));
                    }),
                CustomCardAdmin(
                    imageCard: "assets/photo/coffee.png",
                    textCard: "Coffee",
                    onTabs: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoffeeScreen()));
                    }),
              ],
            )));
  }
}
