import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final double aspectRatio;
  final double height;
  final Widget stackChild;
  final String imageUrl;

  MovieCard({this.aspectRatio, this.height, this.stackChild, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 150,
      padding: EdgeInsets.only(right: 24.0),
      child: AspectRatio(
        aspectRatio: 300 / 150,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
