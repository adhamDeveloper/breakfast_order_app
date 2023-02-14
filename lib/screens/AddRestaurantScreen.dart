import 'package:flutter/material.dart';
import '../widget/Custom_Card_Resturants.dart';
import '../widget/Custom_appbarAdmin.dart';

class AddRestaurant extends StatefulWidget {
  @override
  _AddRestaurantState createState() => _AddRestaurantState();
}

class _AddRestaurantState extends State<AddRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarAdmin(
            textAppbars: "Restaurant",
            icons: Icons.arrow_back,
            onTabs: () {
              Navigator.pop(context);
            },
            dates: "6/6/2006",
            times: "10:00"),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.all(20),
                    child: RaisedButton(
                      color: Color(0xffF9C8B7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Add Restaurant",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff000000)),
                      ),
                      onPressed: () {},
                    )),
              ],
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(10),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: [
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                  CustomRestaurants(
                    image: "assets/photo/Khaznadar.png",
                    text: "Khaznadar",
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
