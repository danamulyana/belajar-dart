import 'class.dart';

class AnimalPrivet{
  String _name = "";
  int _age = 0;
  double _weight = 0;

  /*
    agar tidak bisa di akses alias private menambahkan _ di depannya dan memasukan
    getter dan setter.
   */

  // Setter
  set name(String value) {
    _name = value;
  }

  // Getter
  double get weight => _weight;
}

void main(){
  var dicodingcat = Animal('cat', 10, 5);
  dicodingcat.eat();
  dicodingcat.poop();
  print(dicodingcat.weight);
}