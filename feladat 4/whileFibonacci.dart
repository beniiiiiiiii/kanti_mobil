import 'dart:io';

void main() {
  int a = 0, b = 1;

  print(a);
  int count = 1;

  while (b <= 100) {
    print(b);
    int next = a + b;
    a = b;
    b = next;
    count++;
  }
}
