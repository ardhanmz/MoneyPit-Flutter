import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneypit_flutter/generated/l10n.dart';

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
      appBar: PreferredSize(
        child: Container(
          child: AppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
          ),
        ),
        preferredSize: (Size.fromHeight(0)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: ScreenUtil().setHeight(500),
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper:
                      CustomShape(), // this is my own class which extendsCustomClipper
                  child: Container(
                    height: ScreenUtil().setHeight(150),
                    color: Theme.of(context).primaryColor,
                    child: Center(
                      child: Text(
                        "MoneyPit",
                        style: GoogleFonts.pacifico(
                          textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontSize: ScreenUtil().setSp(120),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      labelText: S.of(context).username,
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
                      labelText: S.of(context).password,
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
                    Navigator.pushNamed(context, '/Home');
                  },
                  child: Text(
                    S.of(context).login,
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
                      S.of(context).dontHaveAccount,
                      style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(30)),
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUp');
                      },
                      child: Text(
                        S.of(context).register,
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

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
