import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneypit_flutter/views/SignUpView.dart';

class LandingView extends StatefulWidget {
  LandingViewState createState() => LandingViewState();
}

class LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: SvgPicture.asset('assets/svg/hello.svg',
                  semanticsLabel: 'A red up arrow'),
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(300),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(200),
            ),
            Text(
              "Selamat Datang Di MoneyPit",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(45),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Asisten personal yang mencatat segala transaksi kamu selama ini. untuk masa depan yang lebih baik",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: ScreenUtil().setSp(35)),
            ),
            SizedBox(
              height: 20,
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
          ],
        ),
      )),
    );
  }
}
