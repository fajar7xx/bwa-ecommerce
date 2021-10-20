import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class ProductPage extends StatefulWidget {
  // const ProductPage({ Key? key }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
  ];

  List familiarShoes = [
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png',
    'assets/img_sepatu.png'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // untuk membuat indicator slider
    Widget sliderIndicator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? primaryColor : unActiveColor),
      );
    }

    Widget familiarShoesCard(String imgUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imgUrl)),
            borderRadius: BorderRadius.circular(6)),
      );
    }

    Widget header() {
      int sliderIndex = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 20, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left)),
                Icon(Icons.shopping_bag),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map((image) => Image.asset(image,
                    width: MediaQuery.of(context)
                        .size
                        .width, // ini agar ukuran gambar selebar layar dengan menggunakan mediaquery
                    fit: BoxFit.cover))
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                //slider index untuk menentukanindex pada slider
                onPageChanged: (sliderIndex, reason) {
                  setState(() {
                    currentIndex = sliderIndex;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                //membuat indicator sesuai dengan slide
                images.map((e) {
              sliderIndex++;
              return sliderIndicator(sliderIndex);
            }).toList(),
          )
        ],
      );
    }

    Widget content() {
      int index = -1;

      return Container(
        margin: EdgeInsets.only(top: 17),
        width: double.infinity, //selebar layar mobile
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            color: bgColor1),
        child: Column(
          children: [
            //product title
            Container(
              margin: EdgeInsets.only(
                  top: defaultMargin,
                  left: defaultMargin,
                  right: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Terrex Urban Low',
                          style: primaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: semiBold)),
                      Text('Running',
                          style: subtitleTextStyle.copyWith(fontSize: 12))
                    ],
                  )),
                  Image.asset(
                    'assets/btn_whistlist.png',
                    width: 46,
                  )
                ],
              ),
            ),

            //harga
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(
                  top: 20, left: defaultMargin, right: defaultMargin),
              decoration: BoxDecoration(
                  color: bgColor2, borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price Start From', style: primaryTextStyle),
                  Text('\$145.87',
                      style: priceTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ))
                ],
              ),
            ),

            //deskripsi
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: defaultMargin,
                    left: defaultMargin,
                    right: defaultMargin),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Description',
                          style: primaryTextStyle.copyWith(fontWeight: medium)),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                        style: subtitleTextStyle.copyWith(fontWeight: light),
                        textAlign: TextAlign.justify,
                      )
                    ])),

            //familiar shooes
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text('Familiar Shoes',
                        style: primaryTextStyle.copyWith(fontWeight: medium)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  //menggunakan single child scroll view agar bisa di scroll
                  //sesuai arah scroll directionnya
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: familiarShoes.map((image) {
                      index++;
                      return Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? defaultMargin : 0),
                          child: familiarShoesCard(image));
                    }).toList()),
                  )
                ],
              ),
            ),

            //button nya
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/btn_chat.png')))),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            primary: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor: primaryColor,
                          ),
                          child: Text('Add To Cart',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 16, fontWeight: semiBold))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: bgColor6,
        body: ListView(
          children: [header(), content()],
        ));
  }
}
