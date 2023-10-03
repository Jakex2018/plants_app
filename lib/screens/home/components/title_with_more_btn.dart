import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';
import 'package:plants_app/screens/home/components/title_custom_header.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key, required this.text,required this.onPressed, required this.title,
  });

  final String text,title;
  final VoidCallback  onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
      child: Row(
      children: [
        TitleCustomHeader(text: title),
        const Spacer(),
        ElevatedButton(
          
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                
              ),

            ),
            
          ),
          onPressed:onPressed, 
          child: Text(text , style: const TextStyle(color:Colors.white),))
      ],
              ),
    );
  }
}



