import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class SplashPage extends StatefulWidget {
  // const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //untuk mengatur perpindahan layar dari splash screen ke login page dengan durasi
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(
          child: Container(
        width: 130,
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/splash_img.png'))),
      )),
    );
  }
}
