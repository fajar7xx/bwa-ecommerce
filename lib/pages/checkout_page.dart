import 'package:bwa_shamo/widgets/checkout_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class CheckoutPage extends StatelessWidget {
  // const CheckoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Checkout Details'),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 10),
        children: [
          //list items
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                CheckoutCard(),
                CheckoutCard(),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),

          //address details
          Container(
              margin: EdgeInsets.only(top: defaultMargin),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: bgColor4, borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address Details',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/icon_store_location.png',
                              width: 40),
                          Image.asset('assets/icon_line.png', height: 30),
                          Image.asset(
                            'assets/icon_your_address.png',
                            width: 40,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Store Location',
                              style: secondaryTextStyle.copyWith(
                                  fontSize: 12, fontWeight: light)),
                          Text('Adidas Store',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: medium)),
                          SizedBox(
                            height: defaultMargin,
                          ),
                          Text('Your Address',
                              style: secondaryTextStyle.copyWith(
                                  fontSize: 12, fontWeight: light)),
                          Text('Deli Serdang',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: medium)),
                        ],
                      )
                    ],
                  )
                ],
              )),

          //payment summary
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: bgColor4, borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payment Summary',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium)),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Quantity',
                        style: secondaryTextStyle.copyWith(fontSize: 12)),
                    Text(
                      '2 Items',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Price',
                        style: secondaryTextStyle.copyWith(fontSize: 12)),
                    Text(
                      '\$545.87',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping Fee',
                        style: secondaryTextStyle.copyWith(fontSize: 12)),
                    Text(
                      'Free',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(thickness: 1, color: Color(0xff2e3141)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: priceTextStyle.copyWith(
                          fontWeight: semiBold,
                        )),
                    Text('\$545.87',
                        style: priceTextStyle.copyWith(
                          fontWeight: semiBold,
                        )),
                  ],
                )
              ],
            ),
          ),

          //checkout button
          SizedBox(
            height: defaultMargin,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2e3141),
          ),
          Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: defaultMargin),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/checkout-success', (route) => false);
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text('Checkout Now',
                    style: primaryTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16)),
              ))
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
    );
  }
}
