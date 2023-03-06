class User {
  final String email;

  User(this.email);
}

mixin UserWithGettableMailSystem on User {
  String getMailSystem() {
    return email.split("@").length > 1
        ? email.split("@")[1]
        : "undefined";
  }
}

class AdminUser extends User with UserWithGettableMailSystem {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  Set<T> users = {};
  addUser(T user) {
    users.add(user);
  }

  removeUser(T user) {
    users.remove(user);
  }

  void printAllEmails() {
    for (T user in users) {
      if (user is AdminUser) {
        print(user.getMailSystem());
      } else {
        print(user.email);
      }
    }
  }
}
