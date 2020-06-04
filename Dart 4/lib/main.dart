import 'package:flutter/material.dart';

void main() {
  //Functional Programming And Lambda Expression
  //(Lambda Expression ) as object instead of normal function
  ///OR Function add =(int x, int y) => x+y ;
  ///OR Function add =(int x, int y) => print(x+y);
  Function add =(int x, int y){
        int result = x+y ;
        print (result);
             //return result ;
             //return x+y;
  };
  //add(1,4);
  //print(add(1,4));
  //anotherfunction(3,add(5,9));
  anotherfunction(3,add);
  var myFunc = task();
  //function get num from return not as paramter
  print(myFunc(10));
}

///  Normal function
int addNumber(int x, int y){
  return x+y ;
}
//can call function as parameter
void anotherfunction(int x, Function func){
 // func();
 func(6,4) ;
}

//can return function
Function task(){
 Function multiple= (int num) => 2*num ;
 return multiple ;
}