List<int> numberList = [1, 2, 3, 4, 5];
List<String> stringList = ['Dart', 'Flutter', 'Android', 'iOS'];
List dynamicList = [1, 2, 3, 'empat'];  // List<dynamic>

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

//List<Bird> birdList = [Bird(), Dove(), Duck()];

//List<Bird> birdList = [Bird(), Dove(), Duck(), Animal()];  // Error

//List<Bird> myBird = List<Animal>();

/*
Unhandled exception:
type 'List<Animal>' is not a subtype of type 'List<Bird>'
 */