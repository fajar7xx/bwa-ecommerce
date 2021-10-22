import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class CheckoutCard extends StatelessWidget {
  // const CheckoutCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
          color: bgColor4, borderRadius: BorderRadius.circular(12)),
      child: Row(
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
                  'Terrex Urban LowTerrex Urban LowTerrex Urban LowTerrex Urban Low',
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                  overflow: TextOverflow
                      .ellipsis, //kalau panjang kali akan jadi titik2
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$153.98',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '2 Items',
            style: secondaryTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
