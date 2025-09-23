import "dart:io";

void main() {
  int i = 0;

  while (i <= 100) {
    if (i % 3 != 0 && i % 5 != 0) {
      print(i);
      i++;
      continue;
    }
    if (i % 3 == 0 || i % 5 == 0) {
      i++;
      continue;
    }
  }
}
