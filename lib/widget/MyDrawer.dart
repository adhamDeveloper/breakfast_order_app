import 'package:breackfast/screens/PreviousOrder.dart';
import 'package:breackfast/screens/Restaurants_Screen.dart';
import 'package:breackfast/screens/create_Account.dart';
import 'package:breackfast/screens/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:breackfast/helpers/helper_lang.dart';
import '../screens/AdminScreen.dart';
import '../screens/BillScreen.dart';
import '../screens/FavoriteScreen.dart';
import '../screens/home_screen.dart';
import '../screens/main.dart';
import 'Custom_ListTile_Drawer.dart';

class MyDrawer extends StatelessWidget {
  CreateAccount account = new CreateAccount();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Color(0xffF9C7B5)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/photo/user.png"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "adham alashi",
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FlatButton(
                          child: Text(
                            getTranslated(context, "bill"),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BillScreen()));
                          },
                        ),
                      ],
                    ),
                  ],
                )),
            CustomListTile(
                Text: getTranslated(context, "home"),
                icons: Icons.home,
                color: Colors.black,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
            CustomListTile(
                Text: getTranslated(context, "profile"),
                icons: Icons.person,
                color: Colors.black,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }),
            CustomListTile(
                Text: getTranslated(context, "favorite"),
                icons: Icons.favorite,
                color: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favorite()));
                }),
            CustomListTile(
                Text: getTranslated(context, "track_previous_order"),
                icons: Icons.book,
                color: Colors.black,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PreviousOrder()));
                }),
            CustomListTile(
                Text: getTranslated(context, "restaurant"),
                icons: Icons.restaurant,
                color: Colors.orange,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Restaurants()));
                }),
            CustomListTile(
                Text: getTranslated(context, "admin"),
                icons: Icons.supervised_user_circle,
                color: Colors.black,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdminScreen()));
                }),
            Divider(color: Color(0xffF9C7B5), thickness: 1.5, height: 50),

            CustomListTile(
                Text: getTranslated(context, "language"),
                icons: Icons.g_translate,
                color: Colors.blue,
                onTap: () {
                  changeLanguageDialog(context);
                }),
            CustomListTile(
                Text: getTranslated(context, "sign_out"),
                icons: Icons.exit_to_app,
                color: Colors.red,
                onTap: () {}),
          ],
        ),
      ),
    );
  }

  void changeLanguageDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Theme(
          data: ThemeData(canvasColor: Colors.transparent),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Material(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Change Language',
                      style: TextStyle(fontSize: 20),
                    ),
                    GestureDetector(
                        onTap: () {
                          Locale newLocale = Locale('ar', '');
                          MyApp.setLocale(context, newLocale);
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Arabic',
                          style: TextStyle(fontSize: 18),
                        )),
                    GestureDetector(
                        onTap: () {
                          Locale newLocale = Locale('en', '');
                          MyApp.setLocale(context, newLocale);
                          Navigator.pop(context);
                        },
                        child: Text('English', style: TextStyle(fontSize: 18))),
                  ],
                ),
              ),
              margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }
}
