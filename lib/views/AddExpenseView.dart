import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddExpenseView extends StatefulWidget {
  AddExpenseViewState createState() => AddExpenseViewState();
}

class AddExpenseViewState extends State<AddExpenseView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          child: AppBar(
            elevation: 0.0,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              width: ScreenUtil().setWidth(750),
              height: ScreenUtil().setHeight(100),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Text(
                      "Tambah Pengeluaran",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(50),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
