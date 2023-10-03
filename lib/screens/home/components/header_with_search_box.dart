import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_app/constants.dart';
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:const EdgeInsets.only(bottom: aDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: aDefaultPadding,
              right: aDefaultPadding,
              bottom: 36 + aDefaultPadding
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              children: <Widget>[
                Text('Hy Jose' , style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
                const Spacer(),
                Image.asset('assets/images/logo.png')
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
              height: 53,
              decoration: BoxDecoration(
              color: Colors.white , 
              borderRadius: BorderRadius.circular(20),
              boxShadow:const [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 150,
                  color:Color.fromRGBO(0, 0, 0, 0.23)                 
                )
              ],
              ),
              child: Row(
                children: <Widget>  [
                  const Expanded (
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.23)),
                        enabledBorder:InputBorder.none,
                        focusedBorder: InputBorder.none
                      ),
                    ),
                  ),
                   SvgPicture.asset('assets/icons/search.svg'),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}