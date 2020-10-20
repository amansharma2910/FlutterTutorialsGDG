import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final double _height = 100.0;
final double _size = 60.0;
final double _iconWidth = 70.0;
final double _textSize = 24.0;
final _borderRadius = BorderRadius.circular(_height / 2);

class Category extends StatelessWidget {
  final String name;
  final IconData iconLocation;
  final ColorSwatch iconColor;

  const Category({
    Key key,
    @required this.name,
    @required this.iconLocation,
    @required this.iconColor,
  })
      : assert(name != null),
        assert(iconLocation != null),
        assert(iconColor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _height,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: iconColor,
          splashColor: iconColor,
          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        ),
      )
      ,
    );
  }
}
