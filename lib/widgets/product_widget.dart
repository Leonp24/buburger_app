import 'package:buburger_app/themes/themes.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key, required this.nama, required this.imageUrl, required this.harga});

  // variabel untuk menerima data
  String nama, imageUrl, harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(
              nama,
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(
              harga,
              style: greyTextstyle,
            ),
          ),
        ],
      ),
    );
  }
}