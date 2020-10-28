import 'package:flutter/material.dart';
import 'package:october_2020_practise_11/model/random_user.dart';
import 'package:provider/provider.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final myUser = Provider.of<RandomUser>(context, listen: false);
    controller = TextEditingController(text: myUser.username ?? '');
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(title: Text('Edit Screen')),
          body: Container(
            padding: EdgeInsets.all(36),
            child: Column(
              children: [
                buildUserName(),
                const SizedBox(height: 48),
                RaisedButton(onPressed: saveUser, child: Text('Save')),
              ],
            ),
          ),
        ),
        onWillPop: onWillPop);
  }

  Future<bool> onWillPop() async {
    final shouldItPop = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Are you sure about it?'),
            content: Text('Do you want to leave without saving?'),
            actions: [
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('Nope')),
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('Yup')),
            ],
          );
        });
    return shouldItPop ?? false;
  }

  TextField buildUserName() {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: 'username'),
    );
  }

  void saveUser() {
    final state = Provider.of<RandomUser>(context, listen: false);
    state.username = controller.text;

    Navigator.pop(context);
  }
}
