import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  IconContent({@required this.cardIcon, @required this.cardText});
  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(height: 15,),
        Text(cardText,
          style: TextStyle(
              fontSize: 18,
              color: Color(0xff8d8e98)
          ),)
      ],
    );
  }
}