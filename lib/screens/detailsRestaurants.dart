import 'package:breackfast/api/menu_api.dart';
import 'package:flutter/material.dart';
import 'package:breackfast/widget/CustomDetailsAppBar.dart';
import 'package:breackfast/widget/custom_text_field.dart';

import 'MenuScreen.dart';

class DetailsRestaurant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomDetailsAppBar(
          TextApp: "The name Restaurants",
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset("assets/photo/Khaznadar.png"),
              SizedBox(height: 50),
              CustomTextField(
                hint: "Phone",
                KeyInput: TextInputType.number,
                withPassword: false,
                iconData: Icons.phone,
              ),
              CustomTextField(
                hint: "Address details",
                KeyInput: TextInputType.text,
                withPassword: false,
                iconData: Icons.location_on,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuScreen()));
                    },
                    child: Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orange,
                  ),
                ],
              )
            ],
          )),
        ));
  }
}
