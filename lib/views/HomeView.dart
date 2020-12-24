import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
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
            title: Text("Test"),
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
                left: 15,
                right: 15,
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    width: MediaQuery.of(context).size.height * .90,
                    height: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.scanner,
                              color: Colors.deepPurple,
                              size: 45,
                            ),
                            Text("SCAN QR")
                          ],
                        ),
                        Container(
                          height: 100,
                          width: 2,
                          color: Colors.deepPurple,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.bluetooth,
                              color: Colors.deepPurple,
                              size: 45,
                            ),
                            Text("BEACON")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
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
