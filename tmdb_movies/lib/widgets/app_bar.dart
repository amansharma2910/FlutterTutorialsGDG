import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Image.asset(
        'assets/images/logo.png',
        scale: 2.0,
      ),
    );
  }
}

class SearchIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: () {
          print('I was pressed');
        },
      ),
    );
  }
}


