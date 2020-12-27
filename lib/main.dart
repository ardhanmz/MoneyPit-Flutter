import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:moneypit_flutter/generated/l10n.dart';
import 'package:moneypit_flutter/View/AddExpenseView.dart';
import 'package:moneypit_flutter/View/ChangePasswordView.dart';
import 'package:moneypit_flutter/View/HomeView.dart';
import 'package:moneypit_flutter/View/LandingView.dart';
import 'package:moneypit_flutter/View/SignInView.dart';
import 'package:moneypit_flutter/View/SignUpView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff26a69a);
    const primaryLightColor = Color(0xff64d8cb);
    const primaryDarkColor = Color(0xff00766c);
    const primaryTextColor = Color(0xff000000);
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'MoneyPit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: primaryColor,
        primaryColorLight: primaryLightColor,
        primaryColorDark: primaryDarkColor,
        buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            buttonColor: primaryColor),
        accentColor: Colors.yellow,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingView(),
        '/SignUp': (context) => SignUpView(),
        '/SignIn': (context) => SingInView(),
        '/ChangePassword': (context) => ChangePasswordView(),
        '/Home': (context) => HomeView(),
        '/AddExpense': (context) => AddExpenseView()
      },
    );
  }
}
