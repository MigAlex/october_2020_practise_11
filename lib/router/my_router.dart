import 'package:flutter/material.dart';
import 'package:october_2020_practise_11/custom_widgets/custom_dropdown_button.dart';
import 'package:october_2020_practise_11/screens/screen_exporter.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (context) => HomeForScreens());
        break;
      case '/homeWillPop':
        return MaterialPageRoute(builder: (context) => HomeWillPop());
        break;
      case '/editUser':
        return MaterialPageRoute(builder: (context) => EditScreen());
        break;
      case '/dropdown':
        return MaterialPageRoute(builder: (context) => CustomDropDownButton());
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => Container(child: Text('Blank Space')),
        );
    }
  }
}
