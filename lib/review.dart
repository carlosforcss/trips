import 'package:flutter/material.dart';


class Review extends StatelessWidget{

  String pathImage;
  String name;
  String details;
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment);
  
  @override
  Widget build(BuildContext context){

    final userComment =Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ) // end Style
      ),// end child
    ); // end userComment

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
        ) // end Style
      ),// end child
    ); // end Info

    final userNmae = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
        ) // end Style
      ),// end child
    ); // end userName

    final userDetails = Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userNmae,
          userInfo,
          userComment,
        ] // end children
      ) // end column
    ); // end userDetail


    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ), // end edgeinsets

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )// end Box Decoration
      ) // end decoration
    ); // end photo



    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ]
    ); // end row
  } // end function
} // end class