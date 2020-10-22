import 'package:flutter/material.dart';

class WelcomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WelcomeBannerImage(),
        Container(
          height: 400,
          alignment: Alignment.bottomCenter,
          color: Colors.blueGrey.shade900.withOpacity(0.6),
          // child: Center(child: BannerText()),
        ),
        WelcomeBannerSearch(),
      ],
    );
  }
}

class WelcomeBannerImage extends StatelessWidget {
  final String _welcomeImage =
      "https://s.studiobinder.com/wp-content/uploads/2019/11/Marvel-Movies-in-Order-of-Story-Featured-StudioBinder-min.jpg";

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(Colors.blue, BlendMode.color),
      child: Image.network(
        _welcomeImage,
        fit: BoxFit.cover,
        height: 400.0,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class WelcomeBannerSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Millions of movies, TV shows and people to discover. Explore now.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          TextField(
            textAlign: TextAlign.left,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Enter a movie or show..",
              hintStyle: TextStyle(
                fontSize: 16.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24.0),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                  width: 0,
                ),
              ),
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.all(16),
            ),
          ),
        ],
      ),
    );
  }
}
