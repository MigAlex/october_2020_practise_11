import 'package:flutter/material.dart';
import 'package:october_2020_practise_11/screens/screen_exporter.dart';
import 'package:provider/provider.dart';

import 'model/random_user.dart';
import 'router/my_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final myUser = RandomUser();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => myUser,
      child: MaterialApp(
        onGenerateRoute: MyRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        home: HomeForScreens(),
      ),
    );
  }
}
