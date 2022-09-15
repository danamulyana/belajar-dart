void greet(String name, int bornYear){
  var age = 2022 - bornYear;
  print('halo $name! Tahun ini anda berusia $age tahun');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

// arrow syntax
double average(num num1, num num2) => (num1 + num2) / 2;
void greeting() => print('Hello');

//optional params
// void greetNewUser([String? name, int? age, bool isVerified = false]) {}
// void greetNewUser({String? name, int? age, bool? isVerified})
void greetNewUser({required String name, required int age, bool isVerified = false}) {}
void main(){
  greet('dana mulyana',2003);
}