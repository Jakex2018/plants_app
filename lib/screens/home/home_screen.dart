import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_app/components/my_bottom_nav_bar.dart';
import 'package:plants_app/screens/home/components/body.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuild(),
      body: const BodyApps(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
  AppBar appBarBuild() {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {  },),
    );
  }
}