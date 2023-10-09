void main() {
  User user = User(
      confirmPassword: "password_", login: "login_", password: "password_");
  user.infocheck(true, true);
}

class User {
  dynamic login;
  dynamic password;
  dynamic confirmPassword;
  User(
      {required this.confirmPassword,
      required this.login,
      required this.password});

  void infocheck(bool logincheck, bool passwordcheck) {
    try {
      if (!login.contains("_") ||
          !RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(login) ||
          login.length >= 20) {
        print("неправильный логин");
        logincheck = false;
      } else {
        print("правильный логин");
        logincheck = true;
      }
    } catch (WrongLoginException) {
      print(WrongLoginException);
    }
    try {
      if (!password.contains("_") ||
          !RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(password) ||
          password.length >= 20 ||
          password != confirmPassword) {
        print("неправильный пароль");
        passwordcheck = false;
      } else {
        passwordcheck = true;
        print("правильный пароль");
      }
    } catch (WrongPasswordException) {
      print(WrongPasswordException);
    }

    if (logincheck == false || passwordcheck == false) {
      print("неправильный пароль и логин");
    }
  }
}
