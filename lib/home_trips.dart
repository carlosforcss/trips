import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String titulo = "Bahamas";
  int stars = 4;
  String descripcion = "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace(titulo, stars, descripcion),
              ]
            ),
            HeaderAppBar(),
          ]
        );
  }
}