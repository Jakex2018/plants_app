import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturesCardPlant(size: size, image: 'assets/images/bottom_img_1.png', press: (){},),
          FeaturesCardPlant(size: size, image: 'assets/images/bottom_img_2.png', press: (){},),
        ],
      ),
    );
  }
}

class FeaturesCardPlant extends StatelessWidget {
  const FeaturesCardPlant({
    super.key,
    required this.size, required this.image, required this.press,
  });

  final Size size;
  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: aDefaultPadding,
        top: aDefaultPadding /2,
        bottom: aDefaultPadding / 2
      ),
      width: size.width *0.8,
      height: 168,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
      ),
    );
  }
}