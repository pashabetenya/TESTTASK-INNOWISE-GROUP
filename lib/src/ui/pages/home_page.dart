import 'package:application/src/ui/pages/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HomeTitleText(),
        elevation: 0.6,
      ),
      backgroundColor: Colors.white,
      body: const BuildingHomePage(),
    );
  }
}
