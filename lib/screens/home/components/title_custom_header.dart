import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';

class TitleCustomHeader extends StatelessWidget {
  
  const TitleCustomHeader({
    super.key, required this.text
  });

   final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(children:<Widget> [
         Padding(
          padding:  const EdgeInsets.only(left: aDefaultPadding / 4),
          child:  Text(text,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(right: aDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.23),
          ),
        )
      ],)
    );
  }
}