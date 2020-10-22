import 'package:flutter/material.dart';

class TrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: ListView.builder(
          itemBuilder: (BuildContext context, count) => TrendingCard(),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class TrendingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 10,
      width: 10,
      color: Colors.green[100],
      alignment: Alignment.center,
      child: Column(

      ),
    );
  }
}

