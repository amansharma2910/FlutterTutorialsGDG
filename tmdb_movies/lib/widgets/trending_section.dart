import 'package:flutter/material.dart';

class TrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[100],
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              'Trending Movies',
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TrendingList(),
        ],
      ),
    );
  }
}


class TrendingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, count) => TrendingCard(),
      itemCount: 20,
      scrollDirection: Axis.horizontal,
    );
  }
}

class TrendingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

