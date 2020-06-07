import 'package:flutter/material.dart';
import 'package:flutterfirst/layout/home_screen.dart';

void main() {
  //write Hello World from left to right in app
  runApp(MyflutterApp());
}    ///or
///void main() =>  runApp(MyflutterApp());
//MaterialApp    //build shape of app
//AppBar         //bar in top of app
//Center         //in center of app
//child         //put another weight get in child

class MyflutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Frist app",
        home : Scaffold(
            appBar: AppBar(
                title: Text("Hello flutter")
            ),
            body:HomeScreen()       //class in another file
        )
    );
  }
}