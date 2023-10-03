import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key, required this.title, required this.country, required this.price,
  });
  final String title,country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
      child: Row(
        children: [
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "$title\n",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: kTextColor,fontWeight: FontWeight.bold)
              ),
              TextSpan(
                text: country,
                style: const TextStyle(color: kPrimaryColor, fontWeight:  FontWeight.bold , fontSize: 20)
              ),
            ],
          ),),
          const Spacer(),
          Text('\$$price', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: kPrimaryColor ,fontWeight: FontWeight.bold, fontSize:40 ))
        ],
      ),
    );
  }
}