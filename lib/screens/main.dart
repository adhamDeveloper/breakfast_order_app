import 'package:breackfast/model/model_login.dart';
import 'package:breackfast/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:breackfast/lang/app_locale.dart';
import 'package:breackfast/utilities/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.changeLanguage(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  LoginModel model = new LoginModel();

  changeLanguage(Locale locale) async {
    await savePrefString('lang', locale.languageCode);
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    getLang();
    super.initState();
  }

  getLang() async {
    if (await getPrefString('lang') == '') {
      await savePrefString('lang', 'ar');
    }
    String langCode = await getPrefString('lang');
    setState(() {
      _locale = Locale(langCode, '');
    });

    print(_locale);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      localizationsDelegates: [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      localeResolutionCallback: (currentLocale, supportedLocales) {
        if (currentLocale != null) {
          for (var locale in supportedLocales) {
            if (currentLocale.languageCode == locale.languageCode) {
              return currentLocale;
            }
          }
        }
        return supportedLocales.first;
      },
      locale: _locale,
      home: Scaffold(
          body: Center(
              child: Container(
        child: SplashScreen(
            seconds: 4,
            navigateAfterSeconds: //model == null ?
                MyAppScreen1(),
            //: HomeScreen(),
            image: Image.asset("assets/photo/splash.png"),
            photoSize: 200),
      ))),
    );
  }
}
