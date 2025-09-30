import 'dart:io';

double terfogat(double a, double b, double c) {
  return a * b * c;
}

double felulet(double a, double b, double c) {
  return 2 * (a * b + a * c + b * c);
}

double abTerulete(double a, double b) {
  return a * b;
}

double acTerulete(double a, double c) {
  return a * c;
}

double bcTerulete(double b, double c) {
  return b * c;
}

void main() {
  stdout.write('Add meg az a él hosszát: ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('Add meg a b él hosszát: ');
  double b = double.parse(stdin.readLineSync()!);

  stdout.write('Add meg a c él hosszát: ');
  double c = double.parse(stdin.readLineSync()!);

  double ab = abTerulete(a, b);
  double ac = acTerulete(a, c);
  double bc = bcTerulete(b, c);
  double felszin = felulet(a, b, c);
  double terf = terfogat(a, b, c);

  print('\nLapok területei:');
  print('ab lap területe: $ab');
  print('ac lap területe: $ac');
  print('bc lap területe: $bc');

  print('\nTéglatest felszíne: $felszin');
  print('Téglatest térfogata: $terf');
}
