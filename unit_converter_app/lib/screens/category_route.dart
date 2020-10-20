import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_converter_app/widgets/category.dart';

final _bgcolor = Colors.green[100];

class CategoryRoute extends StatelessWidget {

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _categoryIcons = <IconData>[
    Icons.linear_scale,
    Icons.map,
    Icons.blur_circular,
    Icons.line_weight,
    Icons.timer,
    Icons.phonelink,
    Icons.lightbulb_outline,
    Icons.monetization_on,
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {

    final categories = <Category>[];

    for(var i = 0; i < _categoryNames.length; i++){
      final category = Category(
        name: _categoryNames[i],
        iconLocation: _categoryIcons[i],
        iconColor: _baseColors[i],
      );
      categories.add(category);
    }

    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      color: _bgcolor,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
      ),
    );

    final appBar = AppBar(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: _bgcolor,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black87,
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}

