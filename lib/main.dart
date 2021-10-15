import 'package:bwa_shamo/pages/sign_in.dart';
import 'package:bwa_shamo/pages/splash.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //konfigurasi routing page
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignIn()
      },

      // home: SplashPage(),
    );
  }
}
