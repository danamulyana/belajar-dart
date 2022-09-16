/*
  Apa itu Future
Untuk melakukan pemrograman secara asynchronous dengan Dart, kita menggunakan Future.
Future adalah sebuah objek yang mewakili nilai potensial atau kesalahan yang akan tersedia
pada suatu waktu di masa mendatang. Anda dapat membayangkan future sebagai sebuah kotak paket.
Saat Anda menerima paket tersebut, akan ada tiga kondisi yang mungkin terjadi, antara lain paket
masih tertutup (uncompleted), paket dibuka lalu berisi barang sesuai pesanan (completed with data),
dan paket dibuka namun terjadi kesalahan atau tidak sesuai (completed with error). Penerima dari
future dapat menentukan callbacks yang akan menangani nilai atau kesalahan tersebut.
 */

// void main() {
//   print('Creating the future');
//   print('main() done');
// }

// void main() {
//   final myFuture = Future(() {
//     print('Creating the future');
//     return 12;
//   });
//   print('main() done');
//
//   // main() done
//   // Creating the future
// }

// Uncompleted
// Mari kita buat sebuah fungsi yang mengembalikan nilai Future.

// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {
//     return 'Coffee Boba';
//   });
// }

/*
  Pada Future kita bisa menambahkan method delayed untuk menunda eksekusi kode di dalam Future.
  Di mana parameter pertama berisi durasi penundaan dan parameter kedua adalah blok kode atau fungsi
  yang akan dijalankan. Pada kasus ini kita menggunakan delayed untuk menunda waktu eksekusi seolah kita
  sedang mengambil data dari internet. Karena nilai yang dikembalikan pada Future berupa String, kita bisa
  secara eksplisit menentukan tipe parameter generic Future<String>.
 */

//Completed with data
// void main() {
//   getOrder().then((value) {
//     print('Your ordered: $value');
//   });
//   print('Getting your order...');
// }

//Getting your order...
// You ordered: Coffee Boba  // Muncul setelah 3 detik

//Completed with error

/*
  Kita dapat menambahkan method .catchError() setelah then. Sehingga ketika terjadi eror atau
  exception di dalam Future, blok kode ini akan dijalankan. Mari kita ubah sedikit kode di atas
  untuk mendukung skenario completed with error.
 */

// void main() {
//   getOrder().then((value) {
//     print('You ordered: $value');
//   })
//       .catchError((error) {
//     print('Sorry. $error');
//   });
//   print('Getting your order...');
// }

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

/*
  Fungsi getOrder() yang berisi Future yang masih uncompleted.
  Method then() yang menangani kondisi completed with data.
  Method catchError() yang menangani kondisi completed with error.

  Ada satu method lagi yang bisa kita gunakan yaitu whenComplete(). Method ini akan dijalankan
  ketika suatu fungsi Future selesai dijalankan, tak peduli apakah menghasilkan nilai atau eror.
  Ini seperti blok finally pada try-catch-finally.
 */

void main() {
  getOrder().then((value) {
    print('You ordered: $value');
  })
      .catchError((error) {
    print('Sorry. $error');
  })
      .whenComplete(() {
    print('Thank you');
  });
  print('Getting your order...');
}