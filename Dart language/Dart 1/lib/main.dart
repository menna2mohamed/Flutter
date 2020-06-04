import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //write Hello World from left to right in app
  runApp(Center(        //in center of app
                 child:
                 Text("Hello World", textDirection: TextDirection.ltr,)   //text
                )
        );

  //use weight get center and text

  ///Dart language

  ////////////////    IF condition
  bool isOk  = false ;

  if(isOk)
        { //  if   isOk == false
          print("switch is ok");
        }
    else
        {
          print("switch is not ok");
        }

  /////////////////////   SWitch
  String command ="DO";
  var name ;
  switch (command)
  {
    case "DO" :
      print("DO it");
      name = "menna";   // can change name in special case
      continue add ; // after print DO it GO to add
    add:  //Title
    case "add" :
      print("anyway");
      break;
    case "NOT" :
      print("NOT DO it");
      break;
    default :
      print("nothing");
      break;

  }

  ////////////////    While
  bool run = true ;
  int count = 0 ;
  while(run){
    print("hello $count");
    if(count == 5){
      break;     // OR run = false;        //exit from while loop
    }
    else{
      count++;
    }
  }

  /////////////////  for loop
  var arr = [100,200,300,400];    /// Array

  for (int i =0 ; i<=5 ; i++) //for
    {
      print("count $i");

    }

  for (int i=0;i<= arr.length -1 ; i++) //index of array start with zero
    {
      print("array element" + arr[i].toString());
    }
  List<String> arrlst = new List<String>();     ///  List
  arrlst.add("ahmed");
  arrlst.add("mohamed");
  arrlst.add("salah");

  arrlst.forEach((str) {  // str name of list in for loop
    print("List  "+ str.toString()); //bandah b str list
  });
  // another shape for foreach loop
  for (String val in arrlst){
    print("List ss  $val");  //val  is elements in arrlst

  }



  /////////////   function
  say(10);

  ///// nestes function    //function in main function
  void newFun(){   //cannot call this function out of main
    print("new function");

  }

  newFun();   // call after function

  if(result("Ok")){
    print("OK Method");
  }
  else{
    print("Not OK Method");
  }

  // use class Car
  var car1 = new Car();  //car1 is object in class car
  car1.doDrive();

  var car2 = new Car();
  car2.color = "yellow";  // can change values in class
  car2._speed = 200 ;

  car2.doDrive();
  print(car2._speed); // the value of speed minus 10 (get )

}

///functions

void say(int count){  //function to print hello with variable input
  for(int i=0 ; i<=count ;i++){
    print("hello $i");

  }

}

bool result(String isOk){  //function to check value of isOK
  if (isOk == "Ok") {
    return true ;
  }
  else{
    return false ;
  }
}

///class

class Car {
  //inital values
  String color ="red";
  int speed =100;

  ///get and set important to change in values
  int get _speed => speed -10 ;   // to get the value of speed // minus 10 from value
  set _speed(int value )=> speed =value +10 ; //to set value of speed add 10 to it

  ///functions in class
  void doDrive(){
    print("driving $color car in $speed Km/H");
  }
}