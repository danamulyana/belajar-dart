class Animal{
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name,this._age,this._weight);

  String get name => _name;
  double get weight => _weight;

  void eat(){
    print('$_name dia makan');
    _weight = _weight + 0.2;
  }

  void sleep(){
    print('$_name dia tertidur....');
  }
}