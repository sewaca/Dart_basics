import 'package:hm2/src/task_n1.dart';
import 'package:hm2/src/task_n2.dart';
import 'package:hm2/src/task_n3.dart';
import 'package:hm2/src/task_n4.dart';
import 'package:hm2/src/task_n5.dart';
import 'package:hm2/src/task_n6.dart';
import 'package:hm2/src/task_n7.dart';
import 'package:hm2/src/task_n8.dart';
import 'package:hm2/src/task_n9.dart';

void main() {
  print("# Задание 1");
  print(Task1().nod(5, 10));
  print(Task1().nok(8, 20));

  print("# Задание 2");
  print(Task2().fromBinaryToDecimal("101"));
  print(Task2().fromDecimalToBinary(9));

  print("# Задание 3");
  print(Task3().findNumbersInString("string 120 test te3 d,. 2.3 959d daslkf"));

  print("# Задание 4");
  print(Task4()
      .amountOfWords(["word1", "word2", "word1", "word3", "word2", "word1"]));

  print("# Задание 5");
  print(Task5().findWordNumbers("one, two, potato, test, three, one"));

  print("# Задание 6");
  Point a = Point(1, 0, 0);
  Point b = Point.zero();
  Point c = Point.minusOne();
  print(b.distanceTo(c));

  print("# Задание 7");
  print(27.root(3));

  print("# Задание 8");
  final user1 = AdminUser("email@test1.com");
  final user2 = GeneralUser("email@test2.com");
  final user3 = GeneralUser("email@test3.com");

  final manager = UserManager()
    ..addUser(user1)
    ..addUser(user2)
    ..addUser(user3);

  manager.removeUser(user3);
  manager.printAllEmails();

  print("# Задание 8");
  print(rimanIntegral((p0) => p0, 0, 2, 5));
  print(rimanIntegral((p0) => p0, 0, 2, 100));
  print(rimanIntegral((p0) => p0, 0, 2, 1000));
}
