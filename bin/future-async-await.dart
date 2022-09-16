
Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

/*
  Dart memiliki keyword async dan await yang merupakan sebuah alternatif supaya kita bisa menuliskan
  proses asynchronous layaknya proses synchronous. Bagaimana caranya?

  Dengan gaya penulisan synchronous, kira-kira kode program pesan kopi kita akan seperti berikut:
 */

// void main() {
//   print('Getting your order...');
//   var order = getOrder();
//   print('You order: $order');
//}

// Getting your order...
// You order: Instance of 'Future<String>'

/*
  Namun ketika kode di atas dijalankan hasilnya tidak akan sesuai yang kita harapkan karena
  fungsi getOrder() merupakan objek Future.

  Output ini disebabkan karena fungsi main() masih merupakan fungsi synchronous. Untuk mengubahnya
  menjadi fungsi asynchronous tambahkan keyword async sebelum function body.
 */

// void main() async {
//   print('Getting your order...');
//   var order = await getOrder();
//   print('You order: $order');
// }
/*
  Output :
  Getting your order...
  You order: Coffee Boba
*/

/*
  Lalu bagaimana menangani ketika terjadi eror? Caranya cukup sederhana yaitu dengan memanfaatkan try-catch:
 */

void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you');
  }
}