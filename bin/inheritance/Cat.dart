import 'Animal.dart';

class Cat extends Animal{
  late String furColor;

  Cat(String name,int age,double weight, this.furColor) : super(name,age,weight);

  void walk(){
    print('$name dia berjalan');
  }
}

void main(){
  var dicodingCat = Cat('lala', 10, 2.2, 'orange');
  dicodingCat.walk();
  dicodingCat.eat();
  print(dicodingCat.weight);
}