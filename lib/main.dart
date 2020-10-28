import 'package:flutter/material.dart';

import 'custom_widgets/custom_dropdown_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomDropDownButton(),
    );
  }
}

