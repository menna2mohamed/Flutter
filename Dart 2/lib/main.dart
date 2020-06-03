import 'package:flutter/material.dart';

void main() {
     var student1 = new Student.newCons(1,"ahmed mohamed");   //can remove new
     student1.study();
     var student2 = new Student();   //first constractor without parameter
      student2.study();

//////////////////////////class Dog and animal
    var dog1 =Dog();   ///has properties of dog and animal classes
    //dog1.color = "Black";
    dog1.length = 2 ;
    dog1.walk();  //run both walk in animal class and dog class
    dog1.run();

    var cat1 =Cat();   ///has properties of cat and animal classes
    cat1.color = "white";
    cat1.length = 2 ;
    cat1.walk();
    cat1.climb();

}

/// class 2

class Animal{
  String color ="";
  int length =0;
  void walk(){
    print("$color Animal is walking");
  }
}
//class has all method and properties of class animal
class Dog extends Animal {
    String color = "brown";  //overload
    void walk(){  // overloading
      super.walk(); //run function walk from animal before that
      print ("$color Dog is walking ");
    }
    void run(){
      print("Dog is running");
    }
}

class Cat extends Animal {
  void climb(){
    print("$color Cat is climbing");
  }

}
///class 1
class Student{
    int stdNumber ;
    String stdname ;

    //constructor
    //intialize variables
    Student(){
      this.stdname="Mohamed";
      this.stdNumber=1;
    }
    //values as input
    //dart has not method overloading so we use new constractor
    Student.newCons([int num = 2 , String name = "mmm"]){   //optinal parameters & we can use it without parameter if there is not first constractor
      this.stdNumber = num ;
      this.stdname = name;
    }
    ///OR
    /// Student.newCons(this.stdNumber  , this.stdname );

    //function
    void study(){
      print("student $stdname with number $stdNumber is studying  ");
    }

}