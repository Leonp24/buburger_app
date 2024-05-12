import 'dart:async';

import 'package:buburger_app/pages/login_page.dart';
import 'package:buburger_app/themes/themes.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override

  // memanggil function yang akan dijalankan saat halaman ini dipanggil
  void initState() {
    // TODO: implement initState
    super.initState();
    movingPage();
  }

  // function setelah 2 detik akan pindah halaman
  void movingPage() {
    Timer(Duration(seconds: 2), () {
      // masukkan fungsi navigasi
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (contect) => LoginPage()));
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            // baris ke 1
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(children: [
                Image.asset(
                  "assets/ic-logo.png",
                  width: 30,
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Buburger",
                  style: splashTextstyle1.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),

            SizedBox(
              height: 20,
            ),

            // baris ke 2
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jagonya",
                    style: splashTextstyle2.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Burger!",
                    style: splashTextstyle2.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            // baris ke 3
            Spacer(),

            Image.asset(
              "assets/img-splash.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
