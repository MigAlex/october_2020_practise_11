import 'package:flutter/material.dart';

class HomeForScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home for screens')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Center(child: Text('To the Dropdown!')),
              onTap: () => Navigator.pushNamed(context, '/dropdown'),
            ),
            ListTile(
              title: Center(child: Text('To the Willpop!')),
              onTap: () => Navigator.pushNamed(context, '/homeWillPop'),
            )
          ],
        ),
      ),
    );
  }
}
