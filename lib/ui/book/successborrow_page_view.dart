// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:pintas_app/models/bot_navbar.dart';

class SuccessBorrowPage extends StatelessWidget {
  const SuccessBorrowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 731),
      builder: () => MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Container(
                width: 204.w,
                height: 241.h,
                margin: EdgeInsets.only(top: 149.h, bottom: 47.h),
                child: Lottie.asset("assets/book-animation.json",
                    fit: BoxFit.contain, repeat: false),
              ),
              Center(
                child: Text(
                  "Berhasil Meminjam",
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    letterSpacing: 1.5,
                    color: HexColor("#55585F"),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 171.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return NavBar();
                  }));
                },
                child: Container(
                  width: 325.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    color: HexColor("#39A2DB"),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                    child: Text(
                      "Kembali ke Beranda",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: HexColor("#FFFFFF"),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
