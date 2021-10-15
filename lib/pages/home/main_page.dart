import 'package:bwa_shamo/pages/home/chat_page.dart';
import 'package:bwa_shamo/pages/home/home_page.dart';
import 'package:bwa_shamo/pages/home/profile_page.dart';
import 'package:bwa_shamo/pages/home/wishlist_page.dart';
import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  // const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex =
      0; //ketika membuka halaman main page maka yang akan muncul adalah homepage

  @override
  Widget build(BuildContext context) {
    //membuat floating action button untuk cart
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customBottonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        //bottomappbar dan shape dan notchmargin untuk membuta circular pada bottom nav
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: bgColor4,
              currentIndex: currentIndex,
              onTap: (value) {
                // print(value);
                setState(() {
                  currentIndex =
                      value; //ketika meng klik salah satu buttom navigation view maka nilai current index berubah
                });
              },
              type: BottomNavigationBarType.fixed, //agar warnanya tetap
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: Image.asset('assets/icon_home.png',
                          width: 20,
                          color:
                              currentIndex == 0 ? primaryColor : unActiveColor),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: Image.asset('assets/icon_chat.png',
                          width: 20,
                          color:
                              currentIndex == 1 ? primaryColor : unActiveColor),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: Image.asset('assets/icon_fav.png',
                          width: 20,
                          color:
                              currentIndex == 2 ? primaryColor : unActiveColor),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: Image.asset('assets/icon_profile.png',
                          width: 20,
                          color:
                              currentIndex == 3 ? primaryColor : unActiveColor),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    // untuk menentukan page mana yang akan di tampilkan
    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
        backgroundColor: bgColor1,
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .centerDocked, //posisi action floating button
        bottomNavigationBar: customBottonNav(),
        body: body());
  }
}
