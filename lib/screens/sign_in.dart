import 'package:breackfast/api/controllers.dart';
import 'package:breackfast/model/model_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:breackfast/helpers/helper_lang.dart';
import 'package:breackfast/widget/custom_text_field.dart';
import 'create_Account.dart';
import 'forgot_pass.dart';
import 'home_screen.dart';

class MyAppScreen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignIn();
  }
}

class SignIn extends State<MyAppScreen1> {

  DatabaseHelperss databaseHelperss = new DatabaseHelperss();
  TextEditingController _phones = TextEditingController();
  TextEditingController _passwords = TextEditingController();
  String msgStatus;
  bool password = true;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        key: scaffoldKey,
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Image.asset(
                "assets/photo/splash.png",
                width: 150,
                height: 150,
              ),
              Container(
                  margin: EdgeInsets.all(15),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyScreen3()));
                    },
                    child: Text(
                      getTranslated(context, "login"),
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              CustomTextField(
                controllers: _phones,
                KeyInput: TextInputType.number,
                lableText: getTranslated(context, "phone_number"),
                hint: getTranslated(context, "enter_your_phone_number"),
                iconData: Icons.phone,
                withPassword: false,
              ),
              CustomTextField(
                controllers: _passwords,
                KeyInput: TextInputType.text,
                lableText: getTranslated(context, "password"),
                hint: getTranslated(context, "enter_your_password"),
                iconData: Icons.visibility,
                withPassword: true,
              ),
              Container(
                  margin: EdgeInsets.all(12),
                  child: FlatButton(
                    child: Text(
                      getTranslated(context, "forgotPass"),
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyScreen3()));
                    },
                  )),
              Container(
                  width: 200,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.5)),
                      padding: EdgeInsets.all(15),
                      color: Color(0xffF9C7B5),
                      child: Text(
                        getTranslated(context, "login"),
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async {
                        if (_phones.text.isEmpty || _passwords.text.isEmpty) {
                          return scaffoldKey.currentState.showSnackBar(SnackBar(
                            content: Text("Fill out the fields!"),
                          ));
                        } else {
                          LoginModel logins =
                              await databaseHelperss.LoginAccounts(
                                  phoneNumber: _phones.text,
                                  password: _passwords.text);
                          if (logins != null) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                                (route) => false);
                            scaffoldKey.currentState.showSnackBar(
                                SnackBar(content: Text("logged in")));
                          } else {
                            return scaffoldKey.currentState.showSnackBar(SnackBar(
                                content: Text(
                                    "There is an error in the word, do you have an account!")));
                          }
                        }
                      })),
              Container(
                  child: TextButton(
                child: Text(
                  getTranslated(context, "create_account"),
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAppScreen2()));
                },
              )),
            ],
          ),
        ))));
  }
}
