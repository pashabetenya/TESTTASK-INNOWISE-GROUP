import 'package:application/past changes/src/ui/pages/index.dart';

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
        title: const DetailTitleText(),
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
