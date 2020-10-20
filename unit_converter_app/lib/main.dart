import 'package:flutter/material.dart';
import 'package:unit_converter_app/widgets/category.dart';


const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;


void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Category(
          name: _categoryName,
          iconLocation: _categoryIcon,
          iconColor: _categoryColor,
        ),
      ),
    );
  }
}



