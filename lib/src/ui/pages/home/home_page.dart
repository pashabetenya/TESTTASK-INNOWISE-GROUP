import 'package:application/src/core/utils/constants.dart';
import 'package:application/src/ui/pages/home/components/building_home_page.dart';
import 'package:application/src/ui/widgets/texts/title_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitlePage(color: kLightGrey, title: 'Home Page'),
        elevation: 0.6,
      ),
      backgroundColor: Colors.white,
      body: const BuildingHomePage(),
    );
  }
}
