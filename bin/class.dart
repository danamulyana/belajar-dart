class Animal{
  String name;
  int age;
  double weight;

  Animal(this.name,this.age,this.weight);

  void eat(){
    print('$name dia makan');
    weight = weight + 0.2;
  }

  void sleep(){
    print('$name dia tertidur');
  }
  void poop(){
    print('$name dia berak');
    weight = weight - 0.1;
  }
}

void main(){
  //membuat object
  var kelinci = Animal('kelinci', 10, 10);
  kelinci.eat();
  kelinci.poop();
  print(kelinci.weight);
}
