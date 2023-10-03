import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_app/constants.dart';
import 'package:plants_app/screens/details/components/details_card_plant.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: aDefaultPadding *2),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children:<Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: aDefaultPadding *2),
                child: Column(
                  children:<Widget> [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding +35),onPressed: (){Navigator.pop(context);}, icon: SvgPicture.asset('assets/icons/back_arrow.svg'))
                    ),
                    const Spacer(),
                    DetailsCardPlant(size: size, image: 'assets/icons/sun.svg'),
                    DetailsCardPlant(size: size, image: 'assets/icons/icon_2.svg'),
                    DetailsCardPlant(size: size, image: 'assets/icons/icon_3.svg'),
                    DetailsCardPlant(size: size, image: 'assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height *0.8,
              width: size.width*0.75,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.32)
                  )
                ],
                image: const DecorationImage(
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

