import 'dart:io';

void main(){
  // var i = 1;
  //
  // while (i <= 100){
  //   print(i);
  //   i++;
  // }
  //
  // // do-while
  // do {
  //   print(i);
  //   i++;
  // } while (i <= 100);

  String username;
  bool notValid = false;

  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync() ?? "";

    if (username.length < 6 ) {
      notValid = true;
      print('Username Anda tidak valid');
    }else{
      notValid = false;
    }
  } while (notValid);
}