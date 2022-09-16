class Animal{
  String name = '';
  int age = 0;
  double weight = 0;

  // Animal(this.name, this.age, this.weight);
}

var dicodingCat = Animal();
/*
Karena kita tidak memasukkan nilai ketika membuat objek,
maka nilai default dari properti atau variabel akan digunakan.
Anda perlu berhati-hati jika tidak memberikan nilai pada properti,
karena akan membuat properti bernilai null sehingga bisa menyebabkan eror.
 */
// dicodingCat.name = 'Gray';
// dicodingCat.age = 2;
// dicodingCat.weight = 4.2;

// Named Constructor
class Kendaraan{
  String plat = '';
  int jumlahBan = 0;
  String jenisKendaraan = '';

  Kendaraan.plat(this.plat);
  Kendaraan.jumlahBan(this.jumlahBan);
  Kendaraan.jenisKendaraan(this.jenisKendaraan);
}
