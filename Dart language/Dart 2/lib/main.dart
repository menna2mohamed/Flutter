import 'package:flutter/material.dart';

void main() {
     var student1 = new Student.newCons(1,"ahmed mohamed");   //can remove new
     student1.study();
     var student2 = new Student();   //first constractor without parameter
      student2.study();

//////////////////////////class Dog and animal
  //print constructor of class animal and class dog
    var dog1 =Dog(10 ,"brown");   ///has properties of dog and animal classes
    //dog1.color = "Black";
    dog1.length = 2 ;
    dog1.walk();  //run both walk in animal class and dog class
    dog1.run();
    var dog2 =Dog.namedCons();

    /*
    var cat1 =Cat();   ///has properties of cat and animal classes
    cat1.color = "white";
    cat1.length = 2 ;
    cat1.walk();
    cat1.climb();
    */
}

/// class 2

class Animal{
  String color ="";
  int length =0;

  //constructor
  Animal(String color){
    this.color = color ;
    print ("Animal $color cons");
  }
  Animal.namedCons(){
    print("Animal named cons class");
  }
  void walk(){
    print("$color Animal is walking");
  }
}
//class has all method and properties of class animal
class Dog extends Animal {
    String color = "brown";  //overload
    //constructor
    // Dog(len) :super() //do parent constructor before it
    //same as
    //Dog(int len)
    //if we put parameter in constructor animal class gives error here so we put that super(constant)
    //Dog(len) :super("black") or
    Dog(int len , String color) :super(color)
    {
      this.length = len;
      print ("Dog $color cons $len cm");
    }
    /*
    //named constructor
    Dog.namedCons() :super("black"){
      print("dog named cons");
    }
      */
    //to use named cons of animal class
    Dog.namedCons() :super.namedCons(){
      print("dog named cons");
    }

    void walk(){  // overloading
      super.walk(); //run function walk from animal before that
      print ("$color Dog is walking ");
    }
    void run(){
      print("Dog is running");
    }
}
/*
class Cat extends Animal {
  void climb(){
    print("$color Cat is climbing");
  }
}
 */
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
