import 'dart:io';

void main() {
  print('Addj meg egy szamot 3 es 9 kozott:');
  String? numberInput = stdin.readLineSync();
  int number = int.tryParse(numberInput ?? '') ?? 0;
  int i = 0;
  int j = 0;

  outerLoop:
  while (i <= 10) {
    innerLoop:
    while (j <= 10) {
      if (j == number) {
        break;
      }
      if (i == number) {
        break outerLoop;
      }
      j++;
      print('i = $i, j = $j');
    }

    i++;
  }
}
