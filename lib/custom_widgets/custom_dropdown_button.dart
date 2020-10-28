import 'dart:math';

import 'package:flutter/material.dart';
import 'package:october_2020_practise_11/model/random_model.dart';

class CustomDropDownButton extends StatefulWidget {
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  static final List<RandomModel> items = [
    RandomModel(title: 'Whatever', icon: Icons.accessibility_new),
    RandomModel(title: 'Mr Ambalabamba', icon: Icons.thumb_down_off_alt),
    RandomModel(title: 'Heya', icon: Icons.point_of_sale),
    RandomModel(title: 'Albatros', icon: Icons.star_border_outlined)
  ];
  Random myRandom;
  RandomModel value;

  @override
  void initState() {
    myRandom = Random();
    value = items[myRandom.nextInt(items.length)];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: buildDropdown(),
      ),
    );
  }

  Container buildDropdown() => Container(
        width: 300,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.3),
              Colors.blue.withOpacity(0.85)
            ],
            stops: [0.15, 0.9],
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(color: Colors.blue[800], width: 4),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            value: value,
            items: items
                .map(
                  (item) => DropdownMenuItem(
                    value: item,
                    child: Container(
                      child: Row(children: [
                        Icon(item.icon, color: Colors.blue),
                        const SizedBox(width: 8),
                        Text(item.title),
                      ]),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) => setState(() {
              this.value = value;
            }),
          ),
        ),
      );
}
