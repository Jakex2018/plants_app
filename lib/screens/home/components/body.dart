import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';
import 'package:plants_app/screens/home/components/feature_plants.dart';
import 'package:plants_app/screens/home/components/header_with_search_box.dart';
import 'package:plants_app/screens/home/components/recomend_content_plant.dart';
import 'package:plants_app/screens/home/components/title_with_more_btn.dart';

class BodyApps extends StatelessWidget {
  const BodyApps({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //single in small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(text: 'More', onPressed: () {  }, title: 'Recomended',),
          RecomendContentPlant(size: size),
          TitleWithMoreBtn(text: 'More', onPressed: (){}, title: 'Feactures Coming'),
          FeaturePlants(size: size),
          const SizedBox(height:  aDefaultPadding,)
        ],
      ),
    );
  }
}