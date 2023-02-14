import 'package:flutter/material.dart';
import 'package:breackfast/widget/MyDrawer.dart';
import 'package:breackfast/widget/custom_app_bar.dart';
import 'package:breackfast/widget/custom_text_field.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Profile", Icons.menu,"29/11/2001","11:00", Icons.shopping_cart),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 15),
          Image.asset(
            "assets/photo/user.png",
            height: 120,
            width: 120,
          ),
          CustomTextField(
              hint: "Enter Full Name",
              lableText: "Full Name",
              KeyInput: TextInputType.text,
              withPassword: false,
              iconData: Icons.person),
          CustomTextField(
              hint: "Enter Phone",
              lableText: "Phone",
              KeyInput: TextInputType.number,
              withPassword: false,
              iconData: Icons.phone),
          CustomTextField(
              hint: "Enter Password",
              lableText: "Password",
              KeyInput: TextInputType.text,
              withPassword: true,
              iconData: Icons.visibility),
          CustomTextField(
              hint: "Enter Email",
              lableText: "Email",
              KeyInput: TextInputType.emailAddress,
              withPassword: false,
              iconData: Icons.email),
        ],
      )),
    );
  }
}
