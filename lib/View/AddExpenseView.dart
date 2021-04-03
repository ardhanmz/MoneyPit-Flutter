import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneypit_flutter/generated/l10n.dart';

class AddExpenseView extends HookWidget {
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
                      S.of(context).add_expense,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(50),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: ScreenUtil().setWidth(1200),
                  height: ScreenUtil().setHeight(400),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Positioned(
                    left: 30,
                    top: 12,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Activity',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
