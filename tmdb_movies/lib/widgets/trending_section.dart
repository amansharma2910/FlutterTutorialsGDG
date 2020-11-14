import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

import 'package:tmdb_movies/widgets/movie_card.dart';
import 'package:tmdb_movies/widgets/trending_card.dart';

class TrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Trending Movies',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          TrendingCardList(),
        ],
      ),
    );
  }
}

