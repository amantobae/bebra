
import 'dart:io';
import 'dart:math';

import 'maindart2.dart';



void main (){
// 1 task
country countries  = country();

// 2 task
myCar car = myCar();
String carInfo = car.getCarInfo();
print(carInfo);


// 1 метод
print(countries.name);
print(countries.climat);
print(countries.description);

// 2 метод
String info = countries.getInfo();
print(info);

// 3 task
iphone12 phone12 = iphone12("iphone 12", 0770121212, 212);
iphone13 phone13 = iphone13("iphone 13", 0770131313, 213);
iphone14 phone14 = iphone14("iphone 14", 0770141414, 214);

print("first phone info : ${phone12.model}, ${phone12.number}, ${phone12.weight} grams");
print("second phone info : ${phone13.model}, ${phone13.number}, ${phone13.weight} grams");
print("third phone info : ${phone14.model}, ${phone14.number}, ${phone14.weight} grams");
}

class myCar{
  String carName = "nissan";
  int horsepower = 500;
  int price = 100000;
  String color = "black";

  String getCarInfo(){
    return "название : $carName; мощность : $horsepower лошадинных сил; цена : $price; цвет : $color";
  }
}

class phone {
  int weight ;
  String model ;
  int number;

  phone(this.model, this.number, this.weight);
}

class iphone12 extends phone {
  iphone12(
  super.model,
  super.number,
  super.weight);
}

class iphone13 extends phone {
  iphone13(
  super.model,
  super.number,
  super.weight);
}

class iphone14 extends phone {
  iphone14(
  super.model,
  super.number,
  super.weight);
}

class country{
String name ="Бразилия";
String climat = "тропический";
String description = "Бразилия – страна в Южной Америке";


String getInfo(){
return "название : $name ; климат : $climat ; описание : $description";
}
}