import 'package:bwa_shamo/pages/edit_profile.dart';
import 'package:bwa_shamo/pages/home/main_page.dart';
import 'package:bwa_shamo/pages/sign_in.dart';
import 'package:bwa_shamo/pages/sign_up.dart';
import 'package:bwa_shamo/pages/splash.dart';
import 'package:flutter/material.dart';
// import 'theme.dart';

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
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage(),
        '/edit-profile': (context) => EditProfilePage(),
      },

      // home: SplashPage(),
    );
  }
}
