
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'maindart2.dart';



import 'dart:io';

// Nikola nikola = Nikola(name: "Nikola", lastname: "Бабур");
// print(nikola.name);
// }

// class Nikola {
//   String lastname;
//   String name;

//   Nikola({required this.name,  //конструктор
//   required this.lastname
//   }
//   )
//   {
//   if(name != "Nikola"){
//     this.name = "я не $name, а Nikola";
//   }
//   else {
// this.name = name;
//   }
//   }
  

// Math math = Math();
// int addition = math.addition();
// print(addition);
// int multiplication = math.multiplication();
// print(multiplication);
// num division = math.division();
// print(division);
// int subtraction = math.subtraction();
// print(subtraction);


// Car car = Car();
// dynamic zapusk = car.zapusk();
// print(zapusk);
// dynamic otkluchenie = car.otkluchenie();
// print(otkluchenie);
// int getYear = car.getYear();
// print(getYear);
// String getColor = car.getColor();
// print(getColor); 
// String getType = car.getType();
// print(getType);
// }





class Car{
 String? color;
 String? type;
 int? year;

Car({ this.color ,  this.type,  this.year});

//1 метод
String zapusk(){
  return "автомобиль заведен";
}

//2 метод
String otkluchenie(){
  return "автомобиль заглушен";
}

//3 метод
int getYear(){
return year = 23;
}

//4 метод
String getColor(){
  return color = 'black';
}
//5 метод
String getType(){
  return type = "bus";
}
}
void main(){
TriangleChecker triangle = TriangleChecker(a: 21, b: 12, c: 12);
triangle.is_triangle();
}

class TriangleChecker{
  dynamic a ;
  dynamic b ;
  dynamic c ;

  TriangleChecker({required this.a , required this.b , required this.c})

  void is_triangle(){
  if(a > 0 && b > 0 && c > 0 ){
  if(a+b < c || b + c < a || a + c < b){
    print("Ура, можно построить треугольник!");
    }
    else{
    print("Жаль, но из этого треугольник не сделать.");
  }
  }
  else if(a < 0 || b < 0 || c < 0){
    print("С отрицательными числами ничего не выйдет!");
  }
  else if(a is! int || b is! int || c is ! int){
    print("Нужно вводить только числа!");
  }
  }
}
















class Math{
int a = 12;
int b = 23;

int addition(){
  return a + b;
}

int multiplication(){
  return a * b;
}

num division(){
  return a / b;
}
int subtraction(){
  return a - b;
}
}