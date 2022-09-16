import 'inheritance/Animal.dart';

class flayable{
  void fly(){}
}

class Bird extends Animal implements flayable{
  String fatherColor;

  Bird(String name,int age,double weight,this.fatherColor) : super(name,age,weight);

  @override
  void fly(){
    print('$name dia terbang');
  }
}