import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class CartCard extends StatelessWidget {
  // const CartCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor4, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage('assets/img_sepatu.png'))),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sport Running Shoes Adidas',
                    style: primaryTextStyle.copyWith(fontWeight: semiBold),
                  ),
                  Text(
                    '\$ 135.87',
                    style: priceTextStyle,
                  )
                ],
              )),
              Column(
                children: [
                  Image.asset(
                    'assets/btn_add.png',
                    width: 16,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text('2', style: priceTextStyle.copyWith(fontWeight: medium)),
                  SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    'assets/btn_min.png',
                    width: 16,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_trash.png',
                width: 10,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Remove',
                style: aletTextStyle.copyWith(fontSize: 12, fontWeight: light),
              )
            ],
          )
        ],
      ),
    );
  }
}
