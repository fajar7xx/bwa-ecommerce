import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // const ProductCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xffECEDEF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset('assets/img_sepatu.png',
              width: 215, height: 150, fit: BoxFit.cover),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Running Shoes',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Court Vision 2.0',
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: semiBold),
                  overflow: TextOverflow
                      .ellipsis, //apabila tulisaannya panjang maka akan titik2
                ),
                SizedBox(height: 6),
                Text('\$67.87',
                    style: priceTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium))
              ],
            ),
          )
        ],
      ),
    );
  }
}
