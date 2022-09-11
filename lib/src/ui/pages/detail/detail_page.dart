import 'package:application/src/core/utils/constants.dart';
import 'package:application/src/ui/pages/detail/components/building_detail_page.dart';
import 'package:application/src/ui/widgets/texts/title_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitlePage(color: kLightGrey, title: 'Detail Page'),
        elevation: 0.6,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: const <Widget>[
          BuildingDetailPage(),
        ],
      ),
    );
  }
}
