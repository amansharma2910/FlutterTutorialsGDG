import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

import 'package:tmdb_movies/widgets/movie_card.dart';

class TrendingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 25,
        itemBuilder: (context, count) =>
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieCard(
                  imageUrl:
                  "https://wp.technologyreview.com/wp-content/uploads/2017/08/andrew-ng-7.jpg",
                  height: 200,
                  aspectRatio: 4 / 6,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        faker.person.firstName(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${faker.date.month().toString()} ${faker.date.year().toString()}",
                      )
                    ],
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
