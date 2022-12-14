import 'package:application/src/core/utils/index.dart';

class ThemeUtils {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: kGreen,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
      fontFamily: 'Gotham',
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }
}
