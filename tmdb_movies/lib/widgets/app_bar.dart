import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget _logo = Row(
    children: [
      SizedBox(
        width: 20.0,
      ),
      Image.asset(
        'assets/images/logo.png',
        scale: 2.0,
      ),
    ],
  );

  final Widget _searchButton = Row(
    children: [
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: (){print("I was pressed");},
      ),
      SizedBox(
        width: 20.0,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Color.fromRGBO(0, 45, 52, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo,
          _searchButton,
        ],
      ),
    );
  }
}
