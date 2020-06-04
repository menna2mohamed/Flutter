import 'package:flutter/material.dart';

void main() {
    ///  List
    ///  index 0  1  2  3  4
    ///  value N  4  20 N  100
    /// fixed list with fixed length
    /// cannot add or remove //can set value of it = null
    List<int> mylist = List(5);
    mylist[1]=4;
    mylist[2]=20;
    mylist[4]=100;
    // print(mylist);  //[null, 4, 20, null, 100]
    //mylist.forEach((val) { print(val); });   // OR
    //mylist.forEach((val) => print(val));
    ///NOt fixed
    ///    //another one
    List<int> mylist2 = List();
    mylist2.add(20);
    mylist2.add(100);
    mylist2.add(990);
    mylist2.removeAt(1);  // remove 100
    // mylist2.forEach((val) => print(val)); //20  990
    mylist2.add(20);
    mylist2.add(100);
    mylist2.add(990);
    mylist2.removeLast(); //remove last one
    // mylist2.forEach((val) => print(val)); //20  990  20 100
    mylist2.remove(20);   //remove first value 20
    //mylist2.forEach((val) => print(val)); //  990 20  100
    mylist2.clear() ; //clear all values in list

    //another one
    List<int> mylist3 = [111,222,333];
    mylist3.add(20);
    mylist3.add(100);
    mylist3.add(990);
    //mylist3.forEach((val) => print(val)); //111 222 333  20  100

    ///   SET
    /// values 11 12 13 14 without index  //values of not repeated
    Set <int> myset = Set();
    myset.add(11);
    myset.add(12);
    myset.add(13);
    myset.add(14);
    myset.add(12); //ignored
    //myset.forEach((val) => print(val)); //11 12  13 14

    //another one
    Set<String> cont = Set.from({"Egypt","china", "USA"});
    cont.add("UAE");
    //cont.forEach((val) => print(val)); //Egypt china  USA UAE

    ///   MAP
    /// key   o   p   d  n    unique
    ///value  5   9   7  22
    Map<String , String> mymap = Map();
    mymap ["EGY"] = "Egypt";
    mymap ["CHI"] = "China";
    mymap ["DEU"] = "Deutaschland";
    //print(mymap ["EGY"]);
    mymap.forEach((key, value) => print("key $key , value $value"));
    mymap.remove("CHI");  // remove by key
    print(mymap.containsKey("DEU"));   // return true if there is "DEU" key


    //another one
    Map <String , int> student = {
      "Ahmed": 50 ,
      "Mohamed" : 100,
      "ALi" : 150
    };
    student.forEach((key, value) => print("student $key his degree is  $value"));

    ///called class
    var myClass1= Myclass();
    myClass1(-22) ;  //if we use it as method it call the call function
}


///Called class
class Myclass{
  void call(int n1) {
    //print("my call");
    //n1 cannot be zero so we use try
    //try {
    //int result = 12 ~/ n1;     ///   12/3 gives error because it is int so we add ~ before /
    //print("The result is $result");
    //}on IntegerDivisionByZeroException{
    //print("Do not Div by 0");
    //}
    ///if I donot know the exception
    //try {
    //int result = 12 ~/ n1;     ///   12/3 gives error because it is int so we add ~ before /
    //print("The result is $result");
    //}catch(m){  // type of error
    //print("The error is $m");
    //}
    ///if I donot know the exception and more detials about error
    //try {
    //int result = 12 ~/ n1;     ///   12/3 gives error because it is int so we add ~ before /
    //print("The result is $result");
    //}catch(m,s){
    //print("The error is $m");
    //print(s);
    //}
    ///code run if there is error or not
    //try {
      //int result = 12 ~/ n1;

      ///   12/3 gives error because it is int so we add ~ before /
      //print("The result is $result");
    //} catch (m) {
      //print("The error is $m");
    //} finally { //if try run or catch  that finally run
      //print("Code must RUN");
    //}

    ///MY EXCEPTION
    try {
      bank(n1);
    } catch (m) { //or   on Myexp
      print("The error = $m");
    }
  }

  void bank(int money){
    if (money<0){
      throw Myexp();
    }
  }
}



///  I made exception by myself
class Myexp implements Exception{

  //String errorMessage(){
  String toString(){
      return "Do not do this again";
    }
}

