import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_app/constants.dart';

class DetailsCardPlant extends StatelessWidget {
  const DetailsCardPlant({
    super.key,
    required this.size, required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(aDefaultPadding/2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 22,
            color:kPrimaryColor.withOpacity(0.1)
          ),
          BoxShadow(
            offset: const Offset(-10, -10),
            blurRadius: 22,
            color:kPrimaryColor.withOpacity(0.1)
          ),
        ],
      ),
      child: SvgPicture.asset(image),
    );
  }
}