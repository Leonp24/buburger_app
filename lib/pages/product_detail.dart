import 'package:buburger_app/themes/themes.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail Burger",
          style: blackTextstyle,
        ),
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: blackColor,
          ),
        ),
      ),

      body: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            Image.asset(
              "assets/burger1.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beef Burger",
                      style: blackTextstyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "IDR 20.000",
                      style: greyTextstyle,
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/ic-kurang.png",
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("1"),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/ic-tambah.png",
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail",
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Burger daging yang rendah lemak, dilengkapi dengan keju,seledri, dan potongan bawang bombai yang lezat.",
              style: greyTextstyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Komposisi",
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Roti, seledri, wijen, bawang bombai, daging sapi, keju.",
              style: greyTextstyle,
            ),
          ],
        ),
      ),

      // BottomNavigation
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // keranjang
            Container(
              width: 150,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: null,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 10, right: 10),
                  child: Text(
                    "+ Keranjang",
                    style: blackTextstyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            // pesan sekarang
            Container(
              width: 150,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text("Pesan Sekarang", style: secondaryTextstyle,)),
            ),
          ],
        ),
      ),
    );
  }
}
