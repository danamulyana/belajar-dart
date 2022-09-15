int age = null;               // Compile error
String? favoriteFood = null;

void main() {
  String name = 'John Doe';
  int age = 23;
  String? favoriteFood = null;

  buyAMeal(favoriteFood);       // Compile error
  buyAMeal(favoriteFood!);      // atau pakai ini
}
// INI ERROR
void buyAMeal(String favoriteFood) {
  print('bought a $favoriteFood');
}
// FIX
void buyAMeal2(String? favoriteFood) {
  if (favoriteFood == null) {
    print('Bought Nasi Goreng');
  } else {
    print('Bought $favoriteFood');
  }
}