import 'package:flutter/material.dart';
import 'package:breackfast/helpers/helper_lang.dart';
import 'package:breackfast/widget/custom_text_field.dart';

class MyScreen3 extends StatefulWidget {
  @override
  ForgotPass createState() => ForgotPass();
}

class ForgotPass extends State<MyScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 70),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/photo/password.png",
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(getTranslated(context, "forgotPass"),
                            style: TextStyle(
                                //0xff
                                color: Color(0xff000000),
                                fontSize: 20)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: Text(getTranslated(context, "pass_forgot"),
                            style: TextStyle(
                                color: Color(0xffD4D4D4),
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      CustomTextField(
                        lableText: getTranslated(context, "phone_number"),
                        hint: getTranslated(context, "enter_phone_number"),
                        iconData: Icons.phone,
                        KeyInput: TextInputType.number,
                        withPassword: false,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 50),
                        width: 250,
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          color: Color(0xffF9C7B5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.5)),
                          child: Text(getTranslated(context, "confirm"),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 50),
                          child: FlatButton(
                            child: Text(getTranslated(context, "login"),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )),
                    ],
                  )))),
    );
  }
}
