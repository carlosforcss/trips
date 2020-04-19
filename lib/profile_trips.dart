import 'package:flutter/material.dart';


class _Button extends StatelessWidget{

  final IconData icon;
  double size = 15;

  _Button(this.icon, this.size);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(
        top: 15.0,
        left: 10.0,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white30,
      ),
      padding: EdgeInsets.all(8.0),
      child: Icon(
        this.icon,
        color: Colors.blueAccent,
        size: this.size,
      )
    );
  }
} // end Widget


class ReviewCard extends StatelessWidget{

  final String image;

  ReviewCard(this.image);

  @override
  Widget build(BuildContext context){

    final Widget description = Stack(
      children: <Widget>[
        Container(
          width: 230.0,
          height: 80.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all((Radius.circular(10.0))),
            boxShadow: <BoxShadow> [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Knuckles Mountains Range",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                )
              ),
              Text(
                "Hiking Water tall hunting Natural both, Scanery & Photography",
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w300,
                )
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Steps",
                    style: TextStyle(
                      fontSize: 10.0,
                    )
                  ),
                  Text(
                    "123,123,123",
                    style: TextStyle(
                      fontSize: 10.0
                    )
                  )
                ]
              ),
            ]
          )
        ),
        Container(
          width: 230.0,
          height: 80.0,
          child: Align(
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 20.0
              )
            ),
            alignment: Alignment(0.9, 1.3)
          )
        ),
      ]
    );

    return Container(
      width: 300.0,
      height: 200.0,
      margin: EdgeInsets.only(
        bottom: 50.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.image),
        ),
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
      child: Align(
        child: description,
        alignment: Alignment(0.0, 1.3),
      )
    );
  }
} // end Widget


class ProfileTrips extends StatelessWidget{

  List<String> funcion(){
    return <String>[
      "assets/img/mountain_stars.jpg",
      "assets/img/mountain.jpg",
      "assets/img/river.jpg",
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    String pathImage = "assets/img/me.jpg";

    final header = Container(
      margin: EdgeInsets.only(
        left: 30.0,
        top: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text(
            "Profile",
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )
          ),

          Icon(
            Icons.settings,
            color: Colors.amberAccent,
          )

        ],
      ),
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ), // end edgeinsets

      width: 100.0,
      height: 100.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        border: Border.all(
          width: 2.0,
          color: Colors.white,
        )
      )
    );

    final profile = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        photo,
        Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Carlos Sanchez",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.00,
                ),
              ),
              Text(
                "carlosdsanchez@gmail.com",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14.00,
                ),
              )
            ]
          )
        )
        
      ]
    );

    final buttonBar = Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _Button(
            Icons.mail,
            30.0,
          ),
          _Button(
            Icons.edit,
            30.0,
          ),
          _Button(
            Icons.add,
            45.0,
          ),
          _Button(
            Icons.message,
            30.0,
          ),
          _Button(
            Icons.share,
            30.0,
          ),
        ]
      )
    );

    final cardsList = Container(
      color: Colors.white,
      child: Container(
        child: Align(
          child: Column(
            children: <Widget>[
              ReviewCard("assets/img/mountain.jpeg"),
              ReviewCard("assets/img/mountain_stars.jpeg")
            ],
          ), 
        ),
      ),
    );

    return Container(
      color: Colors.lightGreen,
      child: ListView(
        children: <Widget>[

          Container(
            height: 350.0,
            color: Colors.lightGreen,
            child: ListView(
              children: <Widget>[
                header,
                profile,
                Container(
                  child: buttonBar,
                  margin: EdgeInsets.only(bottom: 100),
                ),
              ],
            ),
            // alignment: Alignment(-0.9, -0.6),
          ),
          cardsList,
        ]
      ),
    );
  }
  
}