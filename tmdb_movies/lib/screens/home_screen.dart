import 'package:flutter/material.dart';
import 'package:tmdb_movies/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 45, 52, 1),
        title: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Image.asset(
            'assets/images/logo.png',
            scale: 2.0,
          ),
        ),
        actions: [
          Padding(
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
          )
        ],
      ),
    );
  }
}
