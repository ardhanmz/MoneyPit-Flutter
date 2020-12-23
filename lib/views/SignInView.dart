import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SingInView extends StatefulWidget {
  SignInViewState createState() => SignInViewState();
}

class SignInViewState extends State<SingInView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(200),
              ),
              Text(
                "MoneyPit",
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    letterSpacing: .5,
                    fontSize: ScreenUtil().setSp(120),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(300),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      labelStyle: GoogleFonts.lato()),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: GoogleFonts.lato()),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                height: ScreenUtil().setHeight(100),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignIn');
                  },
                  child: Text(
                    "Lanjutkan",
                    style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(40)),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: ScreenUtil().setWidth(600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Belum Mempunyai Akun?",
                      style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(30)),
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUp');
                      },
                      child: Text(
                        "Daftar",
                        style:
                            GoogleFonts.lato(fontSize: ScreenUtil().setSp(30)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(100),
              )
            ],
          ),
        ),
      ),
    );
  }
}
