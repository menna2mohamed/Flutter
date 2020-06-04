import 'package:flutter/material.dart';

void main() {
  //error: Abstract classes can't be instantiated.
  //var animal = Animal();  //error
  var dog1 = Dog();
  dog1.walk();
  dog1.run();
  dog1.eat();

  //cannot take instance from Animal2 & Do not  take large space
  //static space in memory do not change
  Animal2.color = "black";
  Animal2.run();

}
//use class as interface
class Carnivores{
  void eat(){
    print("animal is eating");
  }
}

// Polymorphism in Dart
//abstract class //use there method in another classes
abstract class Animal{
    //abstract method ...should define it in another classes that use animal class
    walk();
    //normal method
    run(){
    print("animal is running");
    }
}
//extends use as parent //implements  interface (shape of methods only)
//class Dog extends Animal ,Carnivores{   // cannot use multiple inherent in dart
//one extends multiple implements
//must use all methods of implement classes but abstract method in extends class
class Dog extends Animal implements Carnivores{
  //not optional
  walk(){
    print("Dog is walking");
  }
  //optional
  run(){
    //super to use run function in animal class because it is normal function not abstract
    super.run();
    print("Dog is running");
  }
 //right click on class Dog and generate and implement methods and click on function
  @override
  void eat() {
    print("Dog is eating");
  }
}

/// Static variables and methods in dart
// non  static  variables and methods  deleted after main finish but static No
class Animal2{

  static String color ;
  /// static constant ....constant value can not change it
  /// use static in normal but not Reverse
  static const String name = "dog";

  static void run(){
    Animal2.color = "black";
    print("Static animal is running");
    //walk();  //error cannot use normal method and variables in static method
  }
  //normal method can use static method and variables but static method cannot call normal method
  void walk(){
    Animal2.color = "black";
    run();
  }
}