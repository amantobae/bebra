
import 'dart:io';
import 'dart:math';

import 'maindart2.dart';

void main (){
// List a = [1,2,3,4,5,6,];
// print("введите первое число:");
// var b = int.parse(stdin.readLineSync() ?? '0');
// print("введите последнее число:");
// var c  = int.parse(stdin.readLineSync() ?? '0');
// showNum(a, b, c);

// int a = 123;
// List b = a.toString().split("").map(int.parse).toList() ;
// showNum(a, b);
// print(b.runtimeType);

// int a = 123;
// List b = a.toString().split("").map(int.parse).toList();
// b[1] = 0;
// replaceNum(a, b);


// print("введите номер дня недели :");
// var a = int.parse(stdin.readLineSync() ?? '0');
// showWeekday(a);

// String a = "Loading";
// showStatus(a);

// int a = 11;
// int b = 11;
// int c = 121;
// showAnswer(a, b, c);

// print("введите ваше имя:");
// dynamic name = stdin.readLineSync() ;
// print("введите ваш возраст:");
// dynamic age = stdin.readLineSync() ;
// print("введите ваш адрес:");
// dynamic address = stdin.readLineSync() ;
// print("ваше хобби:");
// dynamic hobby = stdin.readLineSync() ;
// print("мое имя:");
// dynamic myName = stdin.readLineSync();
// print("мой возраст:");
// dynamic myAge = stdin.readLineSync();
// print("мой адрес:");
// dynamic myAddress = stdin.readLineSync();
// print("мое хобби:");
// dynamic myHobby = stdin.readLineSync();
// showInformation(name, myName, age, myAge, address, myAddress, hobby, myHobby);
  
  print("загадайте число от 1 до 100");
int randomNumber = Random().nextInt(100);
var a = stdin.readLineSync(); 
var attempts = 0; 
int guess = 0;
showNums(a, randomNumber, guess);

}