import 'package:flutter/material.dart';
import 'package:tmdb_movies/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 45, 52, 1),
        title: HomeLogo(),
        actions: [
          SearchIcon(),
        ],
      ),
    );
  }
}
