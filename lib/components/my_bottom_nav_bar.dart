import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_app/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:aDefaultPadding *2, right: aDefaultPadding*2,bottom: aDefaultPadding),
      height:60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.5)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget> [
          IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/flower.svg') ),
          IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/heart-icon.svg') ),
          IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/user-icon.svg') )
        ],
      ),
    );
  }
}