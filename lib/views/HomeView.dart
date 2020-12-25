import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  static final DateTime now = DateTime.now();
  static final formatter = DateFormat('EEEE, dd MMMM yyyy');
  final String formatted = formatter.format(now);
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
            title: Text(
              "MoneyPit",
              style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(45),
                letterSpacing: .5,
              ),
            ),
            centerTitle: true,
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: ScreenUtil().setHeight(300),
                  width: MediaQuery.of(context).size.width,
                  child: ClipPath(
                    clipper:
                        CustomShape(), // this is my own class which extendsCustomClipper
                    child: Container(
                      height: ScreenUtil().setHeight(150),
                      color: Theme.of(context).primaryColor,
                      child: Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(35),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: ScreenUtil().setWidth(50),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(120),
                                height: ScreenUtil().setHeight(120),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png')),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(20),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jobathan Witwicky",
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(35)),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(10),
                                  ),
                                  Text(
                                    "@JohnWick",
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(30)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .12,
                left: 25,
                right: 25,
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    width: ScreenUtil().setWidth(1000),
                    height: ScreenUtil().setHeight(250),
                    child: Column(
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(20),
                        ),
                        Container(
                            child: Text(
                          formatted,
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(30)),
                        )),
                        SizedBox(
                          height: ScreenUtil().setHeight(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: SvgPicture.asset(
                                      'assets/svg/salary.svg',
                                      semanticsLabel: 'A red up arrow'),
                                  width: ScreenUtil().setWidth(75),
                                  height: ScreenUtil().setHeight(75),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(10),
                                ),
                                Text(
                                  "Pemasukan",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil().setSp(25)),
                                ),
                                Text(
                                  "Rp 5.000.000",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(25)),
                                )
                              ],
                            ),
                            Container(
                              height: 100,
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: SvgPicture.asset(
                                      'assets/svg/expenses.svg',
                                      semanticsLabel: 'A red up arrow'),
                                  width: ScreenUtil().setWidth(75),
                                  height: ScreenUtil().setHeight(75),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(10),
                                ),
                                Text(
                                  "Pengeluaran",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil().setSp(25)),
                                ),
                                Text(
                                  "Rp 3.000.000",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(25)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .35,
                left: 25,
                right: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: ScreenUtil().setWidth(40),
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Divider(
                              color: Theme.of(context).primaryColor,
                              height: ScreenUtil().setHeight(50),
                            )),
                        Text("Bulan Ini",
                            style: GoogleFonts.lato(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(30))),
                        Container(
                            width: ScreenUtil().setWidth(40),
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Divider(
                              color: Theme.of(context).primaryColor,
                              height: ScreenUtil().setHeight(50),
                            )),
                        Spacer(),
                        IconButton(
                            iconSize: 30,
                            icon: Icon(
                              Icons.navigate_next,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.navigation),
        backgroundColor: Theme.of(context).primaryColor,
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
