import 'package:flutter/material.dart';
import 'package:october_2020_practise_11/model/random_user.dart';
import 'package:provider/provider.dart';

import 'edit_screen.dart';

class HomeWillPop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myUser = Provider.of<RandomUser>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Willpop'), actions: [
        IconButton(icon: Icon(Icons.edit), onPressed: () => editUser(context))
      ]),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Username:'),
            const SizedBox(width: 12),
            Text(myUser.username ?? " ")
          ],
        ),
      ),
    );
  }

  void editUser(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EditScreen()));
  }
}
