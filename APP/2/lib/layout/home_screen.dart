import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      alignment: Alignment.center, //Alignment.bottomLeft
      color: Colors.yellow,
      //width: 400,
      //height: 400,
      //margin: EdgeInsets.all(30),
      //margin: EdgeInsets.only(left:30 , top :20),
      //padding: EdgeInsets.all(50),
      padding: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 20),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            /// tanzem el app b chlidern  side by side
            children: <Widget>[
              Expanded(
                child: Text(
                  "menna",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,

                    ///font downloaded from google
                    fontFamily: "Ranga",
                    backgroundColor: Colors.lightBlue,

                    ///bold from family
                    //fontWeight: FontWeight.w700,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(

                  /// to donot make error in long text
                  child: Text(
                "senior software ",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.lightBlueAccent,
                  fontSize: 70,
                  fontFamily: "Ranga",

                  ///font downloaded from google
                  //fontWeight: FontWeight.w700,

                  ///bold from family
                  //fontWeight: FontWeight.bold,
                ),
              ))
            ],
          )),
          Expanded(
              child: Row(
            /// tanzem el app b chlidern  side by side
            children: <Widget>[
              Expanded(
                child: Text(
                  "mohamed",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,

                    ///font downloaded from google
                    fontFamily: "Ranga",
                    backgroundColor: Colors.lightBlue,

                    ///bold from family
                    //fontWeight: FontWeight.w700,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(

                  /// to donot make error in long text
                  child: Text(
                "senior software",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.lightBlueAccent,
                  fontSize: 70,
                  fontFamily: "Ranga",

                  ///font downloaded from google
                  //fontWeight: FontWeight.w700,

                  ///bold from family
                  //fontWeight: FontWeight.bold,
                ),
              ))
            ],
          )),
          Expanded(child: MyImage())
        ],
      ),
    ));
  }
}

///class to add image
class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('images/nemo.jpg');
    Image myImg = new Image(image: image); //take instance from image
    return Container(
      child: myImg,
    );
  }
}
