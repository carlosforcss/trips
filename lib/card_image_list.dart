import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    String river = 'assets/img/river.jpeg';
    String people = 'assets/img/people.jpg';
    String mountainStars = 'assets/img/mountain_stars.jpeg';

    final list = Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(river),
          CardImage(people),
          CardImage(mountainStars),
        ]
      )
    );

    return list;
  
  }
}