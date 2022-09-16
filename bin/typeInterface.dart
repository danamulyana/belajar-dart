// map dengan tipe yang eksplisit:
Map<String, dynamic> company = {'name': 'Dicoding', 'yearsFounded': 2015};

//Atau, Anda dapat menggunakan var dan Dart akan menentukan tipenya.
var company2 = {'name': 'Dicoding', 'yearsFounded': 2015}; // Map<String, Object>

//Fish fish = Fish();

/*
Fish fish adalah consumer dan Fish() adalah producer. Pada posisi consumer,
aman untuk mengganti consumer bertipe yang spesifik dengan tipe yang lebih umum.
Jadi, aman untuk mengganti Fish fish dengan Animal fish karena Animal adalah supertype dari Fish.
 */

//Animal fish = Fish();

/*
Namun mengganti Fish fish dengan Shark fish melanggar type safety karena bisa saja Fish memiliki
subtype lain dengan perilaku berbeda, misalnya FlyingFish.
 */

//Shark fish = Fish();  // Error

/*
Pada posisi producer, aman untuk mengganti tipe yang umum (supertype) dengan tipe yang lebih spesifik (subtype).
 */

//Fish fish = Shark();