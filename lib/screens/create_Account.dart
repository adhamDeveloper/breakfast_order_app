import 'package:breackfast/api/controllers.dart';
import 'package:breackfast/model/model_signUp.dart';
import 'package:breackfast/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:breackfast/helpers/helper_lang.dart';
import 'package:breackfast/widget/custom_text_field.dart';

class MyAppScreen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreateAccount();
  }
}

class CreateAccount extends State<MyAppScreen2> {
  DatabaseHelperss databaseHelperss = DatabaseHelperss();
  TextEditingController create_account_names = TextEditingController();
  TextEditingController create_account_phones = TextEditingController();
  TextEditingController create_account_passwords = TextEditingController();
  TextEditingController create_account_emails = TextEditingController();
  bool password = true;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: SingleChildScrollView(
            child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Image.asset("assets/photo/splash.png", width: 150, height: 150),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      getTranslated(context, "create_account"),
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                CustomTextField(
                    controllers: create_account_names,
                    lableText: getTranslated(context, "full_name"),
                    hint: getTranslated(context, "enter_full_name"),
                    iconData: Icons.person,
                    KeyInput: TextInputType.text,
                    withPassword: false),
                CustomTextField(
                    controllers: create_account_phones,
                    lableText: getTranslated(context, "phone_number"),
                    hint: getTranslated(context, "enter_phone_number"),
                    iconData: Icons.phone,
                    KeyInput: TextInputType.number,
                    withPassword: false),
                CustomTextField(
                    controllers: create_account_passwords,
                    lableText: getTranslated(context, "password"),
                    hint: getTranslated(context, "enter_your_password"),
                    iconData: Icons.visibility,
                    KeyInput: TextInputType.text,
                    withPassword: true),
                CustomTextField(
                    controllers: create_account_emails,
                    lableText: getTranslated(context, "email"),
                    hint: getTranslated(context, "enter_email"),
                    KeyInput: TextInputType.emailAddress,
                    iconData: Icons.email,
                    withPassword: false),
                Container(
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.5)),
                      color: Color(0xffF9C7B5),
                      child: Text(
                        getTranslated(context, "create_account"),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async {
                        if (create_account_names.text.isEmpty ||
                            create_account_phones.text.isEmpty ||
                            create_account_passwords.text.isEmpty ||
                            create_account_emails.text.isEmpty) {
                          return scaffoldKey.currentState.showSnackBar(SnackBar(
                            content: Text("Fill out the fields!"),
                          ));
                        } else {
                          ModelSignUp model =
                              await databaseHelperss.CreateAccounts(
                                  name: create_account_names.text,
                                  phoneNumber: create_account_phones.text,
                                  password: create_account_passwords.text,
                                  email: create_account_emails.text);
                          if (model != null) {
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
                      },
                    )),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      getTranslated(context, "login"),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
