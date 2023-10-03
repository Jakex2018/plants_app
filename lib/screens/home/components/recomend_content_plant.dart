import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';
import 'package:plants_app/screens/details/details_screen.dart';


class RecomendContentPlant extends StatelessWidget {
  const RecomendContentPlant({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:<Widget> [
          RecomendCardPlant(size: size, price: 60, country: 'RUSSIA', name: 'JOSE', image: 'assets/images/image_1.png', onTap: () { 
            Navigator.push(context,MaterialPageRoute(builder: (context) => const ScreenDetails(),));
          },),
          RecomendCardPlant(size: size, price: 60, country: 'RUSSIA', name: 'JOSE', image: 'assets/images/image_2.png', onTap: () { 
            Navigator.push(context,MaterialPageRoute(builder: (context) => const ScreenDetails(),));
           },),
          RecomendCardPlant(size: size, price: 60, country: 'RUSSIA', name: 'JOSE', image: 'assets/images/image_3.png', onTap: () { 
            Navigator.push(context,MaterialPageRoute(builder: (context) => const ScreenDetails(),));
           },),
        ],
      ),
    );
  }
}


class RecomendCardPlant extends StatelessWidget {
  const RecomendCardPlant({
    super.key, required this.size, required this.price, required this.country, required this.name, required this.image,required this.onTap,
  });

  final Size size;
  final int price;
  final String country, name,image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: aDefaultPadding /2,
        bottom: aDefaultPadding * 2.5
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(aDefaultPadding / 1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10), 
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.3)
                  )
                ]
              ),
              child: Row(children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$name\n".toUpperCase(),style: Theme.of(context).textTheme.labelLarge
                      ),
                      TextSpan(
                        text: country.toUpperCase(), style: TextStyle(color: kPrimaryColor.withOpacity(0.5))
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  "\$$price",style: Theme.of(context).textTheme.labelLarge?.copyWith(color: kPrimaryColor),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}