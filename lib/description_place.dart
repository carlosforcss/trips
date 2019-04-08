import 'package:flutter/material.dart';
import 'review_list.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context){

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      )
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      )
    );


    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      )
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ), // End edgeInset
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ) // Text
        ), // Container
        
        Row(
          children: <Widget> [
            star,
            star,
            star,
            star,
            star_border,
          ]
        ),// end row
      ]
    );

    final description = Container(
          margin: EdgeInsets.only(
            right: 20.0,
            left: 20.0,
            top: 20.0,
          ),
          child: Text(
            descriptionPlace,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFF56575a)
            ),
            textAlign: TextAlign.left,
          )
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        new ButtonPurple("Navigate"),
        new ReviewList(),
      ]
    );
  }
}