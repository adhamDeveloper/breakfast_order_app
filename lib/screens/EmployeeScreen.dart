import 'package:breackfast/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:breackfast/widget/Custom_Card_Employee.dart';
import 'package:breackfast/widget/Custom_appbarAdmin.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class EmployeeScreen extends StatefulWidget {
  @override
  _EmployeeScreenState createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarAdmin(
        textAppbars: "Employee",
        icons: Icons.arrow_back,
        onTabs: () {
          Navigator.pop(context);
        },
        dates: "20/2/2020",
        times: "11:30",
      ),
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
                      "Add Employee",
                      style: TextStyle(fontSize: 18, color: Color(0xff000000)),
                    ),
                    onPressed: () {
                      alert();
                    },
                  )),
            ],
          ),
          Expanded(
              child: Container(
                  child: SingleChildScrollView(
                      child: Column(
            children: [
              CustomCardEmployee(
                  imageEmployee: "assets/photo/account.png",
                  nameEmployee: "Adham Alashi"),
              CustomCardEmployee(
                  imageEmployee: "assets/photo/account.png",
                  nameEmployee: "Mohammad"),
              CustomCardEmployee(
                  imageEmployee: "assets/photo/account.png",
                  nameEmployee: "Hussan"),
            ],
          ))))
        ],
      ),
    );
  }

  Widget alert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 450,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "",
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        CustomTextField(
                            lableText: "full name",
                            hint: "enter full name",
                            iconData: Icons.person,
                            KeyInput: TextInputType.text,
                            withPassword: false),
                        CustomTextField(
                            lableText: "phone number",
                            hint: "enter phone number",
                            iconData: Icons.phone,
                            KeyInput: TextInputType.number,
                            withPassword: false),
                        CustomTextField(
                            lableText: "password",
                            hint: "enter your password",
                            iconData: Icons.visibility,
                            KeyInput: TextInputType.text,
                            withPassword: true),
                        CustomTextField(
                            lableText: "email",
                            hint: "enter email",
                            KeyInput: TextInputType.emailAddress,
                            iconData: Icons.email,
                            withPassword: false),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.5)),
                              child: Text(
                                "Add",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22),
                              ),
                              color: const Color(0xffF9C8B7),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  )),
            ),
          );
        });
  }
}
