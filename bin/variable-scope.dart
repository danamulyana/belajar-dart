// void main() {
//   var isAvailableForDiscount = true;
//   var price = 300000;
//   var discount = 0;
//   if (isAvailableForDiscount) {
//     discount = 10 / 100 * price;
//   }
//   print('You need to pay: ${price - discount}');
// }

//function scope

// void main() {
//   var price = 300000;
//   var discount = checkDiscount(price);
//   print('You need to pay: ${price - discount}');
// }
//
// num checkDiscount(num price) {
//   num discount = 0;
//   if (price >= 100000) {
//     discount = 10 / 100 * price;
//   }
//
//   return discount;
// }

//Global Scope

var price = 300000;

void main() {
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}

//scope level control flow
num checkDiscount2(num price) {
  num discount = 0;
  if (!discountApplied) { // Error
    if (price >= 100000) {
      discount = 10 / 100 * price;
      var discountApplied = true;
    }
  }

  return discount;
}