import 'dart:io';
import 'dart:math';

void main() {
  User user = User(login: "", password: "", confirmPassword: "");
  print("введите логин");
  user.login = stdin.readLineSync() ?? '0';
  print("введите пароль");
  user.password = stdin.readLineSync() ?? '0';
  print("подтвердите пароль");
  user.confirmPassword = stdin.readLineSync() ?? '0';
  print(user.wrongOrCorrectLogin());

  Phone phone = Phone(number: 0772504603, model: "samsung a50");
  Phone1 phone1 = Phone1(number: 0, model: "");
  Phone2 phone2 = Phone2(number: 0, model: "");
  Phone3 phone3 = Phone3(number: 0, model: "");

  print(phone1.receiveCall("Бабургазы", 0555349504));
  print(phone2.receiveCall("Руслан", 0554345054));
  print(phone3.receiveCall("Папа", 0771833628));

  print(phone1.getNumber(0755434544));
  print(phone2.getNumber(0723545455));
  print(phone3.getNumber(0754364544));

  print(phone.sendMessage(0778493293));

  Reader reader = Reader(
      fullName: "А. A. Курманалиев",
      dateOfBirth: 07.09,
      faculty: "Менеджмент",
      numberOfLibraryCard: 34,
      phoneNumber: 0770895638);

  print(reader.takeBook([
    "А. П. Чехов. Вишневый сад",
    "А. И. Островский. Гроза",
    "Ф. И. Тютчев. Лирика",
    "И. А. Гончаров. Обломов"
  ]));
  print(reader.returnBook([
    "А. П. Чехов. Вишневый сад",
    "А. И. Островский. Гроза",
    "Ф. И. Тютчев. Лирика",
    "И. А. Гончаров. Обломов"
  ]));
  print(reader.takeWhichBook([
    "А. П. Чехов. Вишневый сад",
    "А. И. Островский. Гроза",
    "Ф. И. Тютчев. Лирика",
    "И. А. Гончаров. Обломов"
  ]));
}

class User {
  String login;
  String password;
  String confirmPassword;
  bool loginTrueOrfalse = false;

  User(
      {required this.login,
      required this.password,
      required this.confirmPassword});

  dynamic wrongOrCorrectLogin() {
    while (loginTrueOrfalse != true) {
      if (login.contains("@") ||
          login.contains("@mail.ru") ||
          login.contains("@gmail.com") && login.length <= 20) {
        if (password == confirmPassword &&
            password.contains('_') &&
            password.length <= 20) {
          print("вы успешно вошли в аккаунт!");
          loginTrueOrfalse = true;

          print("добро пожаловать $login, введите число от 1 до 100");
          int input = int.parse(stdin.readLineSync() ?? "0");
          bool isAnswer = false;
          int counter = 0;
          int max = 100;
          int min = 0;

          while (isAnswer != "yes") {
            var random = Random().nextInt((max - min) + 1) + min;

            if (input == random) {
              counter++;
              print("ваше число $input было отгадано за $counter попыток");
              isAnswer == true;
              break;
            } else {
              print('ваше число $random');
              String lessOrGreater = stdin.readLineSync()!;
              if (lessOrGreater == "less") {
                max = random - 1;
                counter++;
              } else if (lessOrGreater == "greater") {
                min = random + 1;
                counter++;
              } else {
                print('ответ неверный');
              }
            }
          }
        } else if (password.contains("?") ||
            password.contains("@") ||
            password.contains("%") ||
            password.length >= 20 ||
            password != confirmPassword) {
          print("неправильный пароль");
          break;
        }
      } else if (loginTrueOrfalse == false) {
        print("неправильная почта");
        break;
      } else {
        print("неправильно введеные данные");
        break;
      }
    }
  }
}

class Phone {
  int number;
  int? weight;
  String model;

  Phone({required this.number, this.weight, required this.model});

  String receiveCall(String caller, int callersNumber) {
    return "звонит : $caller, номер : $callersNumber";
  }

  int getNumber(callersNumber) {
    return callersNumber;
  }

  String sendMessage(number) {
    return "на номер $number будет отправлено сообщение";
  }
}

class Phone1 extends Phone {
  Phone1({required super.number, super.weight, required super.model});

  @override
  String receiveCall(String caller, int callersNumber) {
    return "звонит : $caller, номер : $callersNumber";
  }

  @override
  int getNumber(callersNumber) {
    return callersNumber;
  }
}

class Phone2 extends Phone {
  Phone2({required super.number, super.weight, required super.model});

  @override
  String receiveCall(String caller, int callersNumber) {
    return "звонит : $caller, номер : $callersNumber";
  }

  @override
  int getNumber(callersNumber) {
    return callersNumber;
  }
}

class Phone3 extends Phone {
  Phone3({required super.number, super.weight, required super.model});

  @override
  String receiveCall(String caller, int callersNumber) {
    return "звонит : $caller, номер : $callersNumber";
  }

  @override
  int getNumber(callersNumber) {
    return callersNumber;
  }
}

class Reader {
  String fullName;
  num dateOfBirth;
  String faculty;
  int numberOfLibraryCard;
  int phoneNumber;

  Reader({
    required this.fullName,
    required this.dateOfBirth,
    required this.faculty,
    required this.numberOfLibraryCard,
    required this.phoneNumber,
  });

  String takeBook(List books) {
    return "студент $fullName взял ${books.length} книг";
  }

  String returnBook(List Books) {
    return "студент $fullName отдал ${Books.length} книг";
  }

  String takeWhichBook(List books) {
    String book = books.join(", ");
    return "$fullName взял книги : $book";
  }
}
