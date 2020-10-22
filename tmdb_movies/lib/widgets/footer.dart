import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// Custom widget for footer tile
class FooterTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Color.fromRGBO(03, 37, 65, 1),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/footer_logo.jpg',
            scale: 2.0,
          ),
          SocialHandleIcons(iconVal: FontAwesomeIcons.github,),
          SocialHandleIcons(iconVal: FontAwesomeIcons.instagram,),
          SocialHandleIcons(iconVal: FontAwesomeIcons.twitter,),
          SocialHandleIcons(iconVal: FontAwesomeIcons.google,),
        ],
      ),
    );
  }
}


// Custom widgets to create social media handle icons
class SocialHandleIcons extends StatelessWidget {
  final IconData iconVal;
  const SocialHandleIcons({this.iconVal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: InkWell(
        splashColor: Color.fromRGBO(5, 45, 52, 1),
        child: Material(
          color: Color(0xff21B9D6),
          shape: CircleBorder(),
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(
              iconVal,
              size: 20.0,
            ),
          ),
        ),
        onTap: (){},
      ),
    );
  }
}
