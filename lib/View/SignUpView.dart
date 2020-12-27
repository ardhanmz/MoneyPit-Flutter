import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneypit_flutter/generated/l10n.dart';

class SignUpView extends StatefulWidget {
  SignUpView({Key key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: ScreenUtil().setHeight(200),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).registration,
                      style: GoogleFonts.lato(
                          fontSize: ScreenUtil().setSp(50),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Text(
                      S.of(context).subtitle_registration,
                      style: GoogleFonts.lato(
                        fontSize: ScreenUtil().setSp(30),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(100),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).first_name,
                      labelStyle: GoogleFonts.lato()),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).last_name,
                      labelStyle: GoogleFonts.lato()),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).email_address,
                      labelStyle: GoogleFonts.lato()),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).income,
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
                    Navigator.pushNamed(context, '/ChangePassword');
                  },
                  child: Text(
                    S.of(context).next,
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
                      S.of(context).haveAccount,
                      style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(30)),
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignIn');
                      },
                      child: Text(
                        S.of(context).login,
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
            ]),
          ),
        ),
      ),
    );
  }
}

class UsernameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}
