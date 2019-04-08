import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  String pathImage = 'assets/img/people.jpg';
  String name = "Carlos Sanchez";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Stri Lanca";
  
  ReviewList();

  @override
  Widget build(BuildContext context){
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment),
        Review(pathImage, name, details, comment),
      ] // end children
    ); // end column
  }// end function
} // end class