import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';
import 'package:plants_app/screens/details/components/buy_now_and_description.dart';
import 'package:plants_app/screens/details/components/image_and_icons.dart';
import 'package:plants_app/screens/details/components/title_and_price.dart';

class DetailApps extends StatelessWidget {
  const DetailApps({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: 'ARMANDO',
            country: 'VENEZUELA',
            price: 400,
          ),
          const SizedBox(height: aDefaultPadding),
          BuyNowAndDescription(size: size),
        ],
      ),
    );
  }
}