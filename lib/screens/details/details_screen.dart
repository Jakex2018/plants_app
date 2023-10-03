import 'package:flutter/material.dart';
import 'package:plants_app/screens/details/components/detail.dart';

class ScreenDetails extends StatelessWidget {
  const ScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailApps(),
    );
  }
}