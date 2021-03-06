import 'package:bwa_shamo/theme.dart';
import 'package:bwa_shamo/widgets/product_cart.dart';
import 'package:bwa_shamo/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          //pakai expanded biar tidak terjadi overflow pada text yang sangat panjang
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Halo Fajar",
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Text(
                  "@fajarsiagian",
                  style: subtitleTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/img_profile.png'))),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      //singlechildscrollview agar bisa scroll kesamping
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, //agar bisa slide ke samping
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: primaryColor),
              child: Text(
                'All Shoes',
                style:
                    primaryTextStyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: subtitleTextColor)),
              child: Text(
                'Running',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: subtitleTextColor)),
              child: Text(
                'Training',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: subtitleTextColor)),
              child: Text(
                'Basketball',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: subtitleTextColor)),
              child: Text(
                'Hiking',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularProductTitle() {
    return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(fontSize: 23, fontWeight: semiBold),
        ));
  }

  Widget popularProducts() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      //agar bisa di scroll kesamping
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              )
            ],
          )),
    );
  }

  Widget newArrivalTitle() {
    return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'New Arrival',
          style: primaryTextStyle.copyWith(fontSize: 23, fontWeight: semiBold),
        ));
  }

  Widget newArrivals() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Column(
        children: [ProductTile(), ProductTile(), ProductTile(), ProductTile()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      header(),
      categories(),
      popularProductTitle(),
      popularProducts(),
      newArrivalTitle(),
      newArrivals()
    ]);
  }
}
