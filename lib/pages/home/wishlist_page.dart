import 'package:bwa_shamo/theme.dart';
import 'package:bwa_shamo/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: bgColor1,
      centerTitle: true,
      title: Text('Favorite Shoes'),
      elevation: 0,
      automaticallyImplyLeading:
          false, //untuk menhilangkan tombol back pada title
    );
  }

  Widget emptyWishlist() {
    return Expanded(
        child: Container(
      width: double.infinity, //agar lebar container selebar layar
      color: bgColor3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img_wishlist.png', width: 76),
          SizedBox(
            height: 23,
          ),
          Text('You don\'t have dream shoes?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              )),
          SizedBox(
            height: 12,
          ),
          Text('Let\'s find your favorite shoes', style: secondaryTextStyle),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ))
        ],
      ),
    ));
  }

  Widget content() {
    return Expanded(
        child: Container(
      color: bgColor3,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          WishlistCard(),
          WishlistCard(),
          WishlistCard(),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      header(),
      // emptyWishlist(),
      content()
    ]);
  }
}
