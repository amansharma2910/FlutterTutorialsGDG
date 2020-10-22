import 'package:flutter/material.dart';
import 'package:tmdb_movies/widgets/app_bar.dart';
import 'package:tmdb_movies/widgets/welcome_banner.dart';
import 'package:tmdb_movies/widgets/footer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 45, 52, 1),
        title: HomeLogo(),
        actions: [
          SearchIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeBanner(),
            SizedBox(
              height: 180.0,
            ),
            FooterTile(),
          ],
        ),
      ),

    );
  }
}
