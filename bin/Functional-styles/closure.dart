void main() {
  var closureExample = calculate(2);
  closureExample();
  closureExample();

  /*
  Value is 3
  Value is 4
   */
}

Function calculate(base) {
  var count = 1;

  return () => print("Value is ${base + count++}");
}