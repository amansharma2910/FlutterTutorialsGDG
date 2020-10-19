import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unit Converter"),
          centerTitle: true,
        ),
        body: HelloRectangle(),
      ),
    );
  }
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        width: 300,
        height: 400,
        child: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}

