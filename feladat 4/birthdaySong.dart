import 'dart:io';

void main() {
  print('Addj meg egy szamot 1-tol 100-ig:');
  String? numberInput = stdin.readLineSync();
  int number = int.tryParse(numberInput ?? '') ?? 0;
  int i = 1;
  while (i <= number) {
    print('Happy birthday');
    print('Happy birthday to you');
    i++;
  }
}
