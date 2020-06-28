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
                            fontSize: 30,

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
                              fontSize: 30,
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
                            fontSize: 30,

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
                              fontSize: 30,
                              fontFamily: "Ranga",

                              ///font downloaded from google
                              //fontWeight: FontWeight.w700,

                              ///bold from family
                              //fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  )),
              Expanded(child: MyImage()),
              Expanded(child: MyButton()),
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

///class to add button
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RaisedButton button = RaisedButton(
      onPressed: () {
        onClick(context);
      },
      color: Colors.redAccent,
      //button donot have a text
      child: Text("Start game",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Ranga",
            fontSize: 20
          )
      ),


    );
    return Container(
      child: button,
      height: 10,
      width: 300,
      margin: EdgeInsets.all(20),
    );
  }

  void onClick(BuildContext context){
    AlertDialog alert = AlertDialog(
      title: Text("menna mohamed"),
      content: Text("Have fun"),
    );
    showDialog(
        context: context,
       builder:( BuildContext context){
          return alert ;
       }
    );
  }

}
