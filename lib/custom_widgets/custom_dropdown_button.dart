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
  RandomModel value = items.first;

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
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(color: Colors.deepOrange, width: 4),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            value: value, 
            items: items
                .map(
                  (item) => DropdownMenuItem(
                    value: item,
                    child: Row(children: [
                      Icon(item.icon),
                      const SizedBox(width: 8),
                      Text(item.title),
                    ]),
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
