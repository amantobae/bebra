
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'maindart2.dart';



import 'dart:io';

void main(){
Nikola nikola = Nikola(name: "Nikola", lastname: "Бабур");
print(nikola.name);

TriangleChecker triangle = TriangleChecker(a: 2, b: 3, c: 6);
triangle.is_triangle();

print("введите слово");
MyString mystring = MyString();
print(mystring.reverse());
print(mystring.ucFirst());




Math math = Math();
int addition = math.addition();
print(addition);
int multiplication = math.multiplication();
print(multiplication);
num division = math.division();
print(division);
int subtraction = math.subtraction();
print(subtraction);


Car car = Car();
dynamic zapusk = car.zapusk();
print(zapusk);
dynamic otkluchenie = car.otkluchenie();
print(otkluchenie);
int getYear = car.getYear();
print(getYear);
String getColor = car.getColor();
print(getColor); 
String getType = car.getType();
print(getType);


Student student = Student(firstName: "Aman", avgMark: 5, group: 7, lastName: "Toktosunov");
print(student.getScholarShip());
Aspirant aspirant = Aspirant(firstName: "Aman", avgMark: 4, group: 7, lastName: "Toktosunov", scienceWork: true);
print(aspirant.getScholarShip());


Animal animal = Animal(food: "food", location: "location");

Horse horse = Horse(food: "сено", location: "поля");
print(horse.eat());
print(horse.makeNoise());

Cat cat = Cat(food: "молоко", location: "дом");
print(cat.eat());
print(cat.makeNoise());

Dog dog = Dog(food: "мясо", location: "будка");
print(dog.eat());
print(dog.makeNoise());
}


class MyString{
String userAnswer = stdin.readLineSync()??'0';

String ucFirst(){
 return userAnswer = userAnswer[0].toUpperCase() + userAnswer.substring(1);
}

String reverse(){
  return userAnswer.split("").reversed.join("");
}
}

class Nikola {
  String lastname;
  String name;

  Nikola({required this.name,  //конструктор
  required this.lastname
  }
  )
  {
  if(name != "Nikola"){
    this.name = "я не $name, а Nikola";
  }
  else {
this.name = name;
  }
}
  }
  
  






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

class TriangleChecker{
  dynamic a ;
  dynamic b ;
  dynamic c ;

  TriangleChecker({required this.a , required this.b , required this.c});

  void is_triangle(){
  if(a > 0 && b > 0 && c > 0 ){
  if(a+b < c){
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

class Student{
  String firstName;
  String lastName;
  int group;
  double avgMark;

Student({required this.firstName, required this.avgMark, required this.group, required this.lastName, });

dynamic getScholarShip(){
  if (avgMark >= 5){
    return "стипендия студента : 20000 сом";
  }
  else if(avgMark < 5){
    return "стипендия студента : 0   сом";
  }
}
}



class Aspirant extends Student{
  bool scienceWork;
  Aspirant({required super.firstName, required super.avgMark, required super.group, required super.lastName, required this.scienceWork});

  @override
  getScholarShip() {
   if (avgMark >= 5){
    return "стипендия аспиранта : 40000 сом";
  }
  else if(avgMark < 5){
    return "стипендия аспиранта : 18000 сом";
  }
  }
}


class Animal {
  String food;
  String location;

  Animal({required this.food, required this.location});

  String sleep(){
    return "животное спит";
  }

  String makeNoise(){
    return "*звуки животного*";
  }

  String eat(){
    return "*животное ест*";
  }
}

class Horse extends Animal{
  Horse({required super.food, required super.location});

  @override
  String makeNoise() {
    return "*звуки лошади*";
  }

  @override
  String eat() {
    return "*лошадь ест $food*";
  }
}

class Dog extends Animal{
  Dog({required super.food, required super.location});

  @override
  String makeNoise() {
    return "*гав*";
  }

  @override
  String eat() {
    return "*собака ест $food*";
  }
}

class Cat extends Animal{
  Cat({required super.food, required super.location});

  @override
  String makeNoise() {
    return "*мяу*";
  }

  @override
  String eat() {
    return "*кот пьет $food*";
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