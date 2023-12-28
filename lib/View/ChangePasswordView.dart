import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneypit_flutter/generated/l10n.dart';

class ChangePasswordView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(750, 1334));
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
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
                      S.of(context)!.create_password,
                      style: GoogleFonts.lato(
                          fontSize: ScreenUtil().setSp(50),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Text(
                      S.of(context)!.subtitle_create_password,
                      style: GoogleFonts.lato(
                        fontSize: ScreenUtil().setSp(30),
                      ),
                    ),
                  ],
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
                      labelText: S.of(context)!.password,
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
                      labelText: S.of(context)!.repeat_password,
                      labelStyle: GoogleFonts.lato()),
                ),
              ),
              Spacer(),
              Container(
                width: ScreenUtil().setWidth(600),
                height: ScreenUtil().setHeight(100),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                  child: Text(
                    S.of(context)!.send,
                    style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(40)),
                  ),
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context)!.haveAccount,
                      style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(30)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignIn');
                      },
                      child: Text(
                        S.of(context)!.login,
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
