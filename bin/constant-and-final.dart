import 'dart:io';
// KONSTANT

//otomatis
const pi = 3.14;

//manual
const num pitwo = 3.14;

void main() {
  var radius = 7;
  print('Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
}

num calculateCircleArea(num radius) => pitwo * radius * radius;

//FINAL
final firstName = stdin.readLineSync();
final lastName = stdin.readLineSync();

//  lastName = 'Dart'; Tidak bisa mengubah nilai

//print('Hello $firstName $lastName');