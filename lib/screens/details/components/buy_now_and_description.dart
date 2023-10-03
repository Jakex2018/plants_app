import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';

class BuyNowAndDescription extends StatelessWidget {
  const BuyNowAndDescription({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        SizedBox(
          width: size.width / 2,
          height: 100,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            ),
            onPressed: () {},
            child: const Text(
              'Buy Now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: size.width / 2,
          height: 105,
          child: ElevatedButton(
            style: ButtonStyle(
              
              backgroundColor: MaterialStateProperty.all(Colors.white24),
            ),
            onPressed: () {},
            child: const Text(
              'Description',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        
      ],
    );
  }
}
