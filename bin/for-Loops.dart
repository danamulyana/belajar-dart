import 'dart:io';

// for (int i = 1; i <= 100; i++) {
//   print(i);
// }

void main() {
  for(int i = 1; i <= 10; i++){
    print('*' * i);
  }
  // cara orang lain
  for(int i = 0; i < 10; i++){
    for(int j = 0; j <= i; j++){
      stdout.write('# ');
    }
    stdout.writeln();
  }
}