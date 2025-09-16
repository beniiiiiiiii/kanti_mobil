import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('adjon meg egy egész számot: ');
  int? num = int.tryParse(stdin.readLineSync() ?? '');
  if (num == null) {
    print('nem jo a szam');
    return;
  }

  if (num % 2 == 0) {
    print('a szám páros');
  } else {
    print('a szám páratlan');
  }

  if (num == 1) {
    print('Elégtelen');
  } else if (num == 2) {
    print('Elégséges');
  } else if (num == 3) {
    print('Közepes');
  } else if (num == 4) {
    print('Jó');
  } else if (num == 5) {
    print('Jeles');
  } else {
    print('Érvénytelen osztályzat');
  }

  switch (num) {
    case 1:
      print('Elégtelen (switch)');
      break;
    case 2:
      print('Elégséges (switch)');
      break;
    case 3:
      print('Közepes (switch)');
      break;
    case 4:
      print('Jó (switch)');
      break;
    case 5:
      print('Jeles (switch)');
      break;
    default:
      print('Érvénytelen osztályzat (switch)');
  }

  assert(num >= 1 && num <= 5, 'A szám nem osztályzat!');

  stdout.write('adjon meg egy egész számot: ');
  int? num2 = int.tryParse(stdin.readLineSync() ?? '');
  if (num2 == null) {
    print('nem jo a szam');
    return;
  }

  int maxNum = num > num2 ? num : num2;
  print('A nagyobb szám: $maxNum');
  print('Az eltérés: ${(num - num2).abs()}');

  stdout.write('adjon meg egy egész számot: ');
  int? num3 = int.tryParse(stdin.readLineSync() ?? '');
  if (num3 == null) {
    print('nem jo a szam');
    return;
  }

  // Páros/páratlan
  print(num3 % 2 == 0 ? 'Páros' : 'Páratlan');

  // Pozitív/negatív/nulla
  if (num3 > 0) {
    print('Pozitív szám');
  } else if (num3 == 0) {
    print('Nulla');
  } else {
    print('Negatív szám');
  }

  // Négyzetszám-e
  int sqrtNum = sqrt(num3.abs()).toInt();
  if (sqrtNum * sqrtNum == num3.abs()) {
    print('Négyzetszám');
  } else {
    print('Nem négyzetszám');
  }

  stdout.write('\n:Add meg a teszt osszpontszamat: ');
  int? total = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Add meg az elert pontszamot: ');
  int? score = int.tryParse(stdin.readLineSync() ?? '');

  if (total == null ||
      score == null ||
      total <= 0 ||
      score < 0 ||
      score > total) {
    print('Hibás bemenet');
    return;
  }

  double percentage = (score / total) * 100;
  print('Elert szazalek: ${percentage.toStringAsFixed(2)}%');

  String grade;
  if (percentage >= 90 && percentage <= 100) {
    grade = 'A';
  } else if (percentage >= 80 && percentage < 90) {
    grade = 'B';
  } else if (percentage >= 70 && percentage < 80) {
    grade = 'C';
  } else if (percentage >= 60 && percentage < 70) {
    grade = 'D';
  } else if (percentage >= 50 && percentage < 60) {
    grade = 'E';
  } else if (percentage >= 0 && percentage < 50) {
    grade = 'F';
  } else {
    print('Hibás százalékérték');
    return;
  }
  print('Osztályzat: $grade');
}
