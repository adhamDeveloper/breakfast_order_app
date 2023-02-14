import 'dart:convert';

import 'package:breackfast/api/controllers.dart';
import 'package:breackfast/api/home_api.dart';
import 'package:breackfast/model/model_home.dart';
import 'package:flutter/material.dart';
import 'package:breackfast/widget/Custom_Card_Home.dart';
import 'package:breackfast/widget/MyDrawer.dart';
import 'package:breackfast/widget/custom_app_bar.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _MyScreen4State createState() {
    return _MyScreen4State();
  }
}

class _MyScreen4State extends State<HomeScreen> {
  String selectedRestaurant;

  List users = ["Fahed", "Zaharan", "Family", 'Adham'];

// HomeJson() async {
//   var res = await http.get("https://brakfast.applaab.com/api");
//   if (res.statusCode == 200) {
//     var obj = json.decode(res.body);
//     return obj;
//   }
// }
  HomeApi _homeApi =HomeApi();

  @override
  void initState() {
    //HomeJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppbar(
                "Home", Icons.menu, "8/3/20210", "10:30", Icons.shopping_cart),
            endDrawerEnableOpenDragGesture: false,
            drawer: MyDrawer(),
            body: ListView(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Families bakery",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            width: 190,
                            decoration: BoxDecoration(
                                color: Color(0xffFCE2D8),
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 12),
                                child: DropdownButton(
                                  value: selectedRestaurant,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedRestaurant = newValue;
                                    });
                                  },
                                  items: users.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text("$valueItem"),
                                    );
                                  }).toList(),
                                  hint: Text(
                                    "Choose Restaurant",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                ))),
                      ])),
               FutureBuilder(
                 future: _homeApi.homeApi(),
                 builder: (context, snapshot) {
                 if(snapshot.hasData){
                   ModelHome model =snapshot.data;
                   return GridView.builder(
                     shrinkWrap: true,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3, childAspectRatio: 1.0),
                     itemCount: model.menu.length,
                     itemBuilder: (context, index) {
                       return Custom_Card(
                         images: "${model.menu[index].picture}",
                         text: "${model.menu[index].itemName}",
                         textNum: model.menu[index].price,
                         icons: Icons.favorite_border,
                         icons2: Icons.shopping_cart,
                         container: Container(
                             width: 90,
                             padding: EdgeInsets.all(8),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 color: Color(0xffF0F4F8)),
                             child: Center(
                                 child: Text("-  0  +",
                                     style: TextStyle(fontSize: 25)))),
                       );
                     },
                   );
                 }else
                   return Center(child: CircularProgressIndicator(),);
               },)
            ])));
  }
}
