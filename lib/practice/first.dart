


import 'dart:io';

/// This program is to read input from console and print values

void main(){
  // print("Hey This my first Dart Program. Let's Play with Dart");
  // stdout.write("Please enter Your Name Here : ");
  //
  // var name = stdin.readLineSync();
  //
  // print("Welcome to Dart programming $name");

  var human = Human(40,"Chandravir Singh");
  human.printValues();

}

class Human {
  int? age;
  String? name;

  Human(this.age,this.name); // parameterised contructor

  // void assignValues(){
  //   age = 40;
  //   name = "Chandravir Singh";
  // }

  void printValues(){
    print("name  : $name  age : $age");
  }
}